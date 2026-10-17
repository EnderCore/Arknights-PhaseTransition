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
let battleSeq = 0;

// ---- 存档 ----
// 所有可变状态集中在一个 save 对象里，写盘到 save.json，重启后接着玩。
const SAVE_PATH = 'save.json';
const CONST = JSON.parse(fs.readFileSync('data/gamedata_const.json', 'utf-8'));

// 关卡静态表：客户端通过 dungeon.stages 判断解锁（StageDB.TryGetStage 找不到即视为未解锁）。
// PlayerStageState: 0=UNLOCKED 1=PLAYED 2=PASS 3=COMPLETE
const STAGE_INIT = JSON.parse(fs.readFileSync('data/stage_init.json', 'utf-8'));
const STAGE_UNLOCK_MAP = JSON.parse(fs.readFileSync('data/stage_unlock_map.json', 'utf-8'));
// stageId -> zoneId 权威映射（数据侧，与 STAGE_INIT.zones 68 键同源生成）。
// 客户端 ZoneDB.CompleteTimes 驱动 zone 完成度/奖励领取；旧代码 onStageComplete 只改 stage，
// 战斗后 zone.completeTimes 永不递增。zone 表无对应编号的 stage（actNdN_/aN_/camp_ 等）不在此表中。
const STAGE_ZONE_MAP = STAGE_INIT.stageZoneMap || {};
// 关卡经验/金币产出（从 stage_table 提取，用于 battleFinish 结算）
const STAGE_REWARDS = JSON.parse(fs.readFileSync('data/stage_rewards.json', 'utf-8'));
// 干员表（稀有度用于算等级上限；寻访池另见 GACHA_POOL）
const CHAR_TABLE_STATIC = JSON.parse(fs.readFileSync('data/character_table.json', 'utf-8'));
// v0.6.66 客户端只打包了内测期干员的 spine/立绘资源；dkns 表是后期版本含新角色。
// 用 APK 文件名列出的 char_* 作白名单，保证抽到的角色客户端都能显示。
const BETA_CHAR_IDS = new Set(
  fs.readFileSync('data/beta_char_ids.txt', 'utf-8')
    .split('\n').map(s => s.trim()).filter(Boolean)
);
const GACHA_POOL = (() => {
  const byRarity = {};
  for (const [cid, c] of Object.entries(CHAR_TABLE_STATIC)) {
    if (c.isNotObtainable || c.isSpChar) continue;
    if (!cid.startsWith('char_')) continue;
    if (!BETA_CHAR_IDS.has(cid)) continue;               // 只抽客户端有资源的角色
    if (c.itemObtainApproach !== '招募寻访') continue;    // 只抽寻访池角色
    (byRarity[c.rarity] = byRarity[c.rarity] || []).push(cid);
  }
  console.log('[GACHA] pool size:', JSON.stringify(Object.fromEntries(Object.entries(byRarity).map(([k, v]) => [k, v.length]))));
  return byRarity;
})();

// 商店：商品 id 由服务端提供（客户端 shop_client_table 里没有商品清单，只有推荐位/轮播等展示配置）。
// 商品条目结构见 QCObject；这里用与官方一致的 id 规则（LS/HS/ES 前缀）。
const SHOP_TABLE = JSON.parse(fs.readFileSync('data/shop_client_table.json', 'utf-8'));
const ITEM_TABLE = JSON.parse(fs.readFileSync('data/item_table.json', 'utf-8'));
const itemName = id => ITEM_TABLE.items[id]?.name || id;

// 低阶凭证商店（LS_）：用采购凭证(4006)兑换
const LOW_GOODS = [
  { goodId: 'LS_1', itemId: '4001', count: 1000, price: 1, avail: 99 },
  { goodId: 'LS_2', itemId: '3003', count: 1, price: 5, avail: 99 },
  { goodId: 'LS_3', itemId: '2001', count: 1, price: 3, avail: 99 },
  { goodId: 'LS_4', itemId: '30012', count: 1, price: 2, avail: 99 },
  { goodId: 'LS_5', itemId: '30062', count: 1, price: 4, avail: 99 },
];
// 高阶凭证商店（HS_）：用高级凭证(4004)兑换
const HIGH_GOODS = [
  { goodId: 'HS_1', itemId: '7003', count: 1, price: 15, avail: 10 },
  { goodId: 'HS_2', itemId: '4001', count: 5000, price: 8, avail: 20 },
  { goodId: 'HS_3', itemId: '2003', count: 1, price: 6, avail: 20 },
];
// 源石商店（ES_）：用至纯源石(4002)兑换（1 源石 = 180 合成玉的标准比例）
const EXTRA_GOODS = [
  { goodId: 'ES_1', itemId: '4003', count: 180, price: 1, avail: 99 },
];
// 信用商店（SO_）：用信用(社交点)兑换
const SOCIAL_GOODS = [
  { goodId: 'SO_1', itemId: '30012', count: 1, price: 40, avail: 10 },
  { goodId: 'SO_2', itemId: '30062', count: 1, price: 60, avail: 10 },
  { goodId: 'SO_3', itemId: '2001', count: 1, price: 120, avail: 5 },
  { goodId: 'SO_4', itemId: '7001', count: 1, price: 300, avail: 3 },
];
// 礼包商店（GP_）：直接给内容，不扣货币（测试用）
const GP_GOODS = [
  { goodId: 'GP_Once_1', itemId: '4002', count: 6, price: 0, avail: 1, name: '新手组合包' },
  { goodId: 'GP_gW_10_W_1', itemId: '4003', count: 1500, price: 0, avail: 1, name: '每周养成组合包' },
];
// 时装商店（SS_）：只上架客户端真正打包了资源的皮肤。
// v0.6.66 APK 打包于 2019-03，皮肤按 skinGroupId 前缀分年，只有 2018/2019 系列在该包内。
// 后续年份的皮肤客户端没有立绘/spine，上架会导致时装页渲染失败。
const BETA_SKIN_YEARS = /^(2018|2019)#/;
const SKIN_GOODS = (() => {
  const skins = JSON.parse(fs.readFileSync('data/skin_table.json', 'utf-8')).charSkins || {};
  return Object.values(skins)
    .filter(s => s.isBuySkin)
    .filter(s => BETA_SKIN_YEARS.test(s.displaySkin?.skinGroupId || ''))
    .filter(s => BETA_CHAR_IDS.has(s.charId))   // 角色也要在客户端资源白名单里
    .map((s, i) => ({
      goodId: 'SS_' + s.skinId,
      skinId: s.skinId,
      charId: s.charId,
      skinName: s.displaySkin?.skinName || s.skinId,
      price: s.displaySkin?.dynIllustId ? 21 : 18,
      slotId: i,
    }));
})();

function qcObject(g, type) {
  const now = FIXED_BETA_EPOCH;
  return {
    goodId: g.goodId,
    item: { id: g.itemId, count: g.count },
    progressGoodId: '',
    displayName: g.name || itemName(g.itemId),
    slotId: g.slotId ?? 0,
    originPrice: g.price,
    price: g.price,
    availCount: g.avail,
    discount: 0,
    priority: g.priority ?? 0,
    number: 0,
    groupId: type === 'PROGRESS' ? (g.groupId || '') : '',
    goodStartTime: now - 86400,
    goodEndTime: now + 86400 * 30,
    goodType: type || 'NORMAL',
  };
}

const DEFAULT_SAVE = () => ({
  nickName: '博士',
  stages: {},          // stageId -> { stageId, state, completeTimes, hasBattleReplay, noCostCnt }
  zones: {},           // zoneId -> { completeTimes }
  stories: {},         // 已提交的 storyId
  mainStageProgress: 'main_01-01',
  inventory: {
    '2001': 10, '2002': 10, '2003': 10, '3001': 100, '3002': 100, '3003': 100,
    '30011': 50, '30012': 50, '30013': 50, '30061': 20, '30062': 20, '30063': 20,
    '30064': 20, '30073': 30, '30074': 30, '30083': 20, '30084': 20, '30093': 20,
    '30094': 20, '30103': 20, '30104': 20, '30113': 20, '30114': 20, '30115': 20,
    '30125': 20, '4001': 0, '4002': 0, '4003': 0, '4004': 0, '4005': 0, '4006': 0,
    '7001': 0, '7002': 0, '7003': 0, '32001': 0, '0': 0
  },
  status: {
    gold: 100000, crystal: 0, diamondShard: 6000, recruitLicense: 20, gachaTicket: 20,
    tenGachaTicket: 2, instantFinishTicket: 10, hggShard: 0, lggShard: 0,
    socialPoint: 1000, ap: 120, practiceTicket: 0,
    level: 1, exp: 0
  },
  checkIn: { canCheckIn: true, checkInGroupId: 'signin31', checkInRewardIndex: 0, checkInHistory: [] },
  chars: {},           // instId(str) -> PlayerCharacter
  squads: {},          // squadId(str) -> 编队
  goodPurchaseState: {}, // goodId -> 已购次数（商店限购）
  skins: { characterSkins: {}, skinTs: {} }, // 已购皮肤
  furniture: {},       // 已购家具 furniId -> 1
  secretarySkinId: '', // 助理皮肤（空则由 secretary + '#1' 推导）
  nextCharInstId: 13,
  secretary: 'char_002_amiya',
  chatMask: '',       // 四表会话字段 chatMask 的种子（本地测试确定性派生，非真实密钥）
});

let save;
function loadSave() {
  try {
    save = JSON.parse(fs.readFileSync(SAVE_PATH, 'utf-8'));
    // 补齐新增顶层字段，兼容旧存档
    const d = DEFAULT_SAVE();
    for (const k of Object.keys(d)) if (save[k] === undefined) save[k] = d[k];
    for (const k of Object.keys(d.status)) if (save.status[k] === undefined) save.status[k] = d.status[k];
    console.log('[SAVE] loaded', SAVE_PATH);
  } catch (e) {
    save = DEFAULT_SAVE();
    console.log('[SAVE] new profile created');
  }
}
let saveTimer = null;
function persist() {
  // 合并写：请求密集时不每次落盘
  if (saveTimer) return;
  saveTimer = setTimeout(() => {
    saveTimer = null;
    try { fs.writeFileSync(SAVE_PATH, JSON.stringify(save)); }
    catch (e) { console.log('[SAVE] write failed:', e.message); }
  }, 200);
}
loadSave();

// 存档初始化：第一次运行时把 stage 表灌进来
if (Object.keys(save.stages).length === 0) {
  for (const [sid, rec] of Object.entries(STAGE_INIT.stages)) save.stages[sid] = { ...rec };
  for (const [zid, rec] of Object.entries(STAGE_INIT.zones)) save.zones[zid] = { ...rec };
  save.stages['main_01-01'].state = 3;
  save.stages['main_01-01'].completeTimes = 1;
  save.zones['main_1'] = { completeTimes: 1 };
  save._stageInitDone = true;
  persist();
}

// 新手引导依赖关卡置 PASS：22 个 UILockTarget 锁经 .data.rel.ro 表映射到的 12 个 stageId
// （.bss 槽 0x02A574B8..0x02A574E4，fact1277 全量表；MISSION_GUIDE=5 → main_01-07）。
// 客户端 UIGuideController._IsStagePast 判定 PlayerStage.state>1（≥2 PASS）才放行引导，
// 而 STAGE_INIT 首启把 642 关全灌成 state=0(UNLOCKED)，致『关卡全解锁但新手引导未解锁』卡住。
// 仅点名这 12 关：其余关保持全解锁 state=0 不动；completeTimes 不动（首通奖励仍按
// battleFinish 实际战斗发放，state=2 不自发放任何奖励）。
const GUIDE_PASS_STAGES = [
  'main_01-01', 'main_01-03', 'main_01-04', 'main_01-05', 'main_01-06', 'main_01-07',
  'main_01-09', 'main_01-10', 'main_01-11', 'main_01-12', 'main_02-03', 'main_02-08',
];
let guidePassPatched = 0;
for (const sid of GUIDE_PASS_STAGES) {
  const st = save.stages[sid];
  // 只升不降：已是 state>=2（如 main_01-01=3 COMPLETE）的不回退
  if (st && typeof st.state === 'number' && st.state < 2) { st.state = 2; guidePassPatched++; }
}
if (guidePassPatched > 0) {
  console.log('[GUIDE] set state=2(PASS) for', guidePassPatched, 'guide-dependency stages');
  persist();
}

// ---- 关卡进度（引用存档对象，直接改即持久）----
const playerStages = save.stages;
const playerZones = save.zones;
const finishedStories = save.stories;
const inventory = save.inventory;
const statusRes = save.status;
const checkInState = save.checkIn;
const troopChars = save.chars;
let lastBattleStageId = '';
let lastBattleId = '';

// 完成 stageId：标 COMPLETE(3)，并按 stageZoneMap 递增所属 zone 的 completeTimes，
// 返回依赖它而新解锁的关卡列表。
function onStageComplete(stageId) {
  const st = playerStages[stageId];
  if (!st) return [];
  st.state = 3;
  st.completeTimes = (st.completeTimes || 0) + 1;
  st.hasBattleReplay = true;
  // zone 完成度：按数据侧权威映射累加（与 L707 mainStageProgress 同为存档推进指针）
  const zoneId = STAGE_ZONE_MAP[stageId];
  if (zoneId && playerZones[zoneId]) {
    playerZones[zoneId].completeTimes = (playerZones[zoneId].completeTimes || 0) + 1;
  }
  const unlocked = [];
  for (const next of STAGE_UNLOCK_MAP[stageId] || []) {
    const nst = playerStages[next];
    if (nst && nst.state === 0) unlocked.push(next);
  }
  return unlocked;
}

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
  // 初始干员只建一次到存档（可后续被 gacha 追加）
  if (Object.keys(troopChars).length === 0) {
    for (const c of INIT_CHARS) {
      troopChars[String(c.instId)] = {
        instId: c.instId, charId: c.id, favorPoint: 0, potentialRank: 0, mainSkillLvl: 1,
        skin: c.skin || SKIN(c.id), level: 1, exp: 0, evolvePhase: 0,
        defaultSkillIndex: c.defaultSkillIndex, gainTime: 0,
        skills: c.skills.map(s => ({ ...s }))
      };
    }
    save.nextCharInstId = INIT_CHARS.length + 1;
    persist();
  }
  return troopChars;
}

// 加入干员到队伍（抽卡/公招用）：已有则只返回信物
function addCharToTroop(charId) {
  for (const v of Object.values(troopChars)) {
    if (v.charId === charId) return { instId: v.instId, isNew: false };
  }
  const instId = save.nextCharInstId++;
  troopChars[String(instId)] = {
    instId, charId, favorPoint: 0, potentialRank: 0, mainSkillLvl: 1,
    skin: SKIN(charId), level: 1, exp: 0, evolvePhase: 0,
    defaultSkillIndex: -1, gainTime: FIXED_BETA_EPOCH, skills: []
  };
  persist();
  return { instId, isNew: true };
}

function buildTroopSquads() {
  if (Object.keys(save.squads).length === 0) {
    for (let i = 0; i < 4; i++) {
      save.squads[String(i)] = {
        squadId: i, name: ['第一编队','第二编队','第三编队','第四编队'][i],
        slots: i === 0
          ? [{ charInstId: 1, skillIndex: 0 }, { charInstId: 2, skillIndex: -1 }, { charInstId: 3, skillIndex: -1 }]
          : []
      };
    }
    persist();
  }
  return save.squads;
}

function buildBuildingChars() {
  // 基建干员表要覆盖玩家全部干员（不只是初始 12 个），否则基建设施里选不到人
  const chars = {};
  for (const c of Object.values(buildTroopChars())) {
    chars[String(c.instId)] = {
      charId: c.charId, lastApAddTime: 0, ap: 8640000, roomSlotId: '', index: -1,
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

// 2019 年 3 月底三测黄金时期时间戳：2019-04-01 12:00:00 GMT+8 (1554091200)
const FIXED_BETA_EPOCH = 1554091200;

function buildBuildingRooms() {
  const now = FIXED_BETA_EPOCH;
  return {
    manufact: { 'slot_5': { buff: { speed: 1, capacity: 0 }, state: 0, formulaId: '', remainSolutionCnt: 0, outputSolutionCnt: 0, lastUpdateTime: now, processPoint: 0, saveTime: 0, completeWorkTime: 0, capacity: 0, apCost: 0 },
                'slot_6': { buff: { speed: 1, capacity: 0 }, state: 0, formulaId: '', remainSolutionCnt: 0, outputSolutionCnt: 0, lastUpdateTime: now, processPoint: 0, saveTime: 0, completeWorkTime: 0, capacity: 0, apCost: 0 } },
    shop: { 'slot_7': { stock: [], outputItem: [] } },
    power: { 'slot_4': { buff: { laborSpeed: 1 } } },
    control: { 'slot_2': { buff: { apCost: 0, global: { apCost: 0 } }, apCost: 0 } },
    meeting: { 'slot_10': { visitedUser: [], buff: { speed: 1 }, state: 0, processPoint: 0, speed: 1, ownStock: [], receiveStock: [], board: {}, socialReward: { daily: false, search: false }, expiredReward: 0, received: 0, infoShare: { ts: 0, reward: 0 }, lastUpdateTime: now, dailyReward: null } },
    hire: { 'slot_11': { buff: { speed: 1 }, recruitSlotId: 0, state: 0, processPoint: 0, speed: 1, lastUpdateTime: now, refreshCount: 0, completeWorkTime: 0 } },
    dorm: {},
    training: { 'slot_17': { buff: { speed: 1 }, lastUpdateTime: now, trainer: null, trainee: null, completeWorkTime: 0 } },
    workshop: { 'slot_16': { buff: { rate: {} } } },
    trading: {}
  };
}

// 干员图鉴索引：charId -> { charInstId, count }。
// 客户端干员列表/详情页翻页都读这个字典，缺了会渲染空白。
function buildDexNavCharacter() {
  const out = {};
  for (const ch of Object.values(buildTroopChars())) {
    if (!ch || !ch.charId) continue;
    const cur = out[ch.charId];
    if (cur) cur.count += 1;
    else out[ch.charId] = { charInstId: ch.instId, count: 1 };
  }
  return out;
}

// ---- 四表 AES-128-CBC 会话字段 chatMask（§6.5 硬前置）----
// 客户端 PlayerData.m_chatMask 长度必须恰好 0x20（32 字节 UTF-8 可打印 ASCII），
// key=UTF8(chatMask[0:16])、ivMask=UTF8(chatMask[16:32])（fact306/fact303 口径），
// 长度≠0x20 抛 "chatMask is invalid!"。本地测试：确定性生成（同档稳定），
// 非真实密钥、不入库、不写普通日志（红线 §6.5）。
const CHAT_MASK_LEN = 0x20;
function deriveChatMask(seedStr) {
  const out = [];
  let counter = 0;
  while (out.length < CHAT_MASK_LEN) {
    const chunk = crypto
      .createHash('sha256')
      .update(`${seedStr}:${counter++}`)
      .digest('base64');
    for (const ch of chunk) {
      if (/[A-Za-z0-9]/.test(ch)) out.push(ch);
      if (out.length === CHAT_MASK_LEN) break;
    }
  }
  return out.join('');
}
let CHAT_MASK_CACHE = null;
function getChatMask() {
  if (CHAT_MASK_CACHE) return CHAT_MASK_CACHE;
  // 无存档 chatMask 时按 uid 确定派生（本地测试环境无需真实密钥）。
  const seed = (save && save.chatMask) ? save.chatMask : `proto-chatmask-${UID}`;
  CHAT_MASK_CACHE = deriveChatMask(seed);
  return CHAT_MASK_CACHE;
}

function playerData() {
  const nowSec = FIXED_BETA_EPOCH;
  return {
    // 四表 AES-128-CBC 运行期会话字段（§6.5）：客户端 CrypticConverter 读入
    // PlayerData.m_chatMask 派生 key/IV 解 tableconfig。32 字节 UTF-8 可打印 ASCII。
    chatMask: getChatMask(),
    events: { building: nowSec },
    pushFlags: { hasGifts: false, hasFriendRequest: false, hasClues: false, hasFreeLevelGP: false },
    status: {
      nickName: playerNickName, nickNumber: '0001', serverName: '泰拉',
      ap: statusRes.ap, lastApAddTime: nowSec, lastRefreshTs: nowSec,
      level: statusRes.level, exp: statusRes.exp, maxAp: 120, practiceTicket: statusRes.practiceTicket,
      gold: statusRes.gold, crystal: statusRes.crystal || 0, diamondShard: statusRes.diamondShard,
      recruitLicense: statusRes.recruitLicense,
      gachaTicket: statusRes.gachaTicket, tenGachaTicket: statusRes.tenGachaTicket,
      instantFinishTicket: statusRes.instantFinishTicket,
      hggShard: statusRes.hggShard, lggShard: statusRes.lggShard,
      socialPoint: statusRes.socialPoint, buyApRemainTimes: 10,
      apLimitUpFlag: false, registerTs: nowSec,
      // 主页立绘：secretarySkinId 必须给具体皮肤 id（空串会导致立绘不加载）
      secretary: save.secretary, secretarySkinId: save.secretarySkinId || (save.secretary + '#1'),
      resume: '',
      monthlySubscriptionEndTime: nowSec, monthlySubscriptionStartTime: nowSec,
      progress: save.progress || 0, mainStageProgress: save.mainStageProgress,
      flags: { init: true, ...finishedStories }, friendAssist: [],
      // 客户端主页/好友卡读这些，缺失会显示异常
      lastOnlineTs: nowSec, lastRefreshTs: nowSec, avatarId: '0',
      friendNumLimit: 50, androidDiamond: 0, iosDiamond: 0,
      tipMonthlyCardExpireTs: 0, avatar: {}, uid: 1000001
    },
    monthlySub: {},
    troop: {
      troopCapacity: 200, curSquadCount: Object.keys(save.squads).length, curCharInstCount: Object.keys(troopChars).length,
      squads: buildTroopSquads(),
      chars: buildTroopChars()
    },
    dungeon: {
      stages: playerStages,
      zones: playerZones,
      campaigns: { campaignCurrentFee: 0, campaignTotalFee: 0, activeGroupId: '', instances: {} }
    },
    checkIn: { ...checkInState, checkInHistory: [...checkInState.checkInHistory] },
    openServer: {
      chainLogin: { isAvailable: false, nowIndex: 0, history: [], finalReward: -1 },
      checkIn: { isAvailable: false, history: [] }
    },
    activity: { defaultActivityList: {}, missionOnlyActivityList: {} },
    // 干员详情页左右滑动靠 dexNav.character 的 charInstId/count 索引遍历；
    // 缺这个字典会导致详情页翻页空白。
    dexNav: {
      character: buildDexNavCharacter(),
      enemy: { enemies: {}, stage: {} },
      formula: { manufacture: {}, workshop: {} }
    },
    skin: save.skins || { characterSkins: {} },
    collectionReward: { team: {} },
    inventory: { ...inventory },
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
      normal: { slots: {} }
    },
    gacha: { newbee: { start: 0, end: 0, openFlag: false, cnt: 0 } },
    social: { assistCharList: [], yesterdayReward: { canReceive: false, assistAmount: 0, comfortAmount: 0 } },
    mission: { missions: {}, missionRewards: { dailyPoint: 0, weeklyPoint: 0, rewards: {} }, missionGroups: {} },
    building: {
      status: { labor: { buffSpeed: 1, value: 32, maxValue: 32, lastUpdateTime: nowSec, processPoint: 0 } },
      chars: buildBuildingChars(),
      assist: [-1, -1, -1, -1, -1],
      roomSlots: BUILDING_ROOM_SLOTS,
      rooms: buildBuildingRooms(),
      // 已购家具：与 /building/sync L1424(buildFurniture) 及 cheat getAllFurniture L992-995 写入口径对齐
      // （旧代码硬编码 {}，导致客户端 syncData 永远收不到已购家具）
      furniture: buildFurniture(),
      diyPresetSolutions: {}
    }
  };
}

const log = (tag, url, headers, body) => {
  const h = headers || {};
  console.log(`\n[${tag}] ${url} host=${h.host} uid=${h.uid || '-'} seqnum=${h.seqnum || '-'}`);
  if (body) console.log(`  REQ  ${body.slice(0, 1500)}`);
};

// ---- 玩家等级 ----
// PlayerStatus.level/exp，exp 到 playerExpMap[level-1] 即升级。
function addPlayerExp(expGain) {
  if (!expGain) return {};
  statusRes.exp += expGain;
  let leveled = false;
  const map = CONST.playerExpMap;
  while (statusRes.level < CONST.maxPlayerLevel) {
    const need = map[statusRes.level - 1];
    if (need === undefined || need < 0 || statusRes.exp < need) break;
    statusRes.exp -= need;
    statusRes.level += 1;
    leveled = true;
  }
  // 满级后经验清零
  if (statusRes.level >= CONST.maxPlayerLevel) statusRes.exp = 0;
  if (leveled) console.log(`[LEVEL] player -> ${statusRes.level} (exp ${statusRes.exp})`);
  return { level: statusRes.level, exp: statusRes.exp };
}

// ---- 干员升级 ----
// 依据 characterExpMap[phase] / characterUpgradeCostMap[phase]，与官方口径一致（参考 dkns 实现）。
const EXP_MAT_VALUE = { '2001': 200, '2002': 400, '2003': 1000, '2004': 2000 };
function upgradeChar(charInstId, expMats) {
  const ch = troopChars[String(charInstId)];
  if (!ch) return { error: true };

  const phase = ch.evolvePhase || 0;
  const expMap = CONST.characterExpMap[phase] || CONST.characterExpMap[0];
  const costMap = CONST.characterUpgradeCostMap[phase] || CONST.characterUpgradeCostMap[0];
  const rarity = CHAR_TABLE_STATIC[ch.charId]?.rarity ?? 3;
  const maxLevel = CONST.maxLevel[rarity]?.[phase] ?? 50;

  // 已满级：不吞材料，直接回当前状态
  if (ch.level >= maxLevel) {
    return { charsDelta: { [String(charInstId)]: { level: ch.level, exp: 0 } }, invDelta: {}, gold: statusRes.gold };
  }

  let expDelta = 0;
  const invDelta = {};
  for (const m of expMats || []) {
    const cnt = m.count || 0;
    expDelta += (EXP_MAT_VALUE[m.id] ?? 200) * cnt;
    inventory[m.id] = Math.max(0, (inventory[m.id] || 0) - cnt);
    invDelta[m.id] = inventory[m.id];
  }

  const curLevel = ch.level;
  const curExp = ch.exp || 0;
  const expNow = curExp + expDelta;

  let levelNew = curLevel;
  let expCost = 0;
  for (let i = curLevel - 1; i < expMap.length; i++) {
    if (expMap[i] === -1) break;
    if (expCost + expMap[i] > expNow) break;
    expCost += expMap[i];
    levelNew = i + 2;          // 升到下一级
  }
  let expNew = expNow - expCost;
  if (levelNew >= maxLevel) { levelNew = maxLevel; expNew = 0; }

  // 升级龙门币消耗（按已投入经验的比例分摊当前级与目标级）
  let goldCost = 0;
  if (levelNew > curLevel) {
    for (let lv = curLevel; lv < levelNew; lv++) {
      const idx = lv - 1;
      const need = expMap[idx];
      const unit = costMap[idx] ?? costMap[costMap.length - 1] ?? 0;
      if (!need || need <= 0) continue;
      const portion = lv === curLevel
        ? (need - curExp) / need
        : (lv === levelNew - 1 ? expNew / need : 1);
      goldCost += Math.round(portion * unit);
    }
  }
  goldCost = Math.max(0, goldCost);
  statusRes.gold = Math.max(0, statusRes.gold - goldCost);

  ch.level = levelNew;
  ch.exp = expNew;
  persist();

  console.log(`[CHAR] instId=${charInstId} lv ${curLevel}->${levelNew} exp=${expNew} gold=-${goldCost}`);
  return {
    charsDelta: { [String(charInstId)]: { level: levelNew, exp: expNew } },
    invDelta,
    gold: statusRes.gold,
  };
}

function route(tag, req, res, body) {
  const p = req.url.split('?')[0];
  // 统一使用内测时期时间戳（2019-04-01）
  const now = FIXED_BETA_EPOCH;
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
  // verifyAccount 专属路由：uid 取自会话 TOKEN 核对（非散落硬编码），
  // 用 G 同时输出扁平字段与 data 包装（补齐 MsgBundle 反序列化 data 非空判据）。
  if (/\/u8\/user\/verifyAccount/.test(p)) {
    let j = {};
    try { j = JSON.parse(body || '{}'); } catch (e) { j = {}; }
    const vaUid = (j.uid && j.token === TOKEN) ? String(j.uid) : UID;
    return G({ result: 0, uid: vaUid, channelUid: vaUid, token: TOKEN, isGuest: false, status: 0, extension: '{}' });
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
  // 必须返回准确匹配客户端 PlayerSyncStatusResponse 的字段
  // 关键：客户端内部调用 Convert.ToInt32(response.announcementVersion)，
  // 如果给空字符串 "" 会抛出 System.FormatException: Input string was not in the correct format
  // 导致客户端弹窗 "数据更新失败，请重新登录"。因此必须给有效数字字符串，如 "0"。
  if (p === '/account/syncStatus') {
    return G({
      ts: now,
      announcementVersion: '0',
      result: {
        '2': {},
        '4': { announcementVersion: '0' },
        '8': {},
        '16': { goodPurchaseState: { result: { ...save.goodPurchaseState } } },
        '32': {},
        '64': {},
        '128': {}
      },
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }

  // 战斗开始：客户端只用响应里的 result/battleId/isApProtect/apFailReturn/notifyPowerScoreNotEnoughIfFailed，
  // levelData/playerData 由客户端本地 stage_table + CreateBattlePlayerData 生成（见 _OnStartBattleSucceed 反汇编）。
  // battleId 需非空，客户端会用它做 saveBattleReplay 关联。
  if (p === '/quest/battleStart') {
    let stageId = '';
    try { stageId = JSON.parse(body || '{}').stageId || ''; } catch (e) {}
    lastBattleStageId = stageId;
    const battleId = `proto-battle-${Date.now().toString(36)}-${++battleSeq}`;
    lastBattleId = battleId;
    return G({
      result: 0,
      battleId,
      isApProtect: false,
      apFailReturn: 0,
      notifyPowerScoreNotEnoughIfFailed: false,
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }

  // 战斗结算：DefaultFinishBattleResponse 形状。
  // 需要：result + apFailReturn + goldScale/expScale + firstRewards/unlockStages/alert + 四类 rewards + playerDataDelta
  // 其中 playerDataDelta.modified.dungeon.stages[stageId] 要写回 PASS/COMPLETE，
  // 并把新解锁的关卡（unlockCondition 依赖此关的）一并放进 modified，让客户端在结算页立即解锁下一关。
  if (p === '/quest/battleFinish') {
    let reqStageId = '';
    // battleData 是 FakeBattleData（空 struct），stageId 只能从 data 内嵌 JSON 或上下文记录中取。
    // 原型：记录最后一次 battleStart 的 stageId。
    try {
      const j = JSON.parse(body || '{}');
      // 有些版本会把 stageId 塞在 data JSON 里；data 是加密串时拿不到，回退用 lastBattleStageId。
      const m = /main_\d+-\d+|sub_\d+-\d+|tr_\d+|act\w+/.exec(body || '');
      if (m) reqStageId = m[0];
    } catch (e) {}
    const stageId = reqStageId || lastBattleStageId || '';
    // D5 首通奖励：onStageComplete 会把 completeTimes 0→1，故须在调用前判定是否首通
    const isFirstClear = !!(stageId && playerStages[stageId] && (playerStages[stageId].completeTimes || 0) === 0);
    const unlockedNext = stageId ? (onStageComplete(stageId) || []) : [];

    const modifiedStages = {};
    if (stageId && playerStages[stageId]) {
      modifiedStages[stageId] = playerStages[stageId];
    }
    for (const nid of unlockedNext) {
      modifiedStages[nid] = playerStages[nid];
    }

    // 更新服务器侧 progress 指针（主页"前往作战"按钮据此定位最新关）
    if (stageId) { save.mainStageProgress = stageId; }

    // 结算奖励：关卡经验 → 玩家等级；金币 → 龙门币。
    // 主线的 slProgress 也写进 status.progress，驱动剧情/关卡推进。
    const rw = STAGE_REWARDS[stageId] || {};
    const statusDelta = addPlayerExp(rw.expGain || 0);
    if (rw.goldGain) {
      statusRes.gold += rw.goldGain;
      statusDelta.gold = statusRes.gold;
    }
    if (rw.slProgress) save.progress = Math.max(save.progress || 0, rw.slProgress);
    statusDelta.mainStageProgress = save.mainStageProgress;
    statusDelta.progress = save.progress || 0;

    // D5 首通奖励：仅首次通关（completeTimes 从 0 起算）时下发源石，数量取 stage_table.diamondOnceDrop
    // （主线=1，教学/部署/训练=0）。applyItem 定义在本函数更靠后，battleFinish 内不可引用，故此处内联。
    // D8 单账本：源石入账写 status.crystal（与源石商店/皮肤购买门禁同口径），不再写 inventory['4002'] 死账。
    const firstRewards = [];
    if (isFirstClear) {
      const d = rw.diamondOnceDrop || 0;
      if (d > 0) {
        // RewardModel: { id, type(ItemType 字符串), count, charGet } —— 与客户端 CommonFinishBattleResponse.RewardModel 对齐
        firstRewards.push({ id: '4002', type: 'DIAMOND', charGet: null, count: d });
        statusRes.crystal = (statusRes.crystal || 0) + d;
        statusDelta.crystal = statusRes.crystal;
      }
    }
    persist();

    return G({
      result: 0,
      apFailReturn: 0,
      goldScale: 1.0,
      expScale: 1.0,
      firstRewards: firstRewards,
      unlockStages: unlockedNext,
      alert: [],
      rewards: [],
      unusualRewards: [],
      additionalRewards: [],
      diamondMaterialRewards: [],
      playerDataDelta: {
        modified: {
          dungeon: {
            stages: modifiedStages,
            zones: playerZones
          },
          status: statusDelta
        },
        deleted: {}
      }
    });
  }

  // 剧情完成：客户端把 storyId 记入 status.flags（见 PlayerStatus.flags: Dictionary<string,bool>），
  // StoryData.CheckCommittedOrDontNeedCommit() 读的就是 PlayerDataModel.HasFlag(storyId)。
  // 不记录则每次回主页都重放引导（'3rdbeta/guide/l0/0_home_ui'）。
  if (p === '/story/finishStory') {
    let storyId = '';
    try { storyId = JSON.parse(body || '{}').storyId || ''; } catch (e) {}
    if (storyId) finishedStories[storyId] = true;
    save.progress = (save.progress || 0) + 10;   // 与官方一致：剧情推进 +10
    persist();
    console.log(`[STORY] committed ${storyId} progress=${save.progress}`);
    return G({
      result: 0,
      playerDataDelta: {
        modified: {
          status: { flags: { [storyId]: true }, progress: save.progress }
        },
        deleted: {}
      }
    });
  }

  if (p === '/quest/saveBattleReplay' || p === '/quest/getBattleReplay') {
    // 原型：只回成功，不真正存回放
    return G({ result: 0, battleReplay: '', playerDataDelta: { modified: {}, deleted: {} } });
  }

  // ---- 干员培养 ----
  // /charBuild/upgradeChar: 消耗作战记录 -> 干员 exp/level，并按比例扣龙门币。
  // UpgradeCharResponse 只有 playerDataDelta，客户端从 troop.chars / inventory / status.gold 读结果。
  if (p === '/charBuild/upgradeChar') {
    let charInstId = 0, expMats = [];
    try { const j = JSON.parse(body || '{}'); charInstId = j.charInstId; expMats = j.expMats || []; } catch (e) {}
    const r = upgradeChar(charInstId, expMats);
    if (r.error) {
      return G({ result: 1, playerDataDelta: { modified: {}, deleted: {} } });
    }
    return G({
      result: 0,
      playerDataDelta: {
        modified: {
          troop: { chars: r.charsDelta },
          inventory: r.invDelta,
          status: { gold: r.gold }
        },
        deleted: {}
      }
    });
  }

  // 精英化：改 evolvePhase（暂只回结果，避免客户端状态不一致）
  if (p === '/charBuild/evolveChar') {
    let charInstId = 0, destEvolvePhase = 0;
    try { const j = JSON.parse(body || '{}'); charInstId = j.charInstId; destEvolvePhase = j.destEvolvePhase; } catch (e) {}
    const ch = troopChars[String(charInstId)];
    if (!ch) return G({ result: 1, playerDataDelta: { modified: {}, deleted: {} } });
    ch.evolvePhase = destEvolvePhase;
    ch.level = 1;
    ch.exp = 0;
    persist();
    console.log(`[CHAR] instId=${charInstId} evolvePhase -> ${destEvolvePhase}`);
    return G({
      result: 0,
      playerDataDelta: {
        modified: { troop: { chars: { [String(charInstId)]: { evolvePhase: destEvolvePhase, level: 1, exp: 0 } } } },
        deleted: {}
      }
    });
  }

  // 更换干员皮肤（客户端 serviceCode: charBuild/changeCharSkin 无前导斜杠，服务端按带斜杠口径匹配）
  // ChangeCharSkinRequest{int charInstId, string skinId} -> 写 ch.skin；非法参数回 result=1
  if (p === '/charBuild/changeCharSkin') {
    let charInstId = 0, skinId = '';
    try { const j = JSON.parse(body || '{}'); charInstId = j.charInstId; skinId = j.skinId || ''; } catch (e) {}
    const ch = troopChars[String(charInstId)];
    if (!ch || !skinId) {
      console.log(`[SKIN] changeCharSkin 参数非法 instId=${charInstId} skinId=${skinId}`);
      return G({ result: 1, playerDataDelta: { modified: {}, deleted: {} } });
    }
    ch.skin = skinId;
    persist();
    console.log(`[SKIN] instId=${charInstId} ${ch.charId} skin=${skinId}`);
    return G({
      result: 0,
      playerDataDelta: {
        modified: { troop: { chars: { [String(charInstId)]: { skin: skinId } } } },
        deleted: {}
      }
    });
  }

  // 技能/潜能/皮肤等：只回成功，客户端本地状态足够
  if (p.startsWith('/charBuild/')) {
    return G({ result: 0, playerDataDelta: { modified: {}, deleted: {} } });
  }

  // 编队保存：把 slots 写进存档，重登后编队不丢
  if (p === '/quest/squadFormation') {
    let squadId = '0', slots = null;
    try { const j = JSON.parse(body || '{}'); squadId = String(j.squadId ?? '0'); slots = j.slots; } catch (e) {}
    if (slots) {
      if (!save.squads[squadId]) save.squads[squadId] = { squadId: Number(squadId), name: `第${Number(squadId) + 1}编队`, slots: [] };
      save.squads[squadId].slots = slots;
      persist();
      console.log(`[SQUAD] ${squadId} slots saved (${slots.filter(Boolean).length} members)`);
    }
    return G({ result: 0, playerDataDelta: { modified: { troop: { squads: { [squadId]: save.squads[squadId] } } }, deleted: {} } });
  }

  if (p === '/quest/changeSquadName') {
    let squadId = '0', name = '';
    try { const j = JSON.parse(body || '{}'); squadId = String(j.squadId ?? '0'); name = j.name || ''; } catch (e) {}
    if (save.squads[squadId] && name) save.squads[squadId].name = name;
    persist();
    return G({ result: 0, playerDataDelta: { modified: { troop: { squads: { [squadId]: save.squads[squadId] } } }, deleted: {} } });
  }

  // 更换助理干员
  if (p === '/user/changeSecretary') {
    let charInstId = 0, skinId = '';
    try { const j = JSON.parse(body || '{}'); charInstId = j.charInstId; skinId = j.skinId || ''; } catch (e) {}
    const ch = troopChars[String(charInstId)];
    if (ch) {
      save.secretary = ch.charId;
      // 没传皮肤则用该角色默认皮肤，避免 secretarySkinId 为空导致立绘不加载
      save.secretarySkinId = skinId || (ch.charId + '#1');
      if (skinId) ch.skin = skinId;
      persist();
      console.log(`[SECRETARY] ${save.secretary} skin=${save.secretarySkinId}`);
    }
    return G({
      result: 0,
      playerDataDelta: {
        // 更换助理后，secretarySkinId 也要跟着更新（主页立绘据此加载）
        modified: { status: { secretary: save.secretary, secretarySkinId: save.secretarySkinId } },
        deleted: {}
      }
    });
  }

  // ---- 签到 ----
  // 客户端 CheckInResponse.ItemModel[] signInRewards + subscriptionRewards + playerDataDelta
  // ItemModel: { type: ItemType 字符串名, id: itemId, charGet: GachaResult|null, count }
  // 物品入账：写 inventory + 相应 status 字段（gold/diamondShard/gachaTicket 等）
  const CHECKIN_TABLE = JSON.parse(fs.readFileSync('data/checkin_table.json', 'utf-8'));

  const applyItem = (id, type, count, invDelta, statusDelta) => {
    // ItemType -> 入账位置
    switch (type) {
      case 'GOLD':       statusRes.gold += count; statusDelta.gold = statusRes.gold; break;
      case 'DIAMOND':    /* 4002 源石：D8 单账本入 status.crystal（与消费门禁同口径） */ statusRes.crystal = (statusRes.crystal||0) + count; statusDelta.crystal = statusRes.crystal; break;
      case 'DIAMOND_SHD':statusRes.diamondShard += count; statusDelta.diamondShard = statusRes.diamondShard; break;
      case 'HGG_SHD':    statusRes.hggShard += count; statusDelta.hggShard = statusRes.hggShard; break;
      case 'LGG_SHD':    statusRes.lggShard += count; statusDelta.lggShard = statusRes.lggShard; break;
      case 'TKT_RECRUIT':statusRes.recruitLicense += count; statusDelta.recruitLicense = statusRes.recruitLicense; break;
      case 'TKT_GACHA':  statusRes.gachaTicket += count; statusDelta.gachaTicket = statusRes.gachaTicket; break;
      case 'TKT_GACHA_10': statusRes.tenGachaTicket += count; statusDelta.tenGachaTicket = statusRes.tenGachaTicket; break;
      case 'TKT_INST_FIN': statusRes.instantFinishTicket += count; statusDelta.instantFinishTicket = statusRes.instantFinishTicket; break;
      case 'TKT_TRY':    statusRes.practiceTicket += count; statusDelta.practiceTicket = statusRes.practiceTicket; break;
      case 'SOCIAL_PT':  statusRes.socialPoint += count; statusDelta.socialPoint = statusRes.socialPoint; break;
      case 'AP_GAMEPLAY': statusRes.ap += count; statusDelta.ap = statusRes.ap; break;
      default:           inventory[id] = (inventory[id]||0) + count; invDelta[id] = inventory[id]; break;
    }
  };

  if (p === '/user/checkIn') {
    const group = CHECKIN_TABLE.groups[checkInState.checkInGroupId];
    const idx = checkInState.checkInRewardIndex;
    const rewards = [];
    const invDelta = {};
    const statusDelta = {};
    let result = 0;
    if (group && checkInState.canCheckIn && idx < group.items.length) {
      const it = group.items[idx];
      rewards.push({ type: it.itemType, id: it.itemId, charGet: null, count: it.count });
      applyItem(it.itemId, it.itemType, it.count, invDelta, statusDelta);
      checkInState.checkInHistory.push(true);
      checkInState.checkInRewardIndex = idx + 1;
      checkInState.canCheckIn = false;   // 一天只能签一次（原型不跨天）
    } else {
      result = 1;
    }
    return G({
      result,
      signInRewards: rewards,
      subscriptionRewards: [],
      playerDataDelta: {
        modified: {
          checkIn: { ...checkInState, checkInHistory: [...checkInState.checkInHistory] },
          inventory: invDelta,
          status: statusDelta
        },
        deleted: {}
      }
    });
  }

  // ---- 调试作弊 ----
  // 客户端 UIDebugPanel 调试面板 cheat 命令（CheatRequest{cmd} -> CheatResponse 空类，只回 result）
  // 命令集来自 stringliteral.json 全量提取（11 条）：addGold / getExpItem.{id} / getChar.{charId}.{lv}.{phase}
  //   / addRecruitLicense / updateCheckIn / BattleLogic.unlockAllStage / addAp / gainItem
  //   / getAllFurniture / disableGuideAvg / getAllChar；改动写 save 后 persist() 落盘，客户端下次 syncData 全量下发。
  if (p === '/admin/cheat') {
    let cmd = '';
    try { const j = JSON.parse(body || '{}'); cmd = j.cmd || ''; } catch (e) {}
    let result = 0;
    try {
      if (cmd === 'addGold') {
        statusRes.gold += 50000;
      } else if (cmd.startsWith('getExpItem.')) {
        const itemId = cmd.split('.')[1];
        if (!itemId) { result = 1; } else if (itemId === '4002') { statusRes.crystal = (statusRes.crystal || 0) + 10; } else { inventory[itemId] = (inventory[itemId] || 0) + 10; }
      } else if (cmd.startsWith('getChar.')) {
        const parts = cmd.split('.');
        const charId = parts[1];
        const wantLv = parseInt(parts[2] || '1', 10) || 1;
        const phase = Math.min(2, Math.max(0, parseInt(parts[3] || '0', 10) || 0));
        if (!charId || !CHAR_TABLE_STATIC[charId]) { result = 1; } else {
          const r = addCharToTroop(charId);
          const ch = troopChars[String(r.instId)];
          if (ch) {
            const rarity = CHAR_TABLE_STATIC[charId]?.rarity ?? 3;
            const maxLv = CONST.maxLevel[rarity]?.[phase] ?? 50;
            ch.evolvePhase = phase;
            ch.level = Math.min(maxLv, Math.max(1, wantLv));
            ch.exp = 0;
          }
        }
      } else if (cmd === 'addRecruitLicense') {
        statusRes.recruitLicense += 10;
      } else if (cmd === 'updateCheckIn') {
        checkInState.canCheckIn = true;
      } else if (cmd === 'BattleLogic.unlockAllStage') {
        for (const sid of Object.keys(STAGE_INIT.stages)) {
          if (!playerStages[sid]) playerStages[sid] = { ...STAGE_INIT.stages[sid] };
          playerStages[sid].state = 3;
        }
      } else if (cmd === 'addAp') {
        statusRes.ap = 120;
      } else if (cmd === 'gainItem') {
        for (const [iid, it] of Object.entries(ITEM_TABLE.items)) {
          if (!/^\d+$/.test(iid)) continue;
          if (it.itemType === 'MATERIAL' || it.itemType === 'CARD_EXP') inventory[iid] = (inventory[iid] || 0) + 100;
          else if (it.itemType === 'DIAMOND') statusRes.crystal = (statusRes.crystal || 0) + 1000;  // D8 单账本
        }
      } else if (cmd === 'getAllFurniture') {
        const FURNI_IDS = JSON.parse(fs.readFileSync('data/furni_ids.json', 'utf-8'));
        save.furniture = save.furniture || {};
        for (const f of FURNI_IDS) save.furniture[f.furniId] = 1;
      } else if (cmd === 'disableGuideAvg') {
        const STORY_IDS = fs.readFileSync('data/story_ids.txt', 'utf-8').split('\n').map(s => s.trim()).filter(Boolean);
        for (const sid of STORY_IDS) if (sid.includes('guide')) finishedStories[sid] = true;
      } else if (cmd === 'getAllChar') {
        for (const cid of BETA_CHAR_IDS) {
          if (!cid.startsWith('char_') || !CHAR_TABLE_STATIC[cid]) continue;
          if (cid.includes('_token_') || cid.includes('_trap_')) continue;
          if (parseInt((cid.split('_')[1] || ''), 10) >= 1000) continue;
          addCharToTroop(cid);
        }
      } else {
        result = 1;
      }
    } catch (e) {
      result = 2;
      console.log('[CHEAT] error ' + e.message);
    }
    if (result === 0) persist();
    console.log(`[CHEAT] cmd=${cmd} result=${result}`);
    return G({ result });
  }

  // ---- 寻访 ----
  // 高级寻访（抽卡）：从 character_table 池里按稀有度加权取；newbee 池（NORM_0_1_1）保底 6 星。
  // 响应: TenAdvancedGachaResponse.gachaResultList: GachaResult[] + delta.troop.chars + delta.inventory(信物)
  const CHAR_TABLE = CHAR_TABLE_STATIC;
  const rollRarity = (isNewbee, i) => {
    // 新手池前10发保底：第10发必6星；其余 6★2% 5★8% 4★50% 3★40%
    if (isNewbee && i === 9) return 5;
    const r = Math.random();
    if (r < 0.02) return 5;
    if (r < 0.10) return 4;
    if (r < 0.60) return 3;
    return 2;
  };
  const rollChar = (isNewbee, i) => {
    const rarity = rollRarity(isNewbee, i);
    const pool = GACHA_POOL[rarity] || GACHA_POOL[3];
    return pool[Math.floor(Math.random() * pool.length)];
  };
  const charToResult = (charId) => {
    const { instId, isNew } = addCharToTroop(charId);
    const items = isNew ? [] : [{ id: CHAR_TABLE[charId]?.potentialItemId || `p_${charId}`, count: 1, type: 'MATERIAL' }];
    // 重复卡转信物入 inventory
    for (const it of items) {
      inventory[it.id] = (inventory[it.id] || 0) + it.count;
    }
    return { charInstId: instId, charId, isNew, itemGet: items };
  };

  if (p === '/gacha/tenAdvancedGacha' || p === '/gacha/advancedGacha') {
    let poolId = '', useTkt = 0;
    try { const j = JSON.parse(body || '{}'); poolId = j.poolId || ''; useTkt = j.useTkt; } catch (e) {}
    const isNewbee = poolId.startsWith('NORM');
    const n = p === '/gacha/tenAdvancedGacha' ? 10 : 1;
    // 扣券
    if (useTkt) {
      if (n === 10) { if (statusRes.tenGachaTicket < 1) return G({ result: 1, playerDataDelta: { modified: {}, deleted: {} } }); statusRes.tenGachaTicket--; }
      else { if (statusRes.gachaTicket < 1) return G({ result: 1, playerDataDelta: { modified: {}, deleted: {} } }); statusRes.gachaTicket--; }
    } else {
      const cost = 600 * n;  // advancedGachaCrystalCost = 600
      if (statusRes.diamondShard < cost) return G({ result: 1, playerDataDelta: { modified: {}, deleted: {} } });
      statusRes.diamondShard -= cost;
    }
    const results = [];
    for (let i = 0; i < n; i++) results.push(charToResult(rollChar(isNewbee, i)));
    const invDelta = {};
    for (const r of results) for (const it of r.itemGet) invDelta[it.id] = inventory[it.id];
    const charsDelta = {};
    for (const r of results) if (r.isNew) charsDelta[String(r.charInstId)] = troopChars[String(r.charInstId)];
    return G({
      result: 0,
      charGet: n === 1 ? results[0] : undefined,
      gachaResultList: n === 10 ? results : undefined,
      playerDataDelta: {
        modified: {
          status: { gachaTicket: statusRes.gachaTicket, tenGachaTicket: statusRes.tenGachaTicket, diamondShard: statusRes.diamondShard },
          troop: { chars: charsDelta, curCharInstCount: Object.keys(troopChars).length },
          inventory: invDelta
        },
        deleted: {}
      }
    });
  }

  // 普通寻访（公招）——只做基本闭环：syncNormalGacha 给 4 个空闲槽，normalGacha 启动，finishNormalGacha 出结果
  if (p === '/gacha/syncNormalGacha') {
    const slots = {};
    for (let i = 0; i < 4; i++) {
      slots[String(i)] = { tagId: 0, pick: false, state: 0, canBuy: true, tags: [], selectTags: [], startTs: 0, maxFinishTs: 0, realFinishTs: 0, durationInSec: 0 };
    }
    return G({
      result: 0,
      playerDataDelta: { modified: { recruit: { normal: { slots } } }, deleted: {} }
    });
  }
  if (p === '/gacha/normalGacha') {
    // 启动招聘：把槽标 BUSY；finishNormalGacha 再发角色
    let slotId = 0, duration = 3600, tagList = [];
    try { const j = JSON.parse(body || '{}'); slotId = j.slotId; duration = j.duration; tagList = j.tagList || []; } catch (e) {}
    const slot = { tagId: 0, pick: false, state: 2, canBuy: false, tags: tagList, selectTags: tagList.map(t => ({ tagId: t, pick: true })), startTs: FIXED_BETA_EPOCH, maxFinishTs: FIXED_BETA_EPOCH + duration, realFinishTs: FIXED_BETA_EPOCH + duration, durationInSec: duration };
    return G({
      result: 0,
      playerDataDelta: { modified: { recruit: { normal: { slots: { [String(slotId)]: slot } } } }, deleted: {} }
    });
  }
  if (p === '/gacha/finishNormalGacha') {
    // 简化：随机 3~4 星干员
    const rarity = Math.random() < 0.8 ? 3 : 4;
    const pool = GACHA_POOL[rarity] || GACHA_POOL[3];
    const charId = pool[Math.floor(Math.random() * pool.length)];
    const res = charToResult(charId);
    const invDelta = {};
    for (const it of res.itemGet) invDelta[it.id] = inventory[it.id];
    const charsDelta = res.isNew ? { [String(res.charInstId)]: troopChars[String(res.charInstId)] } : {};
    return G({
      result: 0,
      charGet: res,
      playerDataDelta: {
        modified: {
          troop: { chars: charsDelta, curCharInstCount: Object.keys(troopChars).length },
          inventory: invDelta
        },
        deleted: {}
      }
    });
  }
  if (p === '/gacha/refreshTags' || p === '/gacha/cancelNormalGacha' || p === '/gacha/buyRecruitSlot' || p === '/gacha/boostNormalGacha') {
    return G({ result: 0, playerDataDelta: { modified: {}, deleted: {} } });
  }

  // ---- 采购中心 ----
  // 关键：GetGoodPurchaseStateResponse.result 是 Dictionary<string,int>（goodId -> 已购次数）。
  // 之前落到通用兜底回 result:0（整数），客户端按字典反序列化直接抛异常，整个采购中心打不开。
  if (p === '/shop/getGoodPurchaseState') {
    return G({
      result: { ...save.goodPurchaseState },
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }

  // 低阶凭证商店：goodList: QCObject[] + groups + shopEndTime
  if (p === '/shop/getLowGoodList') {
    return G({
      goodList: LOW_GOODS.map(g => qcObject(g, 'NORMAL')),
      groups: [],
      shopEndTime: FIXED_BETA_EPOCH + 86400 * 30,
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }
  // 高阶凭证商店：多一个 progressGoodList
  if (p === '/shop/getHighGoodList') {
    return G({
      goodList: HIGH_GOODS.map(g => qcObject(g, 'NORMAL')),
      progressGoodList: {},
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }
  // 源石商店
  if (p === '/shop/getExtraGoodList') {
    return G({
      goodList: EXTRA_GOODS.map(g => qcObject(g, 'NORMAL')),
      shopEndTime: FIXED_BETA_EPOCH + 86400 * 30,
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }
  // 信用商店
  if (p === '/shop/getSocialGoodList') {
    return G({
      goodList: SOCIAL_GOODS.map(g => ({
        goodId: g.goodId,
        displayName: itemName(g.itemId),
        item: { id: g.itemId, count: g.count },
        price: g.price,
        availCount: g.avail,
      })),
      charPurchase: {},
      costSocialPoint: statusRes.socialPoint,
      creditGroup: 'creditGroup1',
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }
  // 礼包商店（GP）：weeklyGroup / monthlyGroup / monthlySub / levelGP / oneTimeGP
  if (p === '/shop/getGPGoodList') {
    const gpItem = g => ({
      goodId: g.goodId,
      giftPackageId: g.goodId,
      priority: 0,
      displayName: g.name || itemName(g.itemId),
      currencyUnit: 'CASH',   // ShopHonourPriceType 只有 CASH/DIAMOND；礼包是现金直购
      availCount: g.avail,
      price: g.price,
      originPrice: g.price,
      discount: 0,
      items: [{ id: g.itemId, count: g.count }],
    });
    return G({
      weeklyGroup: { groupId: '', startDateTime: 0, endDateTime: 0, packages: {} },
      monthlyGroup: { groupId: '', startDateTime: 0, endDateTime: 0, packages: {} },
      monthlySub: [],
      levelGP: [],
      oneTimeGP: GP_GOODS.map(gpItem),
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }
  // 时装商店
  if (p === '/shop/getSkinGoodList') {
    // 客户端可能带 charIdList 过滤；空列表 = 全部上架
    let charIdList = [];
    try { charIdList = JSON.parse(body || '{}').charIdList || []; } catch (e) {}
    const list = charIdList.length
      ? SKIN_GOODS.filter(s => charIdList.includes(s.charId))
      : SKIN_GOODS;
    return G({
      goodList: list.map(s => ({
        goodId: s.goodId,
        slotId: s.slotId,
        skinId: s.skinId,
        originPrice: s.price,
        price: s.price,
        discount: 0,
        skinName: s.skinName,
        currencyUnit: 'DIAMOND',
        // 时间用内测期附近的真实区间；给 -1 客户端的时间校验会失败
        startDateTime: FIXED_BETA_EPOCH - 86400 * 30,
        endDateTime: FIXED_BETA_EPOCH + 86400 * 365,
      })),
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }
  // 家具商店：字段名是 goods（不是 goodList）。
  // 家具商品表在客户端是二进制 building_data.ab，仓库里没有可靠清单；
  // 这里返回空列表（字段名正确），保证家具页能打开不报错，而不是崩在反序列化上。
  if (p === '/shop/getFurniGoodList') {
    return G({ goods: [], playerDataDelta: { modified: {}, deleted: {} } });
  }
  // 现金商店（礼包直购）
  if (p === '/shop/getCashGoodList') {
    return G({ goodList: [], playerDataDelta: { modified: {}, deleted: {} } });
  }
  if (p === '/shop/getCashGoodPurchaseResult') {
    return G({ result: {}, playerDataDelta: { modified: {}, deleted: {} } });
  }

  // 时装购买：goodId 形如 SS_<skinId>，扣至纯源石，写 skin.characterSkins + skinTs
  if (p === '/shop/buySkinGood') {
    let goodId = '';
    try { goodId = JSON.parse(body || '{}').goodId || ''; } catch (e) {}
    const skinId = goodId.replace(/^SS_/, '');
    const good = SKIN_GOODS.find(s => s.goodId === goodId);
    if (!good) return G({ result: 1, playerDataDelta: { modified: {}, deleted: {} } });
    if ((statusRes.crystal || 0) < good.price) {
      return G({ result: 1, playerDataDelta: { modified: {}, deleted: {} } });
    }
    statusRes.crystal -= good.price;
    save.skins = save.skins || {};
    save.skins.characterSkins = save.skins.characterSkins || {};
    save.skins.skinTs = save.skins.skinTs || {};
    save.skins.characterSkins[skinId] = 1;
    save.skins.skinTs[skinId] = FIXED_BETA_EPOCH;
    save.goodPurchaseState[goodId] = (save.goodPurchaseState[goodId] || 0) + 1;
    persist();
    console.log(`[SHOP] bought skin ${skinId} for ${good.price} 源石`);
    return G({
      result: 0,
      playerDataDelta: {
        modified: {
          skin: {
            characterSkins: { [skinId]: 1 },
            skinTs: { [skinId]: FIXED_BETA_EPOCH },
          },
          status: { crystal: statusRes.crystal },
        },
        deleted: {}
      }
    });
  }

  // 购买：扣货币 -> 入背包 -> 记录已购次数（写进 goodPurchaseState）
  const findGood = (id) => LOW_GOODS.find(g => g.goodId === id) || HIGH_GOODS.find(g => g.goodId === id)
    || EXTRA_GOODS.find(g => g.goodId === id) || SOCIAL_GOODS.find(g => g.goodId === id)
    || GP_GOODS.find(g => g.goodId === id);
  const CURRENCY_OF = { LS: '4006', HS: '4004', ES: '4002', SO: null, GP: null };
  if (p.startsWith('/shop/buy')) {
    let goodId = '', count = 1;
    try { const j = JSON.parse(body || '{}'); goodId = j.goodId || ''; count = j.count || j.buyCount || 1; } catch (e) {}
    const g = findGood(goodId);
    const invDelta = {};
    const statusDelta = {};
    if (!g) {
      // 未知商品：不报错，返回空结果（避免客户端卡死）
      return G({ result: 1, items: [], playerDataDelta: { modified: {}, deleted: {} } });
    }
    const prefix = goodId.slice(0, 2);
    const totalCost = g.price * count;

    if (prefix === 'SO') {
      if (statusRes.socialPoint < totalCost) return G({ result: 1, items: [], playerDataDelta: { modified: {}, deleted: {} } });
      statusRes.socialPoint -= totalCost;
      statusDelta.socialPoint = statusRes.socialPoint;
    } else if (prefix !== 'GP') {
      const cur = CURRENCY_OF[prefix];
      if (cur === '4002') {
        // 至纯源石统一记在 status.crystal（与发货侧同一口径）
        if ((statusRes.crystal || 0) < totalCost) return G({ result: 1, items: [], playerDataDelta: { modified: {}, deleted: {} } });
        statusRes.crystal -= totalCost;
        statusDelta.crystal = statusRes.crystal;
      } else if (cur) {
        if ((inventory[cur] || 0) < totalCost) return G({ result: 1, items: [], playerDataDelta: { modified: {}, deleted: {} } });
        inventory[cur] = (inventory[cur] || 0) - totalCost;
        invDelta[cur] = inventory[cur];
      }
    }

    // 发货
    const gained = g.count * count;
    if (g.itemId === '4001') {
      statusRes.gold += gained; statusDelta.gold = statusRes.gold;
    } else if (g.itemId === '4003') {
      statusRes.diamondShard += gained; statusDelta.diamondShard = statusRes.diamondShard;
    } else if (g.itemId === '4002') {
      statusRes.crystal = (statusRes.crystal || 0) + gained; statusDelta.crystal = statusRes.crystal;
    } else {
      inventory[g.itemId] = (inventory[g.itemId] || 0) + gained;
      invDelta[g.itemId] = inventory[g.itemId];
    }
    save.goodPurchaseState[goodId] = (save.goodPurchaseState[goodId] || 0) + count;
    persist();

    return G({
      result: 0,
      items: [{ id: g.itemId, count: gained, type: 'MATERIAL' }],
      playerDataDelta: {
        modified: { inventory: invDelta, status: statusDelta },
        deleted: {}
      }
    });
  }
  if (p.startsWith('/shop/')) {
    // 其余商店接口（getGoodPurchaseState 之外的 get*/decompose 等）：空 delta 兜底
    return G({ result: 0, playerDataDelta: { modified: {}, deleted: {} } });
  }

  // ---- 基建 ----
  // building/sync 是基建页初始化的主接口，返回全量 building 子树。
  if (p === '/building/sync') {
    return G({
      result: 0,
      playerDataDelta: {
        modified: { building: buildBuildingData() },
        deleted: {}
      }
    });
  }
  // 基建房间/干员操作：统一把最新 building 子树回给客户端，保证 UI 状态一致
  if (p.startsWith('/building/')) {
    return G({
      result: 0,
      alert: [],
      playerDataDelta: {
        modified: { building: buildBuildingData() },
        deleted: {}
      }
    });
  }

  // ---- 干员图鉴 / 其它 ----
  // 邮件、任务等页面初始化：返回空列表结构，避免客户端拿 null 崩溃
  if (p === '/mail/listMailBox') {
    return G({ result: 0, mailList: [], playerDataDelta: { modified: {}, deleted: {} } });
  }
  if (p === '/mail/getMetaInfoList') {
    return G({ result: [], playerDataDelta: { modified: {}, deleted: {} } });
  }
  if (p.startsWith('/mail/')) {
    return G({ result: 0, items: [], playerDataDelta: { modified: {}, deleted: {} } });
  }
  if (p.startsWith('/mission/')) {
    return G({ result: 0, playerDataDelta: { modified: {}, deleted: {} } });
  }
  if (p.startsWith('/social/')) {
    return G({ result: 0, friends: [], friendAlias: [], requestList: [], players: [], assistFriendCharList: [], resultIdList: [], playerDataDelta: { modified: {}, deleted: {} } });
  }
  if (p.startsWith('/activity/')) {
    return G({ result: 0, items: [], rewards: [], playerDataDelta: { modified: {}, deleted: {} } });
  }
  if (p.startsWith('/user/')) {
    return G({ result: 0, playerDataDelta: { modified: {}, deleted: {} } });
  }

  // 助战干员列表：单人测试环境把玩家自己的高星干员当助战返回，
  // 否则作战准备页的助战栏会空白。SquadFriendData 结构见 FriendCommonData 子类。
  if (p === '/quest/getFriendAssistCharList') {
    const now = FIXED_BETA_EPOCH;
    const own = Object.values(buildTroopChars())
      .filter(c => c && c.charId)
      .sort((a, b) => (CHAR_TABLE_STATIC[b.charId]?.rarity ?? 0) - (CHAR_TABLE_STATIC[a.charId]?.rarity ?? 0))
      .slice(0, 6)
      .map(c => ({
        nickName: playerNickName, uid: '1000001', serverName: '泰拉', nickNumber: '0001',
        level: statusRes.level, lastOnlineTime: now, recentVisited: false,
        charId: c.charId, charInstId: c.instId, skinId: c.skin,
        level_2: c.level, evolvePhase: c.evolvePhase, potentialRank: c.potentialRank,
        skillIndex: 0, mainSkillLvl: c.mainSkillLvl, profession: CHAR_TABLE_STATIC[c.charId]?.profession || 'PIONEER',
        ownChar: true,
      }));
    return G({
      assistFriendCharList: own,
      friendAliasList: [],
      assistNotFriendCharList: own,
      refreshTimes: 0,
      playerDataDelta: { modified: {}, deleted: {} }
    });
  }

  // 其余业务接口：扁平 result: 0 + 空 delta
  return G({ result: 0, playerDataDelta: { modified: {}, deleted: {} } });
}

// 基建全量数据（响应 building/sync 及所有 building/* 操作）
function buildBuildingData() {
  const nowSec = FIXED_BETA_EPOCH;
  return {
    status: { labor: { buffSpeed: 1, value: 32, maxValue: 32, lastUpdateTime: nowSec, processPoint: 0 } },
    chars: buildBuildingChars(),
    assist: [-1, -1, -1, -1, -1],
    roomSlots: BUILDING_ROOM_SLOTS,
    rooms: buildBuildingRooms(),
    furniture: buildFurniture(),
    diyPresetSolutions: {},
  };
}

// 已拥有的家具（家具店购买后写入 save.furniture）
// building.furniture 的 value 必须与客户端 PlayerBuildingFurnitureInfo{count,inUse} 对齐；
// save.json 里存的是 furniId -> 数量(int)，不能直接当 PlayerBuildingFurnitureInfo 下发，
// 否则 Newtonsoft 反序列化 Dict<string,PlayerBuildingFurnitureInfo> 抛 JsonSerializationException。
function buildFurniture() {
  return Object.fromEntries(Object.keys(save.furniture || {}).map(k => [k, { count: save.furniture[k], inUse: 0 }]));
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
