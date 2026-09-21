# v0.6.66 登录闭环验证报告（prototype 结论）

日期：2026-09-21
验证环境：夜神模拟器（Android 7.1.2, x86）+ 本机 Node 原型服
原始抓包：[`capture-login-success.log`](./capture-login-success.log)

## 结论：登录闭环已跑通 ✅

客户端完整走完「资源版本 → 公告 → SDK 登录 → U8 换 token → 游戏服登录 → 同步存档 → 支付查询」，并进入昵称设置页。**先前文档中"内测版无 sign 签名"的判断是错的**，已修正（见下）。

## 客户端真实启动链（实测）

```
1.  GET  https://ak-fs-3rd.hypergryph.com/assetbundle/official/Android/version?time=<epoch>
         → 返回 {resVersion, clientVersion, versionId, fullPack{name,hash,md5,totalSize}, abInfos[]}
2.  GET  https://ak-fs-3rd.hypergryph.com/assetbundle/official/Android/assets/<ver>/hot_update_list.json
         → {versionId, fullPack{...}, abInfos:[]}   （空列表 = 无需热更）
3.  GET  https://ak-fs-3rd.hypergryph.com/announce/hgAndroid/preannouncement.meta.json
         → {announceList:[], focusAnnounceId:""}
4.  POST https://ak-as-3rd.hypergryph.com:9000/user/guestLogin
         REQ  {"deviceId":"<md5>","sign":"<40hex>"}
5.  POST https://ak-as-3rd.hypergryph.com:9000/u8/user/getToken
         REQ  {"appId":"1","channelId":"1","extension":"{\"uid\":...,\"access_token\":...}","sign":"<40hex>"}
6.  POST https://ak-as-3rd.hypergryph.com:9000/u8/pay/getAllProductList
         REQ  {"appId":"1","channelId":"1","worldId":1}
7.  POST https://ak-gs-3rd.hypergryph.com:8080/account/login
         REQ  {"uid","token","assetsVersion":"0.6.66","clientVersion":"0.6.66","platform":1}
         HEAD uid=- seqnum=0
8.  POST .../account/syncData           REQ {}
9.  POST .../pay/confirmOrder           REQ {"all":1,"orderId":""}
10. POST .../user/bindNickName          REQ {"nickName":"111"}
11. POST .../account/syncStatus         REQ {"modules":223,"params":{"16":{"goodIdMap":{...}}}}
12. （重启后再次登录）
    POST :9000/user/auth                REQ {"token":"...","sign":"..."}
    → 再走 5/6/7/8/9
```

## 与既有文档的差异（必须修正）

| 项 | 文档原判断 | 实测结果 |
|---|---|---|
| 游戏服域名 | `an-1-bus.hypergryph.com:18080` | 实际用 **`ak-gs-3rd.hypergryph.com:8080`**（BUSINESS 环境），SDK 用 **`ak-as-3rd.hypergryph.com:9000`**，资源用 **`ak-fs-3rd.hypergryph.com:443`** |
| body 签名 | 无 | **有**。SDK/业务请求 body 带 40 位 hex `sign`（SHA1 系），游戏服 `/account/login` 无 sign |
| SDK 响应包装 | `{data:{...}}` | **扁平**，无 `data` 包装（`{result, uid, channelUid, token, isGuest, ...}`） |
| 请求头 | `uid/secret/seqnum` | 实测游戏服带 **`seqnum`**（从 0 开始递增），`uid`/`secret` 未在 header 出现（在 body 或后续请求） |
| 资源服 | `dev-gs.mpcjnet.com:10011/hot-update` | BUSINESS 包实际用 `ak-fs-3rd.hypergryph.com`，路径 `/assetbundle/official/Android/...` 与 `/announce/hgAndroid/...` |

### sign 算法（未完全逆向，但服务端可忽略）

- 长度 40 hex = SHA1。
- 调用点：`HGSDK.SDKRequestBundle<T>._SignRequest` → `U8.SDK.SDKExternalTools.PublicServiceSignKey`（appKey）+ `U8SDKInterface.GenU8Sign(IDictionary<string,string> signDict, string appKey)`。
- `GenU8Sign` 语义：字典按 key 排序 → 拼接 kv → 追加 appKey → SHA1 → hex。
- **重要**：服务端**无需校验 sign**（客户端发来即可，服务端不回签），因此自建服不必还原 appKey。若要做严格校验，需从 `PublicServiceSignKey` 的 GOT 槽读取真实密钥（APP 内常量），或用 `/u8` 侧离线字典反推。

### `/account/syncStatus` 真实请求（文档缺失）

```json
{"modules":223,"params":{"16":{"goodIdMap":{"LS":[],"HS":[],"ES":[],"CASH":[],"GP":["GP_Once_1"],"SOCIAL":[]}}}}
```

- `modules` 是位掩码（223），`params` 以**十进制字符串掩码**为 key（`"16"` = REFRESH_USER_CARD）。
- `goodIdMap` 的键是商店分类简称：`LS`=低阶凭证、`HS`=高阶、`ES`=额外、`CASH`=源石、`GP`=礼包、`SOCIAL`=信用。

## 服务端最小可用响应集

已验证只需这几条即可让客户端进到昵称页：

| 端点 | 响应要点 |
|---|---|
| `GET /assetbundle/official/Android/version` | `{resVersion, clientVersion, versionId, fullPack, abInfos:[]}` |
| `GET .../hot_update_list.json` | `{versionId, fullPack, abInfos:[]}` |
| `GET /announce/hgAndroid/preannouncement.meta.json` | `{announceList:[], focusAnnounceId:""}` |
| `POST /user/guestLogin` | `{result:0, uid, channelUid, token, isGuest:true, issueAt, expiresIn}`（**扁平**） |
| `POST /u8/user/getToken` | `{result:0, uid, channelUid, token, isGuest:false}`（**扁平**） |
| `POST /u8/pay/getAllProductList` | `{result:0}` 或空 |
| `POST /account/login` | `{data:{result:0, uid, secret, playerDataDelta:{modified:<全量PlayerDataModel>, deleted:{}}}}` |
| `POST /account/syncData` | `{data:{user:<全量PlayerDataModel>, ts}}` |
| `POST /pay/confirmOrder` | `{data:{...playerDataDelta 空}}` |
| `POST /account/syncStatus` | `{data:{announcementVersion, ts, result:{}, playerDataDelta:{modified:{},deleted:{}}}}` |
| 其余全部 | `{data:{playerDataDelta:{modified:{},deleted:{}}}}`（空 delta 不报错） |

## 环境搭建步骤（可复现）

1. **模拟器**：夜神 `nox_adb.exe connect 127.0.0.1:62030`，`adb root`，`mount -o remount,rw /system`。
2. **hosts 劫持**（`/system/etc/hosts`）：
   ```
   172.18.0.1 an-1-bus.hypergryph.com
   172.18.0.1 ak-gs-3rd.hypergryph.com
   172.18.0.1 ak-as-3rd.hypergryph.com
   172.18.0.1 ak-fs-3rd.hypergryph.com
   172.18.0.1 ak.hypergryph.com
   172.18.0.1 dev-gs.mpcjnet.com
   ```
   （`172.18.0.1` 是宿主在模拟器内的可达地址，用 `ping` 探测确认）
3. **证书**：必须是 **CA 证书 + 独立服务器证书** 的链（自签"既是CA又是leaf"会被 Android 拒绝）。CA 装入 `/system/etc/security/cacerts/<subject_hash_old>.0`（`chmod 644`）。
   - SAN 必须覆盖所有被劫持域名，含 `*.hypergryph.com`、`*.mpcjnet.com`。
4. **端口**：资源/SDK/游戏服全部 HTTPS（客户端强制 TLS，明文 HTTP 会 `SSLHandshakeException`）。端口 `443`(fs)、`9000`(sdk)、`8080`(gs)。
5. **权限**：首次启动需 `pm grant` 位置权限，否则卡在系统授权弹窗。
6. **输入**：登录页用 `adb shell input tap` 点击，输入用 `input text`；软键盘会遮挡按钮，提交前 `input keyevent 111`（ESC）收起。

## 未完成项

- 昵称输入：已成功一次（`bindNickName {"nickName":"111"}`），但 Unity IME 通道不稳定，`uiautomator` 看不到输入框（Unity 自绘）。后续可用 `TouchScreenKeyboard` hook 或直接跳过（服务端在 `syncData` 里预置 nickName 即可）。
- `battleFinish` 的 `battleData`/`stats` 嵌套格式仍未实测（需进到关卡）。
- `sign` 算法未完全还原（服务端可忽略，见上）。
