# 相变临界 · 明日方舟内测私服（server）

为内测版明日方舟客户端提供自建游戏服 + SDK 服 + 静态资源服。

## 状态

骨架阶段 —— 协议文档与版本档案已就绪（`docs/api/protocol.md`、`docs/versions/v0.6.66/`），代码实现待启动。

## 快速开始（建议）

```bash
cd server
npm init -y
npm i fastify @fastify/cors better-sqlite3 zod
npm i -D typescript tsx @types/node
npx tsc --init
```

入口规划：

- `src/index.ts` — 启动三个监听：`gameServerUrl`（默认 :18080）、`sdkServerUrl`（:19000）、静态服（:10011，公告/热更/用户协议）
- `src/profiles/v0_6_66/` — 本版本路由表 + DTO schema
- `src/core/` — 领域逻辑（账号→存档→各系统）

## 开发指引

1. 所有接口定义以 `docs/api/protocol.md` 第 4 节为准；字段以 `docs/versions/v0.6.66/schema_all.txt` / `reqresp.txt` 为准。
2. 响应统一封装 `{data: T}`；错误封装 `{statusCode,error,message,code,level}`；业务响应附 `playerDataDelta`。
3. 鉴权：`uid+secret` 头校验，`secret` 由 `/account/login` 签发（随机字符串，存 SQLite `session` 表）。
4. `seqnum` 只记录不强制。
5. 新增版本时：建 `src/profiles/<v>/` + `docs/versions/<v>/` 档案，注册进 `profiles/index.ts`（见 ADR-0001）。
6. 客户端接入：hosts 把 `an-1-bus.hypergryph.com` 指到本机，或 patch APK 的服务器地址（见 ADR-0002）。

## 参考实现

- Darknights-server（公测版，Node.js）：https://github.com/Darknights-dev/Darknights-server —— 可借目录结构与 gamedata 处理方式，**协议字段不可直接复用**（公测版差异大）。
