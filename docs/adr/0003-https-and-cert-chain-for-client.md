# ADR-0003: 客户端接入必须用 HTTPS + 两段式证书链

状态：accepted（2026-09-21，由 prototype 验证得出）

## 背景

在模拟器上实跑 v0.6.66 客户端时发现：把域名劫持到本地明文 HTTP 服务会得到
`javax.net.ssl.SSLHandshakeException: Handshake failed`，启动流程完全卡死。
客户端（Unity `UnityWebRequest` + Android 网络安全配置）对三个域名全部强制 TLS。

进一步尝试「自签一张既是 CA 又是服务器证书的证书」仍失败（`SSL handshake timed out`），
因为 Android 的 TrustManager 要求服务器证书由 **非 leaf 的 CA** 签发。

## 决策

自建服接入客户端时：

1. **全链路 HTTPS**，无明文回退。端口：`443`（资源 fs）、`9000`（SDK as）、`8080`（游戏 gs）。
2. **两段式证书**：单独生成 CA（`basicConstraints=CA:TRUE`）签发服务器证书（`CA:FALSE`, `extendedKeyUsage=serverAuth`）。
3. **CA 装入系统信任区**：`/system/etc/security/cacerts/<subject_hash_old>.0`（需 `adb root` + `remount rw` + `chmod 644`）。装用户信任区（`/data/misc/user/0/cacerts-added`）对 targetSdk 28 的 app 无效。
4. **SAN 覆盖所有劫持域名**，含通配 `*.hypergryph.com`、`*.mpcjnet.com`，以及宿主在模拟器内的 IP。
5. 域名劫持三套：`ak-fs-3rd`（资源）、`ak-as-3rd`（SDK）、`ak-gs-3rd`（游戏）。

## 备选方案

- 明文 HTTP + `network_security_config` 放行：被否，该配置是 APK 内编译常量，且 `cleartextTrafficPermitted` 对已硬编码的 https URL 无效。
- 仅 patch APK 改地址不换协议：被否，服务端仍需证书，除非同时改协议（改动面更大）。

## 影响

- 服务端本地开发需要证书引导流程（见 `prototype/certgen.md`，正式实现应内置自签脚本）。
- 每个新客户端版本的证书 SAN 列表需按该版 `NetworkOptions` 的域名重新确认（版本档案 SOP 的一部分）。
