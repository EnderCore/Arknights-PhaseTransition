// 生成满配置测试存档 save.json
// 用法: node make_test_save.mjs
//
// 产出：
//   - 全部剧情（含开场动画与所有引导）标记为已读 -> 登录不再播开场/引导
//   - 全部关卡 COMPLETE(3) -> 主线/资源关/训练关全解锁
//   - 资源拉满：合成玉/至纯源石/龙门币/各类凭证/寻访券/招募券/加急券
//   - 背包：所有有图标 id 的材料塞满
//   - 玩家等级 120（满级），理智上限并在存档里给满
//   - 全部 v0.6.66 内测干员入队，等级/精英化/技能/潜能拉满
//   - 4 个编队各配 12 人

import fs from 'node:fs';

const CHAR_TABLE = JSON.parse(fs.readFileSync('data/character_table.json', 'utf-8'));
const CONST = JSON.parse(fs.readFileSync('data/gamedata_const.json', 'utf-8'));
const STAGE_INIT = JSON.parse(fs.readFileSync('data/stage_init.json', 'utf-8'));
const BETA_CHAR_IDS = fs.readFileSync('data/beta_char_ids.txt', 'utf-8')
  .split('\n').map(s => s.trim()).filter(Boolean);

const SKIN = id => id + '#1';
const FIXED_BETA_EPOCH = 1554091200;

// 剧情 id：从客户端 3rdbeta 剧情包里提取（含 3rdbeta/guide/l0/0_home_ui 开场引导）
const STORY_IDS = fs.readFileSync('data/story_ids.txt', 'utf-8')
  .split('\n').map(s => s.trim()).filter(Boolean);

// ---- 关卡：全部完成 ----
const stages = {};
for (const [sid, rec] of Object.entries(STAGE_INIT.stages)) {
  stages[sid] = { ...rec, state: 3, completeTimes: 1, hasBattleReplay: true, noCostCnt: 0 };
}
const zones = {};
for (const [zid, rec] of Object.entries(STAGE_INIT.zones)) {
  zones[zid] = { completeTimes: 1 };
}

// ---- 干员：内测白名单全收集，拉满 ----
const chars = {};
let instId = 1;
const charIdToInst = new Map();

// 只收编客户端有资源的角色，且排除敌方/召唤物（trap_/token 等）
const roster = BETA_CHAR_IDS
  .filter(id => id.startsWith('char_') && CHAR_TABLE[id])
  .filter(id => !id.includes('_token_') && !id.includes('_trap_'))
  .filter(id => !CHAR_TABLE[id].isNotObtainable || CHAR_TABLE[id].itemObtainApproach === '招募寻访' || true)
  // 排除纯敌人 id（形如 char_1500_skulsr 这类超出常规编号的）
  .filter(id => {
    const n = parseInt(id.split('_')[1], 10);
    return n < 1000;
  });

for (const cid of roster) {
  const c = CHAR_TABLE[cid];
  const rarity = c.rarity ?? 3;
  const maxPhase = Math.max(0, (c.phases?.length ?? 1) - 1);
  const maxLvl = CONST.maxLevel[rarity]?.[maxPhase] ?? 50;

  // 技能：按 skillId 建 PlayerCharSkill（unlock/skillId/specializeLevel）
  const skills = (c.skills || []).map(sk => ({
    skillId: sk.skillId,
    unlock: 1,
    state: 0,
    specializeLevel: 3,
    completeUpgradeTime: -1,
  }));

  chars[String(instId)] = {
    instId,
    charId: cid,
    favorPoint: 200,
    potentialRank: Math.max(0, (c.maxPotentialLevel ?? 5) - 1),
    mainSkillLvl: 7,
    skin: SKIN(cid),
    level: maxLvl,
    exp: 0,
    evolvePhase: maxPhase,
    defaultSkillIndex: skills.length ? 0 : -1,
    gainTime: FIXED_BETA_EPOCH,
    skills,
  };
  charIdToInst.set(cid, instId);
  instId++;
}

// ---- 编队：4 队各 12 人，优先高星 ----
const byRarityDesc = roster.slice().sort((a, b) =>
  (CHAR_TABLE[b].rarity ?? 0) - (CHAR_TABLE[a].rarity ?? 0));
const squads = {};
for (let s = 0; s < 4; s++) {
  const slots = [];
  for (let i = 0; i < 12; i++) {
    const cid = byRarityDesc[(s * 12 + i) % byRarityDesc.length];
    const id = charIdToInst.get(cid);
    slots.push(id ? { charInstId: id, skillIndex: CHAR_TABLE[cid].skills?.length ? 0 : -1 } : null);
  }
  squads[String(s)] = { squadId: s, name: ['第一编队','第二编队','第三编队','第四编队'][s], slots };
}

// ---- 背包：材料/凭证塞满 ----
const ITEM_TABLE = JSON.parse(fs.readFileSync('data/item_table.json', 'utf-8'));
const inventory = {};
inventory['0'] = 0;
for (const [iid, it] of Object.entries(ITEM_TABLE.items)) {
  if (!/^\d+$/.test(iid)) continue;
  const t = it.itemType;
  if (t === 'MATERIAL' || t === 'CARD_EXP') inventory[iid] = 9999;
  else if (t === 'DIAMOND') inventory[iid] = 99999;            // 至纯源石
}
// 显式保证关键货币存在
inventory['4002'] = 99999;   // 至纯源石
inventory['4001'] = 9999999; // 龙门币（同时写 status.gold）

const status = {
  gold: 9999999,          // 龙门币
  crystal: 99999,         // 至纯源石（status 口径）
  diamondShard: 999999,   // 合成玉
  recruitLicense: 999,    // 招聘许可
  gachaTicket: 999,       // 寻访凭证
  tenGachaTicket: 999,    // 十连寻访凭证
  instantFinishTicket: 999, // 加急许可
  hggShard: 9999,         // 高级凭证
  lggShard: 9999,         // 资质凭证
  socialPoint: 30000,     // 信用
  practiceTicket: CONST.maxPracticeTicket ?? 30, // 演习券
  ap: 999,                // 理智
  level: CONST.maxPlayerLevel ?? 120,
  exp: 0,
};

// ---- 剧情 / 引导全标记已读 ----
const stories = {};
for (const sid of STORY_IDS) stories[sid] = true;

const save = {
  nickName: '测试博士',
  stages,
  zones,
  stories,
  mainStageProgress: Object.keys(stages).sort().pop(),
  progress: 9999,
  inventory,
  status,
  checkIn: { canCheckIn: false, checkInGroupId: 'signin31', checkInRewardIndex: 30, checkInHistory: Array(30).fill(true) },
  chars,
  squads,
  goodPurchaseState: {},
  skins: { characterSkins: {}, skinTs: {} },
  furniture: {},
  nextCharInstId: instId,
  secretary: 'char_002_amiya',
  secretarySkinId: 'char_002_amiya#1',
};

fs.writeFileSync('save.json', JSON.stringify(save));
console.log('save.json written');
console.log('  chars:', Object.keys(chars).length);
console.log('  stages:', Object.keys(stages).length, '(all COMPLETE)');
console.log('  stories:', Object.keys(stories).length, '(incl. opening)');
console.log('  inventory entries:', Object.keys(inventory).length);
console.log('  player level:', status.level);
console.log('  squads:', Object.entries(squads).map(([k, v]) => `${k}:${v.slots.filter(Boolean).length}`).join(' '));
