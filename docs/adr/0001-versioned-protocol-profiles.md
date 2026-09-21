# ADR-0001: 版本化协议档案（Versioned Protocol Profiles）

状态：accepted（2026-09-21）

## 背景

目标客户端不止 v0.6.66，后续还会接入其他内测 build。每个版本的差异点：

1. `ServiceCode` 常量表可能增删/改名（已知 v0.6.66 就有 `/charBuild/lockChar` 等公测版不存在的接口，且部分常量缺前导 `/`）。
2. 请求/响应 DTO 字段差异。
3. `PlayerDataModel` 结构差异（公测版已大改）。
4. 服务器地址/端口、热更清单格式差异。
5. 加密/签名差异（本版无 body 签名，不等于其他版没有）。

## 决策

- **一版一档**：`docs/versions/<clientVersion>/` 存放该版逆向产物（`dump.cs`、`schema_all.txt`、`reqresp.txt`、`stringliteral.json`、`script.json`、`diff-notes.md`）。档案即唯一事实源（source of truth）。
- **服务端三层解耦**：
  - `transport` 层：HTTP 入口、header(uid/secret/seqnum) 解析、MsgBundle 封装、错误码。与版本无关。
  - `profile` 层：每个版本一个 `VersionProfile`，声明 serviceCode→handler 映射、该版 DTO 类型/序列化器、特殊行为（如前导斜杠兼容）。
  - `game-logic` 层：通用业务（账号、存档、商店、基建……），操作统一领域模型；版本差异尽量在 profile 序列化边界抹平。
- **版本识别**：登录请求 `clientVersion`/`assetsVersion` 字段 + 可选 URL 前缀（如 `/v0666/account/login`）。默认按 clientVersion 路由到对应 profile。
- **新版本接入 SOP**：APK → Il2CppDumper（x86/armeabi-v7a 双跑）→ 提取 `ServiceCode` 与 Request/Response schema → 与最近 profile diff → 写 `diff-notes.md` → 仅实现差异 handler。
- **gamedata 分离**：数值表按版本归档（`docs/versions/<v>/gamedata/`），服务启动时按 profile 加载。

## 备选方案

- 单代码路径内联 `if version == ...`：被否，版本一多会腐烂。
- 每版本独立 server 仓库：被否，复用度低、维护成本高。

## 影响

- 协议 diff 工具需要常驻 `tools/`（输入两个 `dump.cs` 或 schema，输出 serviceCode/DTO 差异）。
- profile 数量随版本线性增长；共享逻辑集中一处，改动需回归所有 profile。
