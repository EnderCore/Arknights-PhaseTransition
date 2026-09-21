# CONTEXT — 明日方舟内测服（相变临界）私服项目

## 项目目标

为已关服的明日方舟内测客户端（首发适配 `mrfz_v0.6.66.apk`，2019-03 三次内测 build）实现一套可自建的**游戏服务端 + 账号 SDK 服 + 资源/公告服**，并支持后续其他内测版本的协议适配。

## 术语表（Glossary）

| 术语 | 含义 |
|---|---|
| **ClientVersion** | APK 版本号（如 `0.6.66`），登录时随 `assetsVersion` 上报 |
| **serviceCode** | 接口路径字符串（如 `/account/login`），客户端 `ServiceCode` 常量表 |
| **MsgBundle** | 响应统一封装 `{ "data": T }` |
| **PlayerDataModel** | 玩家全量存档模型（troop/dungeon/building/… 19 个顶层字段）|
| **PlayerDataDelta** | 增量存档 `{modified, deleted}`，多数响应携带 `playerDataDelta` |
| **gameServerUrl** | 业务服 base URL（默认 `an-1-bus.hypergryph.com:18080`）|
| **sdkServerUrl** | 账号/支付 SDK 服 base URL（`:19000`）|
| **secret** | 登录下发的会话凭证，业务请求头 `uid+secret+seqnum` |
| **seqnum** | 客户端递增请求序号，重试复用 `latestSucceedSeqNum` |
| **gamedata / excel** | 客户端 AssetBundle 内的数值表（stage/character/item/…），服务端数值判定同源 |
| **PlayerSyncModule** | syncStatus 位掩码（1 邮件 2 好友申请 4 公告版本 8 名片刷新）|
| **热更（hot-update）** | `hotUpdateUrl` 托管的 AB 资源更新通道 |
| **版本档案（version profile）** | `docs/versions/v*/` 下一套该版本的逆向产物+接口差异 |

## 协议要点（详见 docs/api/protocol.md）

- HTTP POST `application/json`；请求=裸 DTO JSON；响应=`{data: T}`；错误=`{statusCode,error,message,code,level}`。
- 业务请求头：`uid / secret / seqnum`；body 不签名。
- 响应含 `playerDataDelta.modified/deleted` 做存档增量；服务端可返回全量子树。
- `syncData` 返回全量 `PlayerDataModel`；`syncStatus` 为 bitmask 心跳。

## 代码/产物布局

```
apk/                     原始 APK（不进 git）
work/                    逆向工作区（Il2CppDumper/dnlib 产物，可再生）
docs/api/protocol.md     协议文档（本版本）
docs/api/models.md       全部 DTO/Model 字段表（生成）
docs/versions/v0.6.66/   v0.6.66 逆向档案（dump.cs/schema_all/reqresp/stringliteral/script.json）
docs/adr/                架构决策记录
server/                  服务端实现（待建，建议独立语言栈）
AGENTS.md / docs/agents/ agent skills 配置（issue tracker=GitHub, 默认 triage 标签, 单 context）
```

## 版本管理策略（详见 docs/adr/0001-versioned-protocol-profiles.md）

- 每个客户端版本一套 `docs/versions/<v>/` 档案（dump.cs + serviceCode 表 + DTO schema + 差异说明）。
- 服务端按 `VersionProfile` 抽象分发：路由层按 serviceCode → handler；handler 按版本选择 DTO 序列化器与业务规则；同代码可挂多版本 profile。
- 新版本适配流程：Il2CppDumper → diff `ServiceCode`/`dump.cs` → 更新 profile → 标 `ready-for-agent` 票据实现差异接口。
