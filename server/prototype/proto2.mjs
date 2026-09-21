// PROTOTYPE — v0.6.66 登录闭环验证服务
// 用法: node proto2.mjs
// 监听: SDK 服 (443/9000) + 游戏服 (8080/18080) + 资源服(443, 路径分流)

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

// 玩家状态持久化变量
let playerNickName = '博士';

// ---- 玩家全量存档 ----
const SKIN = id => id + '#1';

const INIT_CHARS = [
  { id: 'char_002_amiya',  instId: 1, skin: SKIN('char_002_amiya'),
    skills: [
      { skillId: 'skcom_magic_rage[3]', unlock: 1, state: 0, specializeLevel: 0, completeUpgradeTime: -1 },
      { skillId: 'skchr_amiya_2',      unlock: 0, state: 0, specializeLevel: 0, completeUpgradeTime: -1 },
      { skillId: 'skchr_amiya_3',      unlock: 0, state: 0, specializeLevel: 0, completeUpgradeTime: -1 }
    ], defaultSkillIndex: 0 },
  { id: 'char_123_fang',   instId: 2, skills: [], defaultSkillIndex: -1 },
  { id: 'char_122_beagle', instId: 3, skills: [], defaultSkillIndex: -1 },
  { id: 'char_124_kroos',  instId: 4, skills: [], defaultSkillIndex: -1 },
  { id: 'char_121_lava',   instId: 5, skills: [], defaultSkillIndex: -1 },
  { id: 'char_120_hibisc', instId: 6, skills: [], defaultSkillIndex: -1 },
  { id: 'char_127_estell', instId: 7, skills: [], defaultSkillIndex: -1 },
  { id: 'char_126_shotst', instId: 8, skills: [], defaultSkillIndex: -1 },
  { id: 'char_128_plosis', instId: 9, skills: [], defaultSkillIndex: -1 },
  { id: 'char_129_bluep',  instId: 10, skills: [], defaultSkillIndex: -1 },
  { id: 'char_109_fmout',  instId: 11, skills: [], defaultSkillIndex: -1 },
  { id: 'char_108_silent', instId: 12, skills: [], defaultSkillIndex: -1 },
];

function buildTroopChars() {
  const chars = {};
  for (const c of INIT_CHARS) {
    chars[String(c.instId)] = {
      instId: c.instId, charId: c.id, favorPoint: 0, potentialRank: 0, mainSkillLvl: 1,
      skin: c.skin || SKIN(c.id), level: 1, exp: 0, evolvePhase: 0,
      defaultSkillIndex: c.defaultSkillIndex, gainTime: 0,
      skills: c.skills.map(s => ({ ...s }))
    };
  }
  return chars;
}

function buildTroopSquads() {
  const squads = {};
  for (let i = 0; i < 4; i++) {
    squads[String(i)] = {
      squadId: String(i), name: ['第一编队','第二编队','第三编队','第四编队'][i],
      slots: i === 0
        ? INIT_CHARS.slice(0, 3).map(c => ({ charInstId: c.instId, skillIndex: 0 }))
        : []
    };
  }
  return squads;
}

function buildBuildingChars() {
  const chars = {};
  for (const c of INIT_CHARS) {
    chars[String(c.instId)] = {
      charId: c.id, lastApAddTime: 0, ap: 8640000, roomSlotId: '', index: -1,
      changeScale: 0, bubble: { normal: { add: -1, ts: 0 }, assist: { add: -1, ts: 0 } }, workTime: 0
    };
  }
  return chars;
}

const BUILDING_ROOM_SLOTS = {
  slot_1:  { level: 1, state: 2, roomId: 'ELEVATOR',    charInstIds: [], completeConstructTime: -1 },
  slot_2:  { level: 1, state: 2, roomId: 'CONTROL',     charInstIds: [-1], completeConstructTime: -1 },
  slot_3:  { level: 1, state: 2, roomId: 'ELEVATOR',    charInstIds: [], completeConstructTime: -1 },
  slot_4:  { level: 1, state: 2, roomId: 'POWER',       charInstIds: [-1, -1, -1], completeConstructTime: -1 },
  slot_5:  { level: 1, state: 2, roomId: 'MANUFACTURE', charInstIds: [-1, -1, -1], completeConstructTime: -1 },
  slot_6:  { level: 1, state: 2, roomId: 'MANUFACTURE', charInstIds: [-1, -1, -1], completeConstructTime: -1 },
  slot_7:  { level: 1, state: 2, roomId: 'SHOP',        charInstIds: [-1, -1, -1], completeConstructTime: -1 },
  slot_8:  { level: 1, state: 2, roomId: 'DORMITORY',   charInstIds: [-1, -1, -1, -1, -1], completeConstructTime: -1 },
  slot_9:  { level: 1, state: 2, roomId: 'DORMITORY',   charInstIds: [-1, -1, -1, -1, -1], completeConstructTime: -1 },
  slot_10: { level: 1, state: 2, roomId: 'MEETING',     charInstIds: [-1, -1], completeConstructTime: -1 },
  slot_11: { level: 1, state: 2, roomId: 'HIRE',        charInstIds: [-1], completeConstructTime: -1 },
  slot_12: { level: 1, state: 2, roomId: 'CORRIDOR',    charInstIds: [], completeConstructTime: -1 },
  slot_13: { level: 1, state: 2, roomId: 'CORRIDOR',    charInstIds: [], completeConstructTime: -1 },
  slot_14: { level: 1, state: 2, roomId: 'ELEVATOR',    charInstIds: [], completeConstructTime: -1 },
  slot_15: { level: 1, state: 2, roomId: 'ELEVATOR',    charInstIds: [], completeConstructTime: -1 },
  slot_16: { level: 1, state: 2, roomId: 'WORKSHOP',    charInstIds: [-1], completeConstructTime: -1 },
  slot_17: { level: 1, state: 2, roomId: 'TRAINING',    charInstIds: [-1, -1], completeConstructTime: -1 },
};

function buildBuildingRooms() {
  return {
    manufact: { 'slot_5': { buff: { speed: 1, capacity: 0 }, state: 0, formulaId: '', remainSolutionCnt: 0, outputSolutionCnt: 0, lastUpdateTime: new Date().toISOString(), processPoint: 0, saveTime: 0, completeWorkTime: new Date(0).toISOString(), capacity: 0, apCost: 0 },
                'slot_6': { buff: { speed: 1, capacity: 0 }, state: 0, formulaId: '', remainSolutionCnt: 0, outputSolutionCnt: 0, lastUpdateTime: new Date().toISOString(), processPoint: 0, saveTime: 0, completeWorkTime: new Date(0).toISOString(), capacity: 0, apCost: 0 } },
    shop: { 'slot_7': { stock: [], outputItem: [] } },
    power: { 'slot_4': { buff: { laborSpeed: 1 } } },
    control: { 'slot_2': { buff: { apCost: 0, global: { apCost: 0 } }, apCost: 0 } },
    meeting: { 'slot_10': { visitedUser: [], buff: { speed: 1 }, state: 0, processPoint: 0, speed: 1, ownStock: [], receiveStock: [], board: {}, socialReward: { daily: false, search: false }, expiredReward: 0, received: 0, infoShare: { ts: 0, reward: 0 }, lastUpdateTime: new Date().toISOString(), dailyReward: null } },
    hire: { 'slot_11': { buff: { speed: 1 }, recruitSlotId: 0, state: 0, processPoint: 0, speed: 1, lastUpdateTime: new Date().toISOString(), refreshCount: 0, completeWorkTime: new Date(0).toISOString() } },
    dorm: {},
    training: { 'slot_17': { buff: { speed: 1 }, lastUpdateTime: new Date().toISOString(), trainer: null, trainee: null, completeWorkTime: new Date(0).toISOString() } },
    workshop: { 'slot_16': { buff: { rate: [] } } },
    trading: {}
  };
}

function playerData() {
  const now = new Date().toISOString();
  return {
    events: { building: now },
    pushFlags: { hasGifts: false, hasFriendRequest: false, hasClues: false, hasFreeLevelGP: false },
    status: {
      nickName: playerNickName, nickNumber: '0001', serverName: '泰拉',
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
    troop: {
      troopCapacity: 200, curSquadCount: 1, curCharInstCount: INIT_CHARS.length,
      squads: buildTroopSquads(),
      chars: buildTroopChars()
    },
    dungeon: {
      stages: {}, zones: [],
      campaigns: { maxKills: 0, rewardStatus: [], campaignCurrentFee: 0, campaignTotalFee: 0, activeGroupId: '', instances: [] }
    },
    checkIn: { canCheckIn: true, checkInGroupId: '', checkInRewardIndex: 0, checkInHistory: [] },
    openServer: {
      chainLogin: { isAvailable: false, nowIndex: 0, history: [], finalReward: -1 },
      checkIn: { isAvailable: false, history: [] }
    },
    activity: { coin: 0, shop: {}, defaultActivityList: [], missionOnlyActivityList: [] },
    dexNav: { enemy: { enemies: {} }, formula: { manufacture: {}, workshop: {} } },
    skin: { characterSkins: [] },
    collectionReward: { team: {} },
    inventory: { '2001': 10, '2002': 10, '2003': 10, '3001': 100, '3002': 100, '3003': 100, '30011': 50, '30012': 50, '30013': 50, '30061': 20, '30062': 20, '30063': 20, '30064': 20, '30073': 30, '30074': 30, '30083': 20, '30084': 20, '30093': 20, '30094': 20, '30103': 20, '30104': 20, '30113': 20, '30114': 20, '30115': 20, '30125': 20, '0': 0 },
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
      startTs: now, maxFinishTs: now, realFinishTs: now, durationInSec: 0, slots: [],
      normal: { tagId: 0, pick: false, state: 0, canBuy: false, tags: [], selectTags: [], startTs: now, maxFinishTs: now, realFinishTs: now, durationInSec: 0, slots: [] }
    },
    gacha: { start: 0, end: 0, openFlag: false, cnt: 0, newbee: { start: 0, end: 0, openFlag: false, cnt: 0 } },
    social: {},
    mission: { missions: {}, missionRewards: { dailyPoint: 0, weeklyPoint: 0 }, missionGroups: {} },
    building: {
      status: { labor: { buffSpeed: 1, value: 32, maxValue: 32, lastUpdateTime: now, processPoint: 0 } },
      chars: buildBuildingChars(),
      assist: [-1, -1, -1, -1, -1],
      roomSlots: BUILDING_ROOM_SLOTS,
      rooms: buildBuildingRooms(),
      furniture: {},
      diyPresetSolutions: {}
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
  const now = Math.floor(Date.now() / 1000);
  log(tag, req.url, req.headers, body);
  const J = o => { res.setHeader('Content-Type', 'application/json'); res.end(JSON.stringify(o)); };
  const H = html => { res.setHeader('Content-Type', 'text/html; charset=utf-8'); res.end(html); };
  // v0.6.66 的 Networker 把游戏服响应当作 MsgBundle<T> 反序列化（读 data 字段），
  // 但同一份 DTO 也被当作扁平结构访问过。同时输出两种形态，两边都能取到值。
  const G = o => J({ ...o, data: o });

  // ---------- 用户服务协议 & 隐私政策页面 ----------
  if (/\/protocol\/service/.test(p) || /\/protocol\//.test(p) || p === '/service') {
    return H(`<!DOCTYPE html>
<html>
<head><meta charset="utf-8"><title>用户服务协议与隐私条款</title>
<style>body{font-family:sans-serif;padding:20px;line-height:1.6;background:#1e1e1e;color:#f0f0f0;}</style>
</head>
<body>
<h2>《明日方舟》测试服用户服务协议</h2>
<p>欢迎来到泰拉世界。本协议为您与鹰角网络（Hypergryph）之间的测试服务协议。</p>
<p>您已成功连接相变临界本地测试服务端。请确认并同意遵守相关测试守则。</p>
<p>点击下方“同意”按钮即可进入罗德岛指挥系统。</p>
</body>
</html>`);
  }

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
  // 注意：游戏服全部走 MsgBundle<T> 反序列化（读 data 字段），
  // 因此统一用 G() 同时给出扁平字段与 data 包装。
  if (p === '/account/login') {
    return G({ result: 0, uid: UID, secret: SECRET, serviceLicenseVersion: 0 });
  }

  if (p === '/account/syncData') {
    return G({ result: 0, ts: now, user: playerData() });
  }

  if (p === '/pay/confirmOrder') {
    return G({
      result: 0,
      goodId: '',
      receiveItems: { items: [], checkInItems: [] },
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }

  // 绑定昵称：更新内存状态并返回成功 delta
  if (p === '/user/bindNickName') {
    try {
      const data = JSON.parse(body || '{}');
      if (data.nickName) {
        playerNickName = data.nickName;
        console.log(`[BIND] Player nickname updated to: "${playerNickName}"`);
      }
    } catch (e) {}

    return G({
      result: 0,
      playerDataDelta: {
        modified: {
          status: { nickName: playerNickName }
        },
        deleted: {}
      }
    });
  }

  // 核心：/account/syncStatus
  // result 是 Dictionary<long, JObject>，必须是对象字典而非整型。
  // 各 sync item 用 moduleMask 当 key，用 {result: {...}} 承载子结构。
  if (p === '/account/syncStatus') {
    return G({
      ts: now,
      announcementVersion: '',
      result: {
        '2': { result: {} },   // FRIEND_REQ
        '4': { result: { announcementVersion: '', announcementPopUpVersion: '' } },
        '8': { result: {} },   // REFRESH_USER_CARD
        '16': { result: { goodPurchaseState: { result: {} } } }, // GOOD_PURCHASE_STATE
        '32': { result: {} },  // CASH_PURCHASE_STATE
        '64': { result: {} },  // CLUE_STATE
        '128': { result: {} }  // SYNC_BUILDING
      },
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }

  // 其余业务接口：扁平 result: 0 + 空 delta
  return G({ result: 0, playerDataDelta: { modified: {}, deleted: {} } });
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
