// PROTOTYPE — 启动链追踪：应答 version 后继续观察下一步请求
import http from 'node:http';
import https from 'node:https';
import fs from 'node:fs';

const key = fs.readFileSync('certs/srv.key');
const cert = fs.readFileSync('certs/srv.crt');

const CLIENT_VERSION = '0.6.66';
const RES_VERSION = '0.6.66';

function handler(tag) {
  return (req, res) => {
    let body = '';
    req.on('data', c => body += c);
    req.on('end', () => {
      const h = req.headers;
      const url = req.url;
      console.log(`\n[${tag}] ${req.method} ${url} host=${h.host} uid=${h.uid || '-'} seqnum=${h.seqnum || '-'}`);
      if (body) console.log(`  REQ  ${body.slice(0, 1500)}`);
      res.setHeader('Content-Type', 'application/json');

      // 资源版本端点：返回版本信息，让客户端认为资源是最新的
      if (/\/assetbundle\/official\/Android\/version/.test(url)) {
        const payload = {
          resVersion: RES_VERSION,
          clientVersion: CLIENT_VERSION,
          versionId: RES_VERSION,
          fullPack: { name: '', hash: '', md5: '', totalSize: 0 },
          abInfos: [],
          assetsVersion: RES_VERSION
        };
        console.log('  RESP ' + JSON.stringify(payload));
        return res.end(JSON.stringify(payload));
      }

      // 热更列表
      if (/hot_update_list\.json/.test(url)) {
        const payload = { versionId: RES_VERSION, fullPack: { name: '', hash: '', md5: '', totalSize: 0 }, abInfos: [] };
        return res.end(JSON.stringify(payload));
      }
      if (/persistent_res_list\.json/.test(url)) {
        return res.end(JSON.stringify({ abInfos: [] }));
      }

      // 公告：preannouncement / announcement
      if (/preannouncement\.meta\.json|announcement\.meta\.json/.test(url)) {
        const payload = {
          announceList: [],
          focusAnnounceId: '',
          title: '', content: '', isWebUrl: false, webUrl: '',
          group: 'DEFAULT', day: 0, month: 0, announceId: ''
        };
        console.log('  RESP announce-empty');
        return res.end(JSON.stringify(payload));
      }

      // 用户协议 / 官网跳转类静态页
      if (/\.html?$/.test(url) || /protocol/.test(url)) {
        res.setHeader('Content-Type', 'text/html; charset=utf-8');
        return res.end('<html><body>ok</body></html>');
      }

      console.log('  RESP {"data":{}}  <-- unhandled');
      res.end(JSON.stringify({ data: {} }));
    });
  };
}

for (const p of [18080, 18081, 19000, 19001, 10011, 10012]) {
  const s = http.createServer(handler('H' + p));
  s.on('error', e => console.log(`:${p} ERR ${e.code}`));
  s.listen(p, '0.0.0.0', () => console.log(`:${p} HTTP`));
}
for (const p of [443, 8080, 9000, 9091]) {
  const s = https.createServer({ key, cert }, handler('S' + p));
  s.on('error', e => console.log(`:${p} ERR ${e.code}`));
  s.on('tlsClientError', e => console.log(`:${p} TLS-ERR ${e.message}`));
  s.listen(p, '0.0.0.0', () => console.log(`:${p} HTTPS`));
}
