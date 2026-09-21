# 自签证书生成（v0.6.66 验证用）

Android 要求 CA 证书与服务器证书分离，且 SAN 覆盖全部被劫持域名。

```bash
cd server/prototype/certs

# 1) CA
openssl req -x509 -newkey rsa:2048 -nodes -keyout ca.key -out ca.crt -days 3650 \
  -config ca.cnf -extensions v3_ca

# 2) 服务器 CSR + 签发
openssl req -newkey rsa:2048 -nodes -keyout srv.key -out srv.csr -config srv.cnf
openssl x509 -req -in srv.csr -CA ca.crt -CAkey ca.key -CAcreateserial \
  -out srv.crt -days 3650 -extfile srv.cnf -extensions v3_srv
openssl verify -CAfile ca.crt srv.crt

# 3) 装入模拟器系统信任区
H=$(openssl x509 -in ca.crt -noout -subject_hash_old)
adb root && adb remount
adb push ca.crt /sdcard/ca.crt
adb shell "cp /sdcard/ca.crt /system/etc/security/cacerts/${H}.0 && chmod 644 /system/etc/security/cacerts/${H}.0"
```

`ca.cnf` / `srv.cnf` 见同目录。SAN 列表必须包含：`ak-gs-3rd.hypergryph.com`、`ak-as-3rd.hypergryph.com`、`ak-fs-3rd.hypergryph.com`、`*.hypergryph.com`、`*.mpcjnet.com`、以及宿主 IP（如 `172.18.0.1`）。
