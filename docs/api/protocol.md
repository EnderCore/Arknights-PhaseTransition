# 明日方舟 v0.6.66（三次内测 / 相变临界）通信协议文档

> 本文档通过对 `mrfz_v0.6.66.apk`（2019-03-28 打包，il2cpp metadata v23）逆向得到。
> 逆向产物：`work/Il2CppDumper/dump.cs`、`docs/versions/v0.6.66/`。

> **⚠️ 2026-09-21 更新（实测修正）**：本文档基于静态逆向；后续在模拟器上跑通登录闭环后，发现若干与实际不符之处。
> 请优先阅读 [`docs/versions/v0.6.66/login-verification.md`](../versions/v0.6.66/login-verification.md)：
> - 实际域名是 `ak-gs-3rd.hypergryph.com:8080` / `ak-as-3rd.hypergryph.com:9000` / `ak-fs-3rd.hypergryph.com:443`（非 `an-1-bus:18080`）
> - SDK 请求 **有** 40 位 hex `sign` 字段（SHA1 系）；SDK 响应是**扁平结构**，无 `{data:}` 包装
> - 资源更新走 `/assetbundle/official/Android/...`；公告走 `/announce/hgAndroid/...`
> - 登录用 HTTPS，明文 HTTP 会被拒绝


## 1. 服务器拓扑

客户端 `Networker.Configuration` 持有 10 个 URL 字段，按环境（`NetworkOptions.ServerType`）分组：

| 字段 | 用途 | 内测包中观察到的值 |
|---|---|---|
| `gameServerUrl` | 游戏业务服（绝大部分接口） | `http://an-1-bus.hypergryph.com:18080`（BUSINESS）|
| `sdkServerUrl` | 账号/支付 SDK 服 | `http://an-1-bus.hypergryph.com:19000` |
| `u8ServerUrl` | U8 聚合 SDK 服 | （同 sdkServerUrl 体系）|
| `hotUpdateUrl` | 热更新资源服 | `http://dev-gs.mpcjnet.com:10011/hot-update`（DEV）|
| `announceUrl` / `preAnnounceUrl` | 游戏内公告 | — |
| `serviceLicenseUrl` | 用户协议页 | — |
| `officialUrl` | 官网 | — |
| `packageDownloadUrlAndroid/IOS` | 整包下载 | — |

内嵌环境列表：`DEV / STAGING / BUSINESS / PRODUCTION / DEBUG1 / DEBUG2 / STORY_TEST / DATA_DESIGN / MOCK_SERVER`。DEV 环境写死 `https://dev-gs.mpcjnet.com:8080`（gs）、`:9091`（sdk）、`:10011/hot-update`；BUSINESS 环境写死 `an-1-bus.hypergryph.com`；MOCK 环境 `http://distr-srv.int.hypergryph.com:8090/mock`。

**自建服只需实现 `gameServerUrl` + `sdkServerUrl` 两套 HTTP 服务**（可同端口不同路由），另加一个静态文件服托管 hot-update / 公告即可让客户端完整跑通。

## 2. 传输协议

- **HTTP(S) POST**，`Content-Type: application/json`，UTF-8。
- 请求 URL = `gameServerUrl + serviceCode`（serviceCode 以 `/` 开头，见接口清单）。
  - 注意：客户端代码中 `charBuild/upgradeSkill`、`charBuild/upgradeSpecialization`、`charBuild/completeUpgradeSpecialization`、`charBuild/changeCharSkin`、`mail/receiveAllMail`、`mail/removeAllReceivedMail`、`mission/confirmMission`、`mission/confirmMissionGroup`、`user/changeResume`、全部 `shop/*`、全部 `building/*` 这些常量**没有前导 `/`**，服务端路由注册时应同时兼容 `/{path}` 与拼接形式（建议统一挂到 `{gameServerUrl}/{service}`）。
- **GET** 仅用于 `announceUrl`、`hotUpdateUrl` 及 `SendGet(url, param)`（`param` 为已序列化 query，`{0}?{1}` 拼接）。

### 2.1 请求头

`_GenerateRequestHeader` 产出（ARM 反汇编确认）：

```
Content-Type: application/json
uid: <当前登录 uid>        # 仅当 m_loginInfo 非空时附加
secret: <登录下发的 secret> # 同上
seqnum: <递增序号>          # 业务服请求附加
```

- `seqnum`：客户端维护 `m_seqNum`，每次请求 +1；`isRetry` 复用上次的 `m_latestSucceedSeqNum`。
- **签名**：该版本游戏服请求**没有对 body 做签名/加密**（SDK 侧 `U8SDKInterface._SignRequest` 只用于渠道支付参数，游戏服 body 为纯 JSON）。服务端可选择忽略校验或仅按 `uid+secret` 鉴权。

### 2.2 请求/响应封装

- **请求 body**：请求 DTO 直接 JSON 序列化（Newtonsoft.Json，字段即 C# public 字段名，无包装）。
- **响应 body**：`MsgBundle<T>` = `{ "data": <T> }`。响应里除 `data` 外还带有统一的错误通道，反序列化结构（`Response<T>` / `ResponseError`）表明服务端错误返回格式为：

```json
{ "statusCode": <int>, "error": "<str>", "message": "<str>", "code": <long>, "level": <int> }
```

正常响应 HTTP 200 + `{"data": {...}}` 即可。

- **`PlayerDeltaResponse`**：绝大多数业务响应继承它 → JSON 中多一个顶层字段 `playerDataDelta: { "modified": {...}, "deleted": {...} }`。客户端用 `prevPlayerData` + 该 delta 合成新的 `PlayerDataModel`。`modified`/`deleted` 是 Newtonsoft `JObject`，按 `PlayerDataModel` 的字段路径做**部分更新**（modified 深合并、deleted 按路径删除）。若不想实现增量，可每次在 `modified` 里返回全量 `PlayerDataModel` 子树。

## 3. 鉴权与会话

1. `POST {sdkServerUrl}/user/login`（或 `/user/guestLogin`、`/user/loginBySmsCode`）→ 返回 `{result, uid, role, token, isAuthenticate, issuedAt, expiresIn}`。
2. `POST {sdkServerUrl}/user/auth` `{token}` → `{uid}`，换取正式会话（部分流程会跳过）。
3. `POST {gameServerUrl}/account/login` `{uid, token, assetsVersion, clientVersion, platform}` → 返回 `{result, uid, secret, playerDataDelta}`。**`secret` 就是之后所有业务请求的 `secret` 头**；`playerDataDelta.modified` 需含全量 `PlayerDataModel`。
4. 之后请求头带 `uid/secret/seqnum`。
5. `POST {gameServerUrl}/account/syncData` `{}` → `{user: <全量 PlayerDataModel>, ts}`，断线重连/重新同步用。
6. `POST {gameServerUrl}/account/syncStatus` `{modules: bitmask, paramDict}` → `{announcementVersion, ts, result: {mask: {...}}}`，轻量心跳；`modules` 位：`1=UNREAD_MAILS, 2=FRIEND_REQ, 4=ANNOUNCE_VER, 8=REFRESH_USER_CARD`。

## 4. 接口总表（serviceCode → 请求/响应 DTO）

字段类型标注为 C# 原类型；`[T]` 表数组；`{k:v}` 表 Dictionary。`Δ` 表示响应继承 `PlayerDeltaResponse`（需带 `playerDataDelta`）。`∅` 表示空类（`{}`）。

### 账号 / SDK 服（sdkServerUrl）
| Path | Request | Response |
|---|---|---|
| /user/login | account, password, deviceId, platform | result, uid, role, token, isAuthenticate, issuedAt, expiresIn |
| /user/register | account, password, smsCode, platform, deviceId | result, uid, role, token, issuedAt, expiresIn |
| /user/guestLogin | deviceId | result, uid, role, token, issueAt, expiresIn |
| /user/loginBySmsCode | account, smsCode, deviceId, platform | result, uid, role, token, isAuthenticate, issuedAt, expiresIn |
| /user/sendSmsCode | account, type | result, code |
| /user/auth | token | uid |
| /user/authenticateUserIdentity | token, name, idCardNum | result |
| /user/upgradeGuestUser, /user/getToken, /user/verifyAccount, /user/changeResume | （存在路由，字段见 schema_all.txt）| |
| /pay/createOrder | storeId, goodId | result, orderId, extension |
| /pay/confirmOrder | all, orderId | Δ items, result, goodId, receiveItems |
| /pay/createOrderAppstore | token, version, orderId, time | err, orderId |
| /pay/confirmOrderAppstore | token, version, outTradeNo, receiptData | status |
| /pay/confirmOrderState, /pay/getAllProductList, /pay/getOrderID | （渠道相关，字段见 schema）| |

### 游戏服（gameServerUrl）
| Path | Request | Response |
|---|---|---|
| /account/login | uid, token, assetsVersion, clientVersion, platform | result, uid, secret, Δ |
| /account/syncData | ∅ | user: PlayerDataModel, ts |
| /account/syncStatus | modules, paramDict{mask→PlayerSyncParam} | Δ announcementVersion, ts, result |
| /admin/cheat | cmd | Δ |
| /user/bindNickName | nickName | Δ result |
| /user/checkIn | ∅ | Δ signInRewards[], subscriptionRewards[] |
| /user/buyAp | ∅ | Δ result |
| /user/exchangeDiamondShard | count | Δ |
| /user/changeSecretary | charInstId, skinId | Δ |
| /user/changeResume | resume | Δ result |
| /user/receiveTeamCollectionReward | rewardId | Δ items[] |
| /quest/squadFormation | charInstId, skillIndex, squadId, slots[], changeSkill | Δ |
| /quest/changeSquadName | squadId, name | Δ result |
| /quest/getFriendAssistCharList | refresh | assistFriendCharList[], friendAliasList[], assistNotFriendCharList[], refreshTimes |
| /quest/battleStart | CommonStartBattleRequest（见 4.1）| Δ isApProtect, apFailReturn, notifyPowerScoreNotEnoughIfFailed |
| /quest/battleFinish | CommonFinishBattleRequest（见 4.1）| Δ result, apFailReturn, rewards[], unusualRewards[], additionalRewards[], diamondMaterialRewards[] |
| /quest/saveBattleReplay | battleId, battleReplay | Δ result |
| /quest/getBattleReplay | stageId | Δ battleReplay |
| /campaign/battleStart | ∅ | Δ |
| /campaign/battleFinish | ∅ | Δ currentFeeBefore, currentFeeAfter |
| /campaign/confirmBreakReward | stageId, index | Δ |
| /charBuild/upgradeChar | id, charInstId, expMats[] | Δ |
| /charBuild/evolveChar | charInstId, destEvolvePhase | Δ |
| /charBuild/boostPotential | charInstId, itemId, targetRank | Δ resultOneSuc |
| /charBuild/setDefaultSkill | charInstId, defaultSkillIndex | Δ |
| /charBuild/upgradeSkill | charInstId, targetLevel | Δ |
| /charBuild/upgradeSpecialization | charInstId, skillIndex, targetLevel | Δ |
| /charBuild/completeUpgradeSpecialization | ∅（走 skillIndex?见 BuildingAssignChar 同名接口区分）| Δ |
| /charBuild/changeCharSkin | charInstId, skinId | Δ |
| /charBuild/lockChar, /charBuild/sellChar | charInstIdList[] | Δ |
| /story/finishStory | storyId | Δ |
| /gacha/normalGacha | slotId, tagList[], specialTagId, duration | Δ |
| /gacha/finishNormalGacha | slotId | Δ result, charGet |
| /gacha/cancelNormalGacha | slotId | Δ result |
| /gacha/boostNormalGacha | slotId, buy | Δ result |
| /gacha/refreshTags | slotId | Δ |
| /gacha/syncNormalGacha | ∅ | Δ |
| /gacha/buyRecruitSlot | slotId | Δ |
| /gacha/advancedGacha | poolId, useTkt | Δ charGet |
| /gacha/tenAdvancedGacha | poolId, useTkt | Δ gachaResultList[] |
| /mail/listMailBox | mailIdList[] | Δ mailList[]（含 MailItem 全字段）|
| /mail/receiveMail | mailId | Δ result, items[] |
| /mail/receiveAllMail | mailIdList[] | Δ items[] |
| /mail/removeAllReceivedMail | mailIdList[] | Δ |
| /mail/getMetaInfoList | from | result: MailMetaInfo[] |
| /mission/confirmMission | missionId | Δ |
| /mission/confirmMissionGroup | missionGroupId | Δ |
| /mission/exchangeMissionRewards | targetRewardsId | Δ |
| /activity/getChainLogInReward | index | Δ reward |
| /activity/getChainLogInFinalRewards | ∅ | Δ rewards[] |
| /activity/getOpenServerCheckInReward | index | Δ reward |
| /activity/confirmActivityMission | missionId, activityId | Δ items[] |
| /activity/confirmActivityMissionGroup | groupId, activityId | Δ items[] |
| /activity/exchangeActivityShopItem | activityId, goodId, count | Δ item |
| /social/getSortListInfo | type, sortKeyList[], param{} | result: FriendSortViewModel[] |
| /social/searchPlayer | idList[] | players[], friendStatusList[], resultIdList[] |
| /social/getFriendList | idList[] | friends[], friendAlias[], resultIdList[] |
| /social/getFriendRequestList | idList[] | requestList[], resultIdList[] |
| /social/sendFriendRequest | friendId, afterBattle | Δ result |
| /social/processFriendRequest | friendId, action | Δ result |
| /social/deleteFriend | friendId | Δ |
| /social/setAssistCharList | assistCharList[] | Δ |
| /social/setFriendAlias | friendId, alias | Δ result |
| /social/receiveSocialPoint | ∅ | Δ reward[] |
| /shop/getLowGoodList | ∅ | goodList[], groups[], shopEndTime |
| /shop/getHighGoodList | ∅ | goodList[], progressGoodList{} |
| /shop/getExtraGoodList | ∅ | goodList[], shopEndTime |
| /shop/getGPGoodList | ∅ | weeklyGroup, monthlyGroup, monthlySub[], levelGP[], oneTimeGP[] |
| /shop/getCashGoodList | ∅ | goodList[] |
| /shop/getSkinGoodList | charIdList[] | goodList[] |
| /shop/getSocialGoodList | ∅ | goodList[], charPurchase{}, costSocialPoint, creditGroup |
| /shop/getFurniGoodList | ∅ | Good[]（见 schema）|
| /shop/getGoodPurchaseState | goodIdMap | result{} |
| /shop/getCashGoodPurchaseResult | ∅ | （result）|
| /shop/buyLowGood /buyHighGood /buyExtraGood /buySocialGood | goodId, count | Δ items[] |
| /shop/buyGPGood /buySkinGood /buyCashGood | goodId | Δ items[] |
| /shop/buyFurniGood | goodId, buyCount, costType | Δ |
| /shop/decomposePotentialItem | charInstIdList[] | Δ items[] |
| /building/sync | ∅ | Δ（返回全量 building 子树）|
| /building/visitBuilding | friendId | Δ + 拜访者快照（见 schema `VisitBuildingResponse`）|
| /building/buildRoom | roomSlotId, roomId | Δ result, alert[] |
| /building/upgradeRoom | roomSlotId, targetLevel | Δ result |
| /building/completeUpgradeRoom | roomSlotId, targetLevel | Δ result, alert[] |
| /building/degradeRoom | roomSlotId, targetLevel | Δ |
| /building/cleanRoomSlot | roomSlotId | Δ result |
| /building/assignChar | roomSlotId, charInstIdList[] | Δ |
| /building/changeManufactureSolution | roomSlotId, targetFormulaId, solutionCount | Δ change |
| /building/changeSaleSolution | roomSlotId, stockIndex, targetFormulaId, solutionCount | Δ change |
| /building/changeDiySolution | roomSlotId, solution | Δ |
| /building/saveDiyPresetSolution | solutionId, name, solution, thumbnail | Δ result |
| /building/changePresetName | solutionId, name | Δ result |
| /building/getThumbnailUrl | solutionId[] | url[] |
| /building/upgradeSpecialization | skillIndex | Δ |
| /building/completeUpgradeSpecialization | ∅ | Δ |
| /building/workshopSynthesis | formulaId, times | Δ results, additional[] |
| /building/workshopDecomposition | furniId, times | Δ results |
| /building/deliveryOrder | slotId, orderId | Δ |
| /building/changeStrategy | slotId, strategy | Δ |
| /building/deleteOrder | slotId, orderId | Δ |
| /building/accelerateOrder | slotId, orderId, cost | Δ result |
| /building/accelerateSolution | slotId, cost | Δ |
| /building/buyLabor | count, ts | Δ |
| /building/settleManufacture | roomSlotIdList[] | Δ |
| /building/settleSale | roomSlotIdList[] | Δ |
| /building/getAssistReport | ∅ | reports[] |
| /building/setBuildingAssist | type, charInstId | Δ |
| /building/gainIntimacy | charInstId | Δ |
| /building/gainAssistIntimacy | charInstId | Δ |
| /building/deleteOwnClue | clueId | Δ |
| /building/deleteReceiveClue | clueId | Δ |
| /building/putClueToTheBoard | clueId | Δ |
| /building/sendClue | friendId, clueId | Δ |
| /building/getMeetingroomReward | type[] | Δ rewards[] |
| /building/getClueBox | ∅ | Δ box[]（Clue 结构）|
| /building/receiveClueToStock | clues[] | Δ |
| /building/startInfoShare | ∅ | Δ |
| /building/takeClueFromBoard | type | Δ |
| /building/getInfoShareVisitorsNum | ∅ | num |
| /building/getInfoShareReward | ∅ | Δ |
| /building/getRecentVisitors | ∅ | uid,nickName,nickNumber,secretary,secretarySkinId,level,ts,visitors[] |
| /building/getDailyClue | ∅ | Δ |
| /building/upgradeDiyLevel | （DIY 升级）| Δ |

### 4.1 战斗请求结构（重要）

```jsonc
// CommonStartBattleRequest (quest/battleStart)
{ "squadId": "...", "name": "...", "slots": [{"charInstId":1,"skillIndex":0}],
  "squad": {...SquadModel}, "assistFriend": {...SquadFriendData},
  "usePracticeTicket": false, "stageId": "main_01-01", "isReplay": false,
  "charInstId": 0, "skillIndex": 0 }

// CommonFinishBattleRequest (quest/battleFinish)
{ "isCheat": "", "completeTime": 1554, "stats": {BattleLogger.BattleStats},
  "data": "<战斗日志序列化字符串>", "battleData": {FakeBattleData} }
```

服务端只需校验 `stageId`/`stats` 基本合法性并按 `stage_table`/`gamedata_const` 计算掉落；战斗过程完全在客户端。

## 5. 核心数据模型（响应中 PlayerDataModel 骨架）

`PlayerDataModel` 顶层字段（JSON 键同名）：`events, pushFlags, status, monthlySub, troop, dungeon, checkIn, openServer, activity, dexNav, skin, collectionReward, inventory, shop, recruit, gacha, social, mission, building`。
各子模型字段完整清单见 `docs/versions/v0.6.66/schema_all.txt`（自动生成）与 `docs/api/models.md`。

## 6. 已知坑

- `charBuild/upgradeSkill` 等 serviceCode 缺前导 `/` —— 路由要兼容。
- `checkIn`/`openServer` 的时间字段是 `DateTime`（序列化为 ISO）而其他地方用 epoch long，注意 Newtonsoft 的 `DateTime` 默认格式。
- `gamedata`（角色/关卡/物品表）在 APK `assets/AB/Android/gamedata/excel/*.ab`（Unity AssetBundle，内含 FlatBuffers 风格的二进制表），服务端掉落/数值需要用同一套表；提取工具见 `docs/versions/v0.6.66/` 说明。
- 登录响应 `LoginResponse.result` 非 0 时客户端按错误处理；`secret` 建议随机 token，服务端存 `uid→secret`。
- `seqnum` 服务端可只记录不强制校验（内测客户端不重放）。
