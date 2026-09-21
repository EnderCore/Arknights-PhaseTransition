# PROTOTYPE — v0.6.66 登录闭环验证（throwaway）

**结论：登录闭环已跑通。** 见 [`docs/versions/v0.6.66/login-verification.md`](../../docs/versions/v0.6.66/login-verification.md)。

本目录是**一次性验证代码**，不进入 main 的正式实现。保留原因：它是「协议理解正确」这一结论的 primary source。

## 文件

| 文件 | 作用 |
|---|---|
| `proto2.mjs` | 最终验证用服务端（资源服 443 + SDK 服 9000 + 游戏服 8080，全 HTTPS） |
| `probe.mjs` | 早期请求探测脚本（逐端口嗅探） |
| `login-proto.mjs` | 最初的纯 HTTP 版本（已被证明不可行：客户端强制 TLS） |
| `capture-login-success.log` | **成功跑通的完整抓包记录**（关键证据） |
| `certs/` | 自签 CA + 服务器证书生成脚本与产物 |
| `certgen.md` | 证书生成步骤 |

## 运行

```bash
cd server/prototype
node proto2.mjs      # 需先按 login-verification.md 配好模拟器 hosts + 证书
```

## 复现要点（踩过的坑）

1. **必须 HTTPS**。客户端全链路 TLS，明文 HTTP → `SSLHandshakeException`。
2. **证书必须是 CA + 服务器证书两段**。自签「CA 兼 leaf」会被 Android 拒绝（`SSLHandshakeException` / `SSL handshake timed out`）。
3. **CA 要装进系统信任区**：`/system/etc/security/cacerts/<subject_hash_old>.0`，`chmod 644`，需 `mount -o remount,rw /system`。
4. **SAN 必须覆盖所有劫持域名**，否则主机名校验失败。
5. **SDK 响应是扁平 JSON**，不能包 `{data:}`；游戏服响应才用 `{data:{...}}`。
6. **域名是三套**：`ak-fs-3rd`（资源）/ `ak-as-3rd`（SDK）/ `ak-gs-3rd`（游戏），不是我最初以为的 `an-1-bus`。
7. 软键盘会遮挡按钮，tap 前先 `input keyevent 111` 收起。

## 未走完的部分

昵称输入（Unity 自绘 IME）→ 关卡战斗。已在 `login-verification.md` 记录。
