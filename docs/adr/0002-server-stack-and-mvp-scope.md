# ADR-0002: 服务端技术栈与 MVP 范围

状态：proposed（2026-09-21）

## 决策

- **语言/框架**：Node.js + TypeScript + Fastify（或 NestJS）。理由：JSON-first 协议、DTO 与 C# 字段同名映射零成本、`JObject` 深合并实现 delta 容易写；团队若偏好 Python，可换 FastAPI + pydantic，协议层不受影响。
- **存储**：SQLite（better-sqlite3）起步，账号/会话/玩家存档单库；玩家存档存 **规范化领域模型 JSON**（非 `PlayerDataModel` 线性格式），响应时投影为该版 delta。
- **架构**：
  ```
  server/
    src/
      transport/     Fastify 插件：auth 头解析、MsgBundle、错误映射
      profiles/
        v0_6_66/     ServiceCode 路由表 + 该版 DTO zod/typebox schema + delta 投影
        index.ts     profile 注册表（clientVersion → profile）
      core/          account / player / quest / charBuild / gacha / shop / building / social / mail / mission / activity / pay(stub)
      data/          gamedata 表加载（按版本目录）
      tools/         dump.cs → schema diff 工具
  ```
- **MVP 接口**（让客户端登录进主界面 + 打一局 + 收邮件 + 单抽）：
  sdk: `/user/guestLogin`、`/user/login`、`/user/auth`、`/user/register`（可选）
  game: `/account/login`、`/account/syncData`、`/account/syncStatus`、`/quest/squadFormation`、`/quest/battleStart`、`/quest/battleFinish`、`/quest/getBattleReplay`、`/mail/listMailBox`、`/mail/receiveMail`、`/mail/getMetaInfoList`、`/gacha/normalGacha`、`/gacha/advancedGacha`、`/user/checkIn`、`/user/bindNickName`、全套 `shop/get*List`（只读）。
- **Stub 策略**：未实现接口返回 `{"data":{}}` + 空 `playerDataDelta`，而非 404，避免客户端弹错误框；按模块排期补齐。
- **Delta 实现**：先返回 `modified` 全量子树（等价 syncData 快照），后续再优化成真实增量。
- **公告/热更**：`announceUrl` 指到自建静态服，先返回固定 JSON；`hotUpdateUrl` 返回“无更新”清单，让客户端跳过热更直接进登录。

## 客户端接入

修改客户端 `NetworkOptions` 指向自建服有两条路：
1. **改 hosts/DNS**：把 `an-1-bus.hypergryph.com` 解析到私服 IP（需 root/模拟器 hosts）。
2. **patch APK**：smali/`NetworkOptions` ScriptableObject 默认值改地址，或 hook `get_networkConfig`。内测包无签名校验，重打包可行。

## 影响

- TypeScript 单仓即可；后续若换语言，protocol 文档与版本档案依然有效。
