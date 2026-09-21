// PROTOTYPE — v0.6.66 登录闭环验证服务
// 用法: node proto2.mjs
// 监听: SDK 服 (443/9000) + 游戏服 (8080/18080) + 资源服(443, 路径分流)
//
// 已通过抓包确认的真实请求（2026-09-21）：
//   GET  ak-fs-3rd.hypergryph.com/assetbundle/official/Android/version?time=
//   GET  ak-fs-3rd.hypergryph.com/assetbundle/official/Android/assets/<ver>/hot_update_list.json
//   GET  ak-fs-3rd.hypergryph.com/announce/hgAndroid/{pre,}announcement.meta.json
//   POST ak-as-3rd.hypergryph.com:9000/user/login   {account,password,deviceId,platform,sign}
//   POST ak-as-3rd.hypergryph.com:9000/u8/user/getToken {appId,channelId,extension,sign}
import http from 'node:http';
import https from 'node:https';
import fs from 'node:fs';
import crypto from 'node:crypto';

const key = fs.readFileSync('certs/srv.key');
const cert = fs.readFileSync('certs/srv.crt');

const CLIENT_VERSION = '0.6.66';
const RES_VERSION = '0.6.66';
const UID = '1000001';
const TOKEN = 'proto-token-0001';
const SECRET = 'proto-secret-0001';

// ---- 玩家全量存档 ----
function playerData() {
  const now = new Date().toISOString();
  return {
    events: { building: now },
    pushFlags: { hasGifts: false, hasFriendRequest: false, hasClues: false, hasFreeLevelGP: false },
    status: {
      nickName: '博士', nickNumber: '0001', serverName: '泰拉',
      ap: 120, lastApAddTime: now, lastRefreshTs: now,
      level: 1, exp: 0, maxAp: 120, practiceTicket: 0,
      gold: 10000, crystal: 0, diamondShard: 600, recruitLicense: 0,
      gachaTicket: 10, tenGachaTicket: 0, instantFinishTicket: 0,
      hggShard: 0, lggShard: 0, socialPoint: 0, buyApRemainTimes: 10,
      apLimitUpFlag: false, registerTs: Date.now(),
      secretary: 'char_002_amiya', secretarySkinId: '', resume: '',
      monthlySubscriptionEndTime: now, monthlySubscriptionStartTime: now,
      progress: 0, mainStageProgress: 'main_01-01', flags: {}, friendAssist: []
    },
    monthlySub: {},
    troop: { troopCapacity: 0, curSquadCount: 0, curCharInstCount: 0, squads: {}, chars: {} },
    dungeon: {
      stages: {}, zones: { kvs: {} },
      campaigns: { maxKills: 0, rewardStatus: [], campaignCurrentFee: 0, campaignTotalFee: 0, activeGroupId: '', instances: { kvs: {} } }
    },
    checkIn: { canCheckIn: true, checkInGroupId: '', checkInRewardIndex: 0, checkInHistory: [] },
    openServer: {
      chainLogin: { isAvailable: false, nowIndex: 0, history: [], finalReward: -1 },
      checkIn: { isAvailable: false, history: [] }
    },
    activity: { coin: 0, shop: {}, defaultActivityList: { kvs: {} }, missionOnlyActivityList: { kvs: {} } },
    dexNav: { enemy: { enemies: {} }, formula: { manufacture: {}, workshop: {} } },
    skin: { characterSkins: { kvs: {} } },
    collectionReward: { team: {} },
    inventory: {},
    shop: {
      lowQCShop: { curShopId: '', curGroupId: '', info: [] },
      highQCShop: { info: [], progressInfo: {} },
      extraQCShop: { curShopId: '', info: [] },
      cashShop: { info: [] },
      giftShop: { oneTime: { info: [] }, level: { info: [] }, weekly: { info: [] }, monthly: { info: [] } },
      socialShop: { info: [] },
      furnitureShop: { info: [] }
    },
    recruit: {
      tagId: 0, pick: false, state: 0, canBuy: false, tags: [], selectTags: [],
      startTs: now, maxFinishTs: now, realFinishTs: now, durationInSec: 0, slots: { kvs: {} },
      normal: { tagId: 0, pick: false, state: 0, canBuy: false, tags: [], selectTags: [], startTs: now, maxFinishTs: now, realFinishTs: now, durationInSec: 0, slots: { kvs: {} } }
    },
    gacha: { start: 0, end: 0, openFlag: false, cnt: 0, newbee: { start: 0, end: 0, openFlag: false, cnt: 0 } },
    social: {},
    mission: { missions: {}, missionRewards: { dailyPoint: 0, weeklyPoint: 0 }, missionGroups: {} },
    building: {
      status: { labor: { buffSpeed: 1, value: 240, maxValue: 240, lastUpdateTime: now, processPoint: 0 } },
      chars: {}, assist: [], roomSlots: {}, rooms: {}, furniture: {}, diyPresetSolutions: {}
    }
  };
}

const log = (tag, url, headers, body) => {
  const h = headers || {};
  console.log(`\n[${tag}] ${url} host=${h.host} uid=${h.uid || '-'} seqnum=${h.seqnum || '-'}`);
  if (body) console.log(`  REQ  ${body.slice(0, 1500)}`);
};

function route(tag, req, res, body) {
  const p = req.url.split('?')[0];
  log(tag, req.url, req.headers, body);
  const J = o => { res.setHeader('Content-Type', 'application/json'); res.end(JSON.stringify(o)); };
  const delta = (extra = {}) => ({ data: { ...extra, playerDataDelta: { modified: playerData(), deleted: {} } } });

  // ---------- 资源服 ----------
  if (/\/assetbundle\/official\/Android\/version/.test(p)) {
    return J({
      resVersion: RES_VERSION, clientVersion: CLIENT_VERSION, versionId: RES_VERSION,
      fullPack: { name: '', hash: '', md5: '', totalSize: 0 }, abInfos: []
    });
  }
  if (/hot_update_list\.json/.test(p)) return J({ versionId: RES_VERSION, fullPack: { name: '', hash: '', md5: '', totalSize: 0 }, abInfos: [] });
  if (/persistent_res_list\.json/.test(p)) return J({ abInfos: [] });
  if (/preannouncement\.meta\.json|announcement\.meta\.json/.test(p)) {
    return J({ announceList: [], focusAnnounceId: '' });
  }

  // ---------- SDK 服（扁平响应，无 data 包装）----------
  const now = Math.floor(Date.now() / 1000);
  if (p === '/user/login' || p === '/user/register' || p === '/user/loginBySmsCode') {
    return J({ result: 0, uid: UID, channelUid: UID, token: TOKEN, isGuest: false,
               isAuthenticate: true, issuedAt: now, expiresIn: now + 86400 * 30, extension: '{}' });
  }
  if (p === '/user/guestLogin') {
    return J({ result: 0, uid: UID, channelUid: UID, token: TOKEN, isGuest: true,
               issueAt: now, expiresIn: now + 86400 * 30, extension: '{}' });
  }
  if (p === '/user/auth') return J({ result: 0, uid: UID, token: TOKEN });
  if (p === '/user/sendSmsCode') return J({ result: 0, code: '123456' });
  if (p === '/user/authenticateUserIdentity') return J({ result: 0 });
  // U8 渠道层：登录结果同样是扁平结构
  if (/\/u8\/user\/getToken/.test(p)) {
    return J({ result: 0, uid: UID, channelUid: UID, token: TOKEN, isGuest: false, extension: '{}' });
  }
  if (/\/u8\//.test(p)) {
    return J({ result: 0, uid: UID, channelUid: UID, token: TOKEN, isGuest: false, status: 0, extension: '{}' });
  }

  // ---------- 游戏服 ----------
  if (p === '/account/login') {
    return J({ data: { result: 0, uid: UID, secret: SECRET, playerDataDelta: { modified: playerData(), deleted: {} } } });
  }
  if (p === '/account/syncData') {
    return J({data:{ user: playerData(), ts: Math.floor(Date.now() / 1000) }});
  }
  if (p === '/account/syncStatus') {
    return J({ data: { announcementVersion: '1', ts: Math.floor(Date.now() / 1000), result: {}, playerDataDelta: { modified: {}, deleted: {} } } });
  }
  if (p === '/user/checkIn') {
    return delta({ signInRewards: [], subscriptionRewards: [] });
  }
  // 其他所有游戏服请求：空 delta，避免客户端报错中断
  return J(delta());
}

function makeHandler(tag) {
  return (req, res) => {
    let body = '';
    req.on('data', c => body += c);
    req.on('end', () => route(tag, req, res, body));
  };
}

// 资源服/SDK 服/游戏服都用 https（客户端全程 HTTPS）
const servers = [
  [443, 'FS'],
  [9000, 'SDK'],
  [8080, 'GS'],
  [18080, 'GS-alt'],
  [18081, 'GS-alt2'],
  [19000, 'SDK-alt'],
  [19001, 'SDK-alt2'],
  [10011, 'HOT'],
  [10012, 'HOT2'],
];
for (const [port, tag] of servers) {
  const s = https.createServer({ key, cert }, makeHandler(tag + ':' + port));
  s.on('error', e => console.log(`:${port} ERR ${e.code}`));
  s.listen(port, '0.0.0.0', () => console.log(`:${port} ${tag}`));
}
