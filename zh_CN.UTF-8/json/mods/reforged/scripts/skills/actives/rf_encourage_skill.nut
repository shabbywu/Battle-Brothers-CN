[
  {
    "ID": 1007441232,
    "key": "ae89f1f495d0ad4c9f5101e78fa3f12bcb73d3b6753a83953992ce71972382d4",
    "original": " tiles",
    "translation": "格",
    "stage": 1,
    "context": "\"Has a range of \" + getroottable().MSU.Text.colorPositive(this.getMaxRange()) + \" tiles\""
  },
  {
    "ID": 1007441233,
    "key": "452298f4d91dd30e9cc60162c81822d10e837c81d0823d3003d06ea7dd45491e",
    "original": "Can only be used on characters who are of your faction and whose [morale|Concept.Morale] is lower than yours per tile of distance they are away",
    "translation": "只能对与你同一阵营，且[士气|Concept.Morale]低于你的角色使用。目标离你每远一格，士气就要低你一级",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Can only be used on characters who are of your faction and whose [morale|Concept.Morale] is lower than yours per tile of distance they are away\")"
  },
  {
    "ID": 1007441234,
    "key": "fa6c0b1bffc3a033f00e31ea67c75e70204e54989ae3de19f8e67da7a1931a6b",
    "original": "Can only be used once per [turn|Concept.Turn]",
    "translation": "每[回合|Concept.Turn]限一次",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Can only be used once per [turn|Concept.Turn]\")"
  },
  {
    "ID": 1007441235,
    "key": "81e84209fa6318b0458c87260b80d65cf842e3b0ca09a336ae66eb7144f88f46",
    "original": "Encourage",
    "translation": "激励",
    "stage": 1,
    "context": "this.m.Name = \"Encourage\""
  },
  {
    "ID": 1007441236,
    "key": "66e1e2b51b7fd5a165095c24594605b199c8d1eaae706ad8b74b0778a9757321",
    "original": "Encourage an ally to raise their current [Morale|Concept.Morale]. Cannot be used on [fleeing|Concept.Morale] or [$ $|Skill+stunned_effect] allies.",
    "translation": "激励队友，提升其[士气|Concept.Morale]。不能对[溃逃|Concept.Morale]或[昏迷|Skill+stunned_effect]的友军使用。",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Encourage an ally to raise their current [Morale|Concept.Morale]. Cannot be used on [fleeing|Concept.Morale] or [$ $|Skill+stunned_effect] allies.\")"
  },
  {
    "ID": 1007441237,
    "key": "dd4cbf40d93d0faf3abfad05e54483e09ca8407612635a29bc0ac18642e28da3",
    "original": "Has a range of ",
    "translation": "技能范围为",
    "stage": 1,
    "context": "\"Has a range of \" + getroottable().MSU.Text.colorPositive(this.getMaxRange()) + \" tiles\""
  },
  {
    "ID": 1007441238,
    "key": "b114436143f4c22beddf32b66468c5eb93a075cd6905cf86355bef434df71901",
    "original": "Trigger a positive [Morale Check|Concept.Morale] for the target with a bonus of %s%s of your [Resolve|Concept.Bravery]",
    "translation": "使目标触发一次加值为你[决心|Concept.Bravery]%s%s的正面[士气检定|Concept.Morale]",
    "stage": 1,
    "context": "this.format(\"Trigger a positive [Morale Check|Concept.Morale] for the target with a bonus of %s%s of your [Resolve|Concept.Bravery]\", getroottable().MSU.Text.colorizePct(this.m.EncourageBonusFraction), actualResolveBonus)"
  }
]
