[
  {
    "ID": 1007441682,
    "key": "479c4f18435ce10c7216c207fc082192cfa2d85248bc035a7d275cfda8715d5c",
    "original": " [Fatigue|Concept.Fatigue]",
    "translation": "",
    "context": "\"Build \" + getroottable().MSU.Text.colorizeMultWithText(1.0 + 2 * skillMalus * 0.009999999776482582, {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007441683,
    "key": "425834234537e2495d39d0932bacadb3b96ee23a636e64096490aa003b399385",
    "original": " [Hitpoints|Concept.Hitpoints]",
    "translation": "[生命值|Concept.Hitpoints]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(~skillMalus, {\n    AddSign = True\n}) + \" [Hitpoints|Concept.Hitpoints]\""
  },
  {
    "ID": 1007441684,
    "key": "40b43d02fbe2f60620e58b2b15dca221f83522b153d737eefd495da2e112648f",
    "original": " [Initiative|Concept.Initiative]",
    "translation": "[主动值|Concept.Initiative]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(getroottable().Math.floor(~skillMalus * 1.5), {\n    AddSign = True\n}) + \" [Initiative|Concept.Initiative]\""
  },
  {
    "ID": 1007441685,
    "key": "f82e344536251dc5bcb0811f2446894c1986d0f15cc07baa8332291e1b8db6f0",
    "original": " [Maximum Fatigue|Concept.Fatigue]",
    "translation": "[疲劳值上限|Concept.Fatigue]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(~skillMalus, {\n    AddSign = True\n}) + \" [Maximum Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007441686,
    "key": "451ee5458d9c9b11ad9b6919467ee4e332a8759cfd596edb301d92eb2cb6546c",
    "original": " [Melee Defense|Concept.MeleeDefense]",
    "translation": "[近战防御|Concept.MeleeDefense]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(skillBonus, {\n    AddSign = True\n}) + \" [Melee Defense|Concept.MeleeDefense]\""
  },
  {
    "ID": 1007441687,
    "key": "ff823c3ab8a078a6e983e474c07f0f1b315d450c88d570dd8b2538d783f72de0",
    "original": " [Melee Skill|Concept.MeleeSkill]",
    "translation": "[近战技能|Concept.MeleeSkill]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(skillBonus, {\n    AddSign = True\n}) + \" [Melee Skill|Concept.MeleeSkill]\""
  },
  {
    "ID": 1007441688,
    "key": "eb87384ed62571b50d040294470f3f8ddaab0f874b92fc5e777881d97ef4c286",
    "original": " [Resolve|Concept.Bravery]",
    "translation": "[决心值|Concept.Bravery]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(skillBonus, {\n    AddSign = True\n}) + \" [Resolve|Concept.Bravery]\""
  },
  {
    "ID": 1007441689,
    "key": "152b1870e5053e298465c3ed65044096fe598c360d9129a4077eab55f5123341",
    "original": " damage ignores armor",
    "translation": "伤害穿甲率",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(skillBonus, {\n    AddSign = True\n    AddPercent = True\n}) + \" damage ignores armor\""
  },
  {
    "ID": 1007441690,
    "key": "cabdaa93ac309bf12aaa8a3a55db02fb474a0ae3b7914b161ff7c3328bf07182",
    "original": " days pass with fewer than ",
    "translation": "人，总计",
    "stage": 1,
    "context": "\"The campaign will end if a total of \" + getroottable().MSU.Text.colorNegative(this.m.DaysWithoutRecruitsMax) + \" days pass with fewer than \" + getroottable().MSU.Text.colorNegative(this.m.NumRecruitsRequired) + \" recruits in your company. Currently \" + getroottable().MSU.Text.colorNegative(this.m.DaysWithoutRecruits) + \" such days have passed\""
  },
  {
    "ID": 1007441691,
    "key": "829f2f51abee05c2ab008f2f76f3baee7b5d1bff70f4bb7808b51cbcfe531549",
    "original": " recruits in your company. Currently ",
    "translation": "天后战役就会自动结束。已经过了",
    "stage": 1,
    "context": "\"The campaign will end if a total of \" + getroottable().MSU.Text.colorNegative(this.m.DaysWithoutRecruitsMax) + \" days pass with fewer than \" + getroottable().MSU.Text.colorNegative(this.m.NumRecruitsRequired) + \" recruits in your company. Currently \" + getroottable().MSU.Text.colorNegative(this.m.DaysWithoutRecruits) + \" such days have passed\""
  },
  {
    "ID": 1007441692,
    "key": "8e42abddb3afcfff58c905dfd9b7388de57fec536d8eb7013c35df6d92946198",
    "original": " such days have passed",
    "translation": "天。",
    "stage": 1,
    "context": "\"The campaign will end if a total of \" + getroottable().MSU.Text.colorNegative(this.m.DaysWithoutRecruitsMax) + \" days pass with fewer than \" + getroottable().MSU.Text.colorNegative(this.m.NumRecruitsRequired) + \" recruits in your company. Currently \" + getroottable().MSU.Text.colorNegative(this.m.DaysWithoutRecruits) + \" such days have passed\""
  },
  {
    "ID": 1007441693,
    "key": "968a9de9294fb828ff4a11543ef6c638abe36df817ab5b8b12bcfc621f409073",
    "original": "Build ",
    "translation": "[疲劳值|Concept.Fatigue]积累",
    "stage": 1,
    "context": "\"Build \" + getroottable().MSU.Text.colorizeMultWithText(1.0 + 2 * skillMalus * 0.009999999776482582, {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007441694,
    "key": "64923822756da12da47f641d4795963146b5414fae75df3a317e7a434db63678",
    "original": "Requires a Sword to be equipped",
    "translation": "需要装备剑",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorRed(\"Requires a Sword to be equipped\")"
  },
  {
    "ID": 1007441695,
    "key": "140f5005ecd48557412e2980165d53dd76dfea411633493612f04bf05873b6fe",
    "original": "Swordmaster's Finesse",
    "translation": "剑师技艺",
    "stage": 1,
    "context": "this.m.Name = \"Swordmaster's Finesse\""
  },
  {
    "ID": 1007441696,
    "key": "e08c923e7f89884543086c288ad260133ea6c6665992a8827da0e027b3f99d98",
    "original": "The campaign will end if a total of ",
    "translation": "若队伍中的新兵不足",
    "stage": 1,
    "context": "\"The campaign will end if a total of \" + getroottable().MSU.Text.colorNegative(this.m.DaysWithoutRecruitsMax) + \" days pass with fewer than \" + getroottable().MSU.Text.colorNegative(this.m.NumRecruitsRequired) + \" recruits in your company. Currently \" + getroottable().MSU.Text.colorNegative(this.m.DaysWithoutRecruits) + \" such days have passed\""
  },
  {
    "ID": 1007441697,
    "key": "a0abf7cb478373f5d14846e7e2d9b8fde64513a50e7b5a6615231b1cfd1a631b",
    "original": "This character is a renowned swordmaster - literally the stuff of legends. This effect becomes stronger with each level. However, as time passes by, old age may cause some attributes to suffer.",
    "translation": "这家伙是一位远近闻名的剑术大师 - 所谓的传奇人物。该效果会随着角色升级而变强。然而，随着时间流逝，衰老会夺走一部分属性值。",
    "stage": 1,
    "context": "this.m.Description = \"This character is a renowned swordmaster - literally the stuff of legends. This effect becomes stronger with each level. However, as time passes by, old age may cause some attributes to suffer.\""
  }
]
