# v0.6.66 版本档案说明（基线版本）

- APK：`apk/mrfz_v0.6.66.apk`（837MB，打包时间 2019-03-28）
- Unity il2cpp，metadata v23；`libil2cpp.so`（armeabi-v7a / x86），`global-metadata.dat`
- 引擎：Unity + xLua + FullInspector + Newtonsoft.Json；渠道：U8SDK + Hypergryph 自有 HGSDK（阿里/微信支付）
- 反编译工具链：Il2CppDumper v6.7.46（x86 与 armeabi-v7a 双跑取并集）→ `dump.cs`（19.6MB）、`DummyDll/*.dll` → ilspycmd → `decompiled/Assembly-CSharp.decompiled.cs`（377k 行）
- 产物：
  - `dump.cs` — Il2CppDumper 原始转储（类型+RVA）
  - `schema_all.txt` — 全部类型字段清单（1929 类）
  - `reqresp.txt` — 263 个 Request/Response DTO 字段
  - `stringliteral.json` / `script.json` — 字符串字面量与方法地址映射（做运行时 hook/xref 用）

## 协议特征（相对公测版的差异点）

1. **无 sign 签名**：业务请求仅 `uid/secret/seqnum` 头 + JSON body；公测版的 `sign=MD5(...)` 尚未引入。
2. **`secret` 机制**：`/account/login` 下发 `secret`（公测版改为 token 化）。
3. **接口集是公测版的子集 + 独有接口**：如 `/charBuild/lockChar`、`/campaign/*`、`/user/receiveTeamCollectionReward`、`/user/authenticateUserIdentity`、`/admin/cheat`。
4. **部分 serviceCode 缺前导 `/`**：`charBuild/upgradeSkill`、`charBuild/upgradeSpecialization`、`charBuild/completeUpgradeSpecialization`、`charBuild/changeCharSkin`、`mail/receiveAllMail`、`mail/removeAllReceivedMail`、`mission/confirmMission`、`mission/confirmMissionGroup`、`user/changeResume`、全部 `shop/*`、`building/*` —— 疑似客户端 bug，服务端需兼容。
5. **PlayerDataDelta 双字段**：`modified` + `deleted`（JObject 深合并 + 删除路径），与公测版一致但模型字段大不同。
6. **PlayerDataModel 顶层**：`events, pushFlags, status, monthlySub, troop, dungeon, checkIn, openServer, activity, dexNav, skin, collectionReward, inventory, shop, recruit, gacha, social, mission, building`（无公测后期的 `rlv2/tower/crisis` 等）。
7. **服务器域名**：BUSINESS=`an-1-bus.hypergryph.com:{18080 gs,19000 sdk}`；DEV=`dev-gs.mpcjnet.com:{8080,9091,10011/hot-update}`；MOCK=`distr-srv.int.hypergryph.com:8090/mock`。
8. **热更**：`hot-update` 目录托管 AB；`assetsVersion` 由客户端上报，服务端可返回“无更新”跳过。
9. **syncStatus bitmask**：`1=UNREAD_MAILS, 2=FRIEND_REQ, 4=ANNOUNCE_VER, 8=REFRESH_USER_CARD`。
10. **gamedata**：`assets/AB/Android/gamedata/excel/*.ab`（AssetBundle 内嵌表，共 26 张：character_table, item_table, stage_table, gacha_table, building_data, mission_table, checkin_table, gamedata_const …），关卡表在 `gamedata/levels/3rdbeta/*.ab`，剧情 `gamedata/story/3rdbeta.ab`。

## 待办（逆向遗留）

- `FakeBattleData` / `battleData` 在 battleFinish 中的具体序列化格式（疑似 JSON 字符串内嵌，需在真机/模拟器抓一次包确认）。
- `_GenerateRequestHeader` 中除 uid/secret/seqnum 外还有一个可选字段（反汇编显示 4 个 Add 调用点，第 4 个疑似 `platform` 或调试标记）——建议在模拟器跑起来后用 mitmproxy 抓包验证。
- gamedata `.ab` 的解包脚本（UnityPy + AssetStudio 或自定义 AssetBundle reader）。
