[
  {
    "ID": 1007441616,
    "key": "479c4f18435ce10c7216c207fc082192cfa2d85248bc035a7d275cfda8715d5c",
    "original": " [Fatigue|Concept.Fatigue]",
    "translation": "点[疲劳值|Concept.Fatigue]",
    "stage": 1,
    "context": "\"Characters starting their [turn|Concept.Turn] adjacent to you build \" + getroottable().MSU.Text.colorizeValue(this.m.FatigueAtTurnStart, {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007441617,
    "key": "0f881d7931202c2531473d2b9e43616d1a2ac1d82a297f649a3231536d331747",
    "original": " heals for ",
    "translation": "恢复了",
    "stage": 1,
    "context": "getroottable().Const.UI.getColorizedEntityName(actor) + \" heals for \" + healthAdded + \" points\""
  },
  {
    "ID": 1007441618,
    "key": "d2882f9d3f5e09c39a177a0e6673d29cf027bbc2854c8548bc194d003e1ffe1f",
    "original": " of their maximum [Hitpoints|Concept.Hitpoints] and you heal for double the amount",
    "translation": "的最大[生命值|Concept.Hitpoints]，并为你恢复其两倍数值的生命",
    "context": "\"Characters ending their [turn|Concept.Turn] adjacent to you lose \" + getroottable().MSU.Text.colorizePct(this.m.HitpointsTransferPct, {\n    InvertColor = True\n}) + \" of their maximum [Hitpoints|Concept.Hitpoints] and you heal for double the amount\""
  },
  {
    "ID": 1007441619,
    "key": "bbbc02efdd44df45839e5a02e97fd1b98203867d3a40f2c29d343e049ab0eadf",
    "original": " points",
    "translation": "点生命值",
    "stage": 1,
    "context": "getroottable().Const.UI.getColorizedEntityName(actor) + \" heals for \" + healthAdded + \" points\""
  },
  {
    "ID": 1007441620,
    "key": "a053162fe91fea801ee561cc0f8b4027600f0570dd541c1704b20cc8fef3334e",
    "original": "A deathly cold emanates from this character, sapping the living warmth from those who draw breath nearby.",
    "translation": "该角色周身散发出致命的寒意，抽取周身所有生者的温热气息。",
    "stage": 1,
    "context": "this.m.Description = \"A deathly cold emanates from this character, sapping the living warmth from those who draw breath nearby.\""
  },
  {
    "ID": 1007441621,
    "key": "dbddfe1d01d57aa97278ce47a4cfeb79509035b3bafd377bb3a87dc46ae3b454",
    "original": "Characters ending their [turn|Concept.Turn] adjacent to you lose ",
    "translation": "所有角色接邻你结束[回合|Concept.Turn]时，失去其[生命值|Concept.Hitpoints]上限",
    "stage": 1,
    "context": "\"Characters ending their [turn|Concept.Turn] adjacent to you lose \" + getroottable().MSU.Text.colorizePct(this.m.HitpointsTransferPct, {\n    InvertColor = True\n}) + \" of their maximum [Hitpoints|Concept.Hitpoints] and you heal for double the amount\""
  },
  {
    "ID": 1007441622,
    "key": "ad2fc81aa7ae44bf80bc101f8c324dcfa29ba0d57b4be2827ebb3aee3b6c5d0d",
    "original": "Characters starting their [turn|Concept.Turn] adjacent to you build ",
    "translation": "所有角色接邻你开始[回合|Concept.Turn]时，累积",
    "stage": 1,
    "context": "\"Characters starting their [turn|Concept.Turn] adjacent to you build \" + getroottable().MSU.Text.colorizeValue(this.m.FatigueAtTurnStart, {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007441623,
    "key": "2383743f95c5b0a25942501a00c910a3b69c855d27416742f9c637f7594447af",
    "original": "Frostbound",
    "translation": "寒气环绕",
    "stage": 1,
    "context": "this.m.Name = \"Frostbound\""
  },
  {
    "ID": 1007441624,
    "key": "610d284b1ee7a678e041e13f5aa76e10c892d821cfbf51fed8aed376da219ec5",
    "original": "Frozen to death",
    "translation": "被冻死",
    "stage": 1,
    "context": "this.m.KilledString = \"Frozen to death\""
  }
]
