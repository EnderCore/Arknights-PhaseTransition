// PROTOTYPE — v0.6.66 登录闭环验证（一次性代码，不进 main）
// 用法: node login-proto.mjs
// 监听 :18080 (gameServer) 和 :19000 (sdkServer)，打印所有请求
import http from 'node:http';

const LOG = [];
function log(tag, obj) {
  const line = `[${new Date().toISOString()}] ${tag} ${JSON.stringify(obj)}`;
  console.log(line);
  LOG.push(line);
}

// ---- 全量 PlayerDataModel（登录时下发） ----
const playerData = {
  events: { building: '1970-01-01T00:00:00.000Z' },
  pushFlags: { hasGifts: false, hasFriendRequest: false, hasClues: false, hasFreeLevelGP: false },
  status: {
    nickName: '博士', nickNumber: '0001', serverName: '泰拉',
    ap: 120, lastApAddTime: new Date().toISOString(), lastRefreshTs: new Date().toISOString(),
    level: 1, exp: 0, maxAp: 120, practiceTicket: 0,
    gold: 10000, crystal: 0, diamondShard: 600, recruitLicense: 0,
    gachaTicket: 10, tenGachaTicket: 0, instantFinishTicket: 0,
    hggShard: 0, lggShard: 0, socialPoint: 0, buyApRemainTimes: 10,
    apLimitUpFlag: false, registerTs: Date.now(),
    secretary: 'char_002_amiya', secretarySkinId: 'char_002_amiya#1',
    resume: '', monthlySubscriptionEndTime: '1970-01-01T00:00:00.000Z',
    monthlySubscriptionStartTime: '1970-01-01T00:00:00.000Z',
    progress: 0, mainStageProgress: 'main_01-01', flags: {}, friendAssist: []
  },
  monthlySub: {},
  troop: { troopCapacity: 0, curSquadCount: 0, curCharInstCount: 0, squads: {}, chars: {} },
  dungeon: { stages: {}, zones: { kvs: {} }, campaigns: { maxKills: 0, rewardStatus: [], campaignCurrentFee: 0, campaignTotalFee: 0, activeGroupId: '', instances: { kvs: {} } } },
  checkIn: { canCheckIn: true, checkInGroupId: 'default', checkInRewardIndex: 0, checkInHistory: [] },
  openServer: { chainLogin: { isAvailable: false, nowIndex: 0, history: [], finalReward: -1 }, checkIn: { isAvailable: false, history: [] } },
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
    startTs: '1970-01-01T00:00:00.000Z', maxFinishTs: '1970-01-01T00:00:00.000Z', realFinishTs: '1970-01-01T00:00:00.000Z',
    durationInSec: 0, slots: { kvs: {} },
    normal: { tagId: 0, pick: false, state: 0, canBuy: false, tags: [], selectTags: [], startTs: '1970-01-01T00:00:00.000Z', maxFinishTs: '1970-01-01T00:00:00.000Z', realFinishTs: '1970-01-01T00:00:00.000Z', durationInSec: 0, slots: { kvs: {} } }
  },
  gacha: { start: 0, end: 0, openFlag: false, cnt: 0, newbee: { start: 0, end: 0, openFlag: false, cnt: 0 } },
  social: {},
  mission: { missions: {}, missionRewards: { dailyPoint: 0, weeklyPoint: 0 }, missionGroups: {} },
  building: { status: { labor: { buffSpeed: 1, value: 240, maxValue: 240, lastUpdateTime: new Date().toISOString(), processPoint: 0 } }, chars: {}, assist: [], roomSlots: {}, rooms: {}, furniture: {}, diyPresetSolutions: {} }
};

const uid = '10001';
const secret = 'proto-secret-' + Date.now();
const token = 'proto-token-' + Date.now();

function readBody(req) {
  return new Promise(res => {
    let d = '';
    req.on('data', c => d += c);
    req.on('end', () => res(d));
  });
}

function gameHandler() {
  return async (req, res) => {
    const body = await readBody(req);
    log('GS ' + req.method + ' ' + req.url, { headers: req.headers, body });
    res.setHeader('Content-Type', 'application/json');
    const p = req.url.split('?')[0];
    const routes = {
      '/account/login': () => ({ data: { result: 0, uid, secret, playerDataDelta: { modified: playerData, deleted: {} } } }),
      '/account/syncData': () => ({ data: { user: playerData, ts: Math.floor(Date.now() / 1000) } }),
      '/account/syncStatus': () => ({ data: { announcementVersion: '1', ts: Math.floor(Date.now() / 1000), result: {}, playerDataDelta: { modified: {}, deleted: {} } } }),
    };
    const h = routes[p];
    const payload = h ? h() : { data: { playerDataDelta: { modified: {}, deleted: {} } } };
    res.end(JSON.stringify(payload));
  };
}

function sdkHandler() {
  return async (req, res) => {
    const body = await readBody(req);
    log('SDK ' + req.method + ' ' + req.url, { headers: req.headers, body });
    res.setHeader('Content-Type', 'application/json');
    const p = req.url.split('?')[0];
    const now = Math.floor(Date.now() / 1000);
    const routes = {
      '/user/guestLogin': () => ({ data: { result: 0, uid, role: 0, token, issueAt: now, expiresIn: now + 86400 } }),
      '/user/login': () => ({ data: { result: 0, uid, role: 0, token, isAuthenticate: true, issuedAt: now, expiresIn: now + 86400 } }),
      '/user/auth': () => ({ data: { uid } }),
      '/user/register': () => ({ data: { result: 0, uid, role: 0, token, issuedAt: now, expiresIn: now + 86400 } }),
      '/user/sendSmsCode': () => ({ data: { result: 0, code: '123456' } }),
      '/user/loginBySmsCode': () => ({ data: { result: 0, uid, role: 0, token, isAuthenticate: true, issuedAt: now, expiresIn: now + 86400 } }),
      '/user/authenticateUserIdentity': () => ({ data: { result: 0 } }),
    };
    const h = routes[p];
    const payload = h ? h() : { data: {} };
    res.end(JSON.stringify(payload));
  };
}

http.createServer(gameHandler()).listen(18080, '0.0.0.0', () => console.log('[GS]  :18080'));
http.createServer(sdkHandler()).listen(19000, '0.0.0.0', () => console.log('[SDK] :19000'));
