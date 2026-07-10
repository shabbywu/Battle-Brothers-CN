[
  {
    "ID": 1007440190,
    "key": "479c4f18435ce10c7216c207fc082192cfa2d85248bc035a7d275cfda8715d5c",
    "original": " [Fatigue|Concept.Fatigue]",
    "translation": "点[疲劳值|Concept.Fatigue]",
    "stage": 1,
    "context": "\"Evading these attacks builds \" + getroottable().MSU.Text.colorizeValue(fatigueToDodgeAOO, {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007440191,
    "key": "482f38d704c47436fa717ea005bee53bdf7bad0d73390b275ca645744a98f634",
    "original": " chance to hit with ",
    "translation": "命中率，使用",
    "context": "getroottable().MSU.Text.colorNegative(aoo.getHitchance(_entity) + \"%\") + \" chance to hit with \" + getroottable().Reforged.Mod.Tooltips.parseString(getroottable().Reforged.NestedTooltips.getNestedSkillName(aoo, \"entityId:\" + _a.getID()))"
  },
  {
    "ID": 1007440192,
    "key": "c1dccf4c6fe931e3447947ca1d136c826c75ed5c6b4d955a8b01265334f29fbb",
    "original": " levels",
    "translation": "级才能获得一个特技点数",
    "context": "getroottable().Reforged.Config.VeteranPerksLevelStep + \" levels\""
  },
  {
    "ID": 1007440193,
    "key": "cfc0c0ca1336fc42558100318b4da654970800b25e59ab6c17b1943ec91208d2",
    "original": "% is shared equally among all members of the company.",
    "translation": "%则会平均分给战团中的所有成员。",
    "stage": 1,
    "context": "\"Characters gain experience in battle and if a character has accumulated sufficient experience, he'll [level up|Concept.Level].\n\nExperience is gained upon an enemy's death, no matter what caused the death, as long as your company dealt some damage to that enemy, and is proportional to the fraction of the total damage dealt to that enemy by your company. Of this experience, \" + getroottable().Const.XP.XPForKillerPct * 100 + \"% is shared proportionally between the brothers who did damage. The other \" + 100 - getroottable().Const.XP.XPForKillerPct * 100 + \"% is shared equally among all members of the company.\""
  },
  {
    "ID": 1007440194,
    "key": "5229381939650e8c4f263527c337faa9e8c45dc42efa61377ae0d52d0f481cfd",
    "original": "% is shared proportionally between the brothers who did damage. The other ",
    "translation": "%按伤害份额分给造成伤害的兄弟。其余的",
    "stage": 1,
    "context": "\"Characters gain experience in battle and if a character has accumulated sufficient experience, he'll [level up|Concept.Level].\n\nExperience is gained upon an enemy's death, no matter what caused the death, as long as your company dealt some damage to that enemy, and is proportional to the fraction of the total damage dealt to that enemy by your company. Of this experience, \" + getroottable().Const.XP.XPForKillerPct * 100 + \"% is shared proportionally between the brothers who did damage. The other \" + 100 - getroottable().Const.XP.XPForKillerPct * 100 + \"% is shared equally among all members of the company.\""
  },
  {
    "ID": 1007440195,
    "key": "e31b37e69b315b2ea9c5b5db4f7a64373546e7ff8436c7e23bc06594bab5b2f9",
    "original": "%s with %s",
    "translation": "%s使用%s"
  },
  {
    "ID": 1007440196,
    "key": "863788cdc548b63d1479714e72484752e460a4fa02c5c27e341aa191533e0d9d",
    "original": ". They can still improve their attributes but the attribute gain per level is small.",
    "translation": "。他们仍可获得属性提高，但提高十分有限。",
    "stage": 1,
    "context": "\"A character's level measures [experience|Concept.Experience] in battle. Characters rise in levels as they gain experience and are able to increase their [attributes|Concept.CharacterAttribute] and gain [perks|Concept.Perk] that make them better at the mercenary profession.\n\nBeyond the \" + getroottable().Const.XP.MaxLevelWithPerkpoints + \"th level, characters are veterans and \" + veteranPerksText + \". They can still improve their attributes but the attribute gain per level is small.\""
  },
  {
    "ID": 1007440197,
    "key": "f5796a0abffb50c0f7a286983bee3713136d02c7c6e5418ae6f548875ab2d378",
    "original": "A character's level measures [experience|Concept.Experience] in battle. Characters rise in levels as they gain experience and are able to increase their [attributes|Concept.CharacterAttribute] and gain [perks|Concept.Perk] that make them better at the mercenary profession.\n\nBeyond the ",
    "translation": "一名角色的等级衡量了他的战斗[经验|Concept.Experience]。随着经验提升，角色的等级也会提高，并能提高[属性|Concept.CharacterAttribute]，获得[特技|Concept.Perk]，更好地从事佣兵事业。\n\n在升到",
    "context": "\"A character's level measures [experience|Concept.Experience] in battle. Characters rise in levels as they gain experience and are able to increase their [attributes|Concept.CharacterAttribute] and gain [perks|Concept.Perk] that make them better at the mercenary profession.\n\nBeyond the \" + getroottable().Const.XP.MaxLevelWithPerkpoints + \"th level, characters are veterans and \" + veteranPerksText + \". They can still improve their attributes but the attribute gain per level is small.\""
  },
  {
    "ID": 1007440198,
    "key": "b741ea33cf62c97b71e01f22b4e5fecf0761c091b9a25f35b8ddda6b240d0ef5",
    "original": "AI Only",
    "translation": "仅AI",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.ModSettings.getSetting(\"TacticalTooltip_MovementPreviewHitchances\").getValue() == \"AI Only\""
  },
  {
    "ID": 1007440199,
    "key": "d9cd1483bc84f218d12c05b18591b6ee6fcf7be1ee1327df9100dff0b2f2c6bb",
    "original": "Base: ",
    "translation": "基础值：",
    "stage": 1,
    "context": "\"Base: \" + getroottable().MSU.Text.colorizeValue(baseValue, {\n    AddSign = baseValue &lt; 0\n})"
  },
  {
    "ID": 1007440200,
    "key": "c3672e4640a0be8d5d30d65e1e0aecb47ca894320fef0454b7446371d5f46574",
    "original": "Chances %s and %s:",
    "translation": "%s和%s几率："
  },
  {
    "ID": 1007440201,
    "key": "f8880544ad8a716eb8668ef7bfbaa0e302fb7b1d7e8d4ce8593b4b89560f38f3",
    "original": "Characters gain experience in battle and if a character has accumulated sufficient experience, he'll [level up|Concept.Level].\n\nExperience is gained upon an enemy's death, no matter what caused the death, as long as your company dealt some damage to that enemy, and is proportional to the fraction of the total damage dealt to that enemy by your company. Of this experience, ",
    "translation": "角色能在战斗中获得经验。如果角色积累了足够经验，他的[等级|Concept.Level]就会得到提高。\n\n敌人死亡会产生经验，无论其死因，只要你的战团对其造成过一些伤害, 战团的角色就能获得经验。每名角色从一名敌人死亡中获得的经验和对其造成的伤害占整个战团的份额成正比。这些经验中，",
    "stage": 1,
    "context": "\"Characters gain experience in battle and if a character has accumulated sufficient experience, he'll [level up|Concept.Level].\n\nExperience is gained upon an enemy's death, no matter what caused the death, as long as your company dealt some damage to that enemy, and is proportional to the fraction of the total damage dealt to that enemy by your company. Of this experience, \" + getroottable().Const.XP.XPForKillerPct * 100 + \"% is shared proportionally between the brothers who did damage. The other \" + 100 - getroottable().Const.XP.XPForKillerPct * 100 + \"% is shared equally among all members of the company.\""
  },
  {
    "ID": 1007440202,
    "key": "d46462ccc98d85adb42c5a5c5704c0eda2a06b02351ed36de3cb0f2238ec31fc",
    "original": "Evading these attacks builds ",
    "translation": "躲过这些攻击共积累",
    "stage": 1,
    "context": "\"Evading these attacks builds \" + getroottable().MSU.Text.colorizeValue(fatigueToDodgeAOO, {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007440203,
    "key": "8eab0f09df013b1bd69655991bb824cfa822d383b482905789153d4df8bfda78",
    "original": "Experience",
    "translation": "经验值",
    "stage": 1,
    "context": "text = \"Experience\""
  },
  {
    "ID": 1007440204,
    "key": "44145dbfaad5e629c6e8c2fc9cfacfb9fd6f81b91fcbf6cab6cb752918baa920",
    "original": "Fatigue Recovery: ",
    "translation": "疲劳值恢复：",
    "stage": 1,
    "context": "\"Fatigue Recovery: \" + getroottable().MSU.Text.colorizeValue(c.getFatigueRecoveryRate(), {\n    AddSign = True\n})"
  },
  {
    "ID": 1007440205,
    "key": "127e655922240a877e842049d969ad92a9110b59d8211e46d55faec1a1758abb",
    "original": "Item Weight: ",
    "translation": "物品重量：",
    "stage": 1,
    "context": "\"Item Weight: \" + getroottable().MSU.Text.colorNegative(getroottable().Math.abs(-1 * entity.getItems().getStaminaModifier()))"
  },
  {
    "ID": 1007440206,
    "key": "1709305c9fa966d14f56f0da3c3614bbc10adcf53d72f90341bb96d24afcfca3",
    "original": "Level",
    "translation": "等级",
    "stage": 1,
    "context": "text = \"Level\""
  },
  {
    "ID": 1007440207,
    "key": "708a7f4c0f7066670eec0c6224a654ef8c756ebdf99921d74968450ca5babc29",
    "original": "Modifier: ",
    "translation": "调整值：",
    "stage": 1,
    "context": "\"Modifier: \" + getroottable().MSU.Text.colorizeValue(currentValue - baseValue, {\n    AddSign = True\n})"
  },
  {
    "ID": 1007440208,
    "key": "dc937b59892604f5a86ac96936cd7ff09e25f18ae6b758e8014a24c7fa039e91",
    "original": "None",
    "translation": "均不显示",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.ModSettings.getSetting(\"TacticalTooltip_MovementPreviewHitchances\").getValue() == \"None\""
  },
  {
    "ID": 1007440209,
    "key": "9173c1c2e91992c6f1382e88a1e1904c95418c7694e6e08e3af2794f3152efc4",
    "original": "Opponents with hitchance below ",
    "translation": "命中率低于",
    "context": "\"Opponents with hitchance below \" + getroottable().MSU.Text.colorNegative(collapseThreshold + \"%\")"
  },
  {
    "ID": 1007440210,
    "key": "7762b225690ee46b72781e940e121e648c6ca94391e9c8f937305dd0cbbe1aa9",
    "original": "Player Only",
    "translation": "仅玩家",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.ModSettings.getSetting(\"TacticalTooltip_MovementPreviewHitchances\").getValue() == \"Player Only\""
  },
  {
    "ID": 1007440211,
    "key": "a45ea8c856466dd7550a05404673289ea5e57c6a604b18f7bc64403d8506683f",
    "original": "See also: Morale.",
    "translation": "另见：士气。",
    "context": "getroottable().String.replace(entry.text, \"See also: Morale.\", getroottable().Reforged.Mod.Tooltips.parseString(\"See also: [Morale|Concept.Morale].\"))"
  },
  {
    "ID": 1007440212,
    "key": "202c77b1d1163f88714b142f80e0ff1e79325316abc072028a344cd0a222f024",
    "original": "See also: [Morale|Concept.Morale].",
    "translation": "另见： [士气|Concept.Morale]。",
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"See also: [Morale|Concept.Morale].\")"
  },
  {
    "ID": 1007440213,
    "key": "d26330881f3fe477c422c256f6e31d819c6358ec87cc52cbbb456e83feccfdb6",
    "original": "Will be [attacked on movement|Concept.ZoneOfControl] by:",
    "translation": "移动时会被以下角色[借机攻击|Concept.ZoneOfControl]：",
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Will be [attacked on movement|Concept.ZoneOfControl] by:\")"
  },
  {
    "ID": 1007440214,
    "key": "ea63a565d17b4089e6cd367e5fd1e25661215ff84cf918a5b3ec545d405bb664",
    "original": "Will be attacked on arrival by:",
    "translation": "移动到此会被以下角色攻击："
  },
  {
    "ID": 1007440215,
    "key": "ac0bc6a4a2d5b6a3c17aeff1846c78571266cfbf06e190d883565d28ffb7c48b",
    "original": "[Ignore when attacking|Concept.ReachIgnoreOffensive]: ",
    "translation": "[攻击时无视|Concept.ReachIgnoreOffensive]：",
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"[Ignore when attacking|Concept.ReachIgnoreOffensive]: \")"
  },
  {
    "ID": 1007440216,
    "key": "2eab8c17527ddf2da2b9f43fd44f93817c44eaaecf1ef3d8b7d5e1fec4ba73f9",
    "original": "[Ignore when defending|Concept.ReachIgnoreDefensive]: ",
    "translation": "[防御时无视|Concept.ReachIgnoreDefensive]：",
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"[Ignore when defending|Concept.ReachIgnoreDefensive]: \")"
  },
  {
    "ID": 1007440217,
    "key": "c9046f7a37ad0ea7cee73355984fa5428982f8b37c8f7bcec91f7ac71a7cd104",
    "original": "description",
    "translation": "",
    "context": "entry.id == 2 && entry.type == \"description\""
  },
  {
    "ID": 1007440218,
    "key": "a7285024164f1abab0cf7abd60638183044cd7b959b2db27295f11f7694e89bd",
    "original": "entityId:",
    "translation": "",
    "context": "\"entityId:\" + _a.getID()"
  },
  {
    "ID": 1007440219,
    "key": "285c1b0437ff627a8756021a987e789621e6d7db76979071080eba7059bfc43f",
    "original": "entityId: ",
    "translation": "",
    "context": "\"entityId: \" + entity.getID()"
  },
  {
    "ID": 1007440220,
    "key": "33753333ea39997a0cef442b28525be9097b74e97399acfeed270515af3b1876",
    "original": "gain perk points every %s",
    "translation": "每升%s",
    "context": "this.format(\"gain perk points every %s\", getroottable().Reforged.Config.VeteranPerksLevelStep == 1 ? \"level\" : getroottable().Reforged.Config.VeteranPerksLevelStep + \" levels\")"
  },
  {
    "ID": 1007440221,
    "key": "0081779c287d567d9ca622f4c0cc2ede819b0cc7f286a5f01d8c3c0178191ad6",
    "original": "level",
    "translation": "级仍能",
    "context": "this.format(\"gain perk points every %s\", getroottable().Reforged.Config.VeteranPerksLevelStep == 1 ? \"level\" : getroottable().Reforged.Config.VeteranPerksLevelStep + \" levels\")"
  },
  {
    "ID": 1007440222,
    "key": "81a7001a82d3e75d44cdb8b52f5862491c6dfc1b63628189e7c77c8789d33385",
    "original": "no longer gain perk points",
    "translation": "不会再获得特技点数",
    "context": "local veteranPerksText = getroottable().Reforged.Config.VeteranPerksLevelStep == 0 ? \"no longer gain perk points\" : this.format(\"gain perk points every %s\", getroottable().Reforged.Config.VeteranPerksLevelStep == 1 ? \"level\" : getroottable().Reforged.Config.VeteranPerksLevelStep + \" levels\")"
  },
  {
    "ID": 1007440223,
    "key": "04d588cb41b8022d1233924f0fe8280d9e2bb92cdc81658eb102ef9c42fc9452",
    "original": "smoke",
    "translation": "smoke",
    "stage": 1,
    "context": "_entity.getTile().Properties.Effect == null || _entity.getTile().Properties.Effect.Type != \"smoke\""
  },
  {
    "ID": 1007440224,
    "key": "982d9e3eb996f559e633f4d194def3761d909f5a3b647d1a851fead67c32c9d1",
    "original": "text",
    "translation": "",
    "context": "type = \"text\""
  },
  {
    "ID": 1007440225,
    "key": "49a4753821fc576029739b53671fc2c9fd0f7c54541b2c2591e4d7d564acdfa7",
    "original": "th level, characters are veterans and ",
    "translation": "级之后，角色将成为老兵，",
    "stage": 1,
    "context": "\"A character's level measures [experience|Concept.Experience] in battle. Characters rise in levels as they gain experience and are able to increase their [attributes|Concept.CharacterAttribute] and gain [perks|Concept.Perk] that make them better at the mercenary profession.\n\nBeyond the \" + getroottable().Const.XP.MaxLevelWithPerkpoints + \"th level, characters are veterans and \" + veteranPerksText + \". They can still improve their attributes but the attribute gain per level is small.\""
  },
  {
    "ID": 1007440226,
    "key": "aaf2320646108059a87ab5017a86aee454f5378ed95003dbb2e12f4ca5266e0e",
    "original": "title",
    "translation": "",
    "context": "type = \"title\""
  },
  {
    "ID": 1007440227,
    "key": "0e9b32e4723efbacc360360899ce2b3fdce776390b55297ffa26f693e2c79eba",
    "original": "to be hit",
    "translation": "被命中"
  },
  {
    "ID": 1007440228,
    "key": "53f03225ce09c219775d1e1d67c24cb3587d4da0a07d7198da6f206b4db2cc1c",
    "original": "to hit",
    "translation": "命中"
  },
  {
    "ID": 1007668125,
    "key": "d8fa0a6e02b0562e695d2bd1a6fbd0fe83c15ea437eee6f55c612f2b8ec47f02",
    "original": "Will be attacked on arrival by: ",
    "translation": "移动到此会被以下角色攻击：",
    "context": "getroottable().MSU.Text.colorNegative(\"Will be attacked on arrival by: \")"
  }
]
