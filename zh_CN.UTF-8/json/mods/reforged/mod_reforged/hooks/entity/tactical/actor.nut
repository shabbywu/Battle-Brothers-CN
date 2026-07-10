[
  {
    "ID": 1007413210,
    "key": "3aa57b0be58fccbb807c8a7caa2f9e02d8f1fdcf4f00161ba930580afefe67fa",
    "original": " [again|Concept.Wait] ",
    "translation": "[再次|Concept.Wait] ",
    "stage": 1,
    "context": "getroottable().MSU.String.replace(entry.text, \" \", \" [again|Concept.Wait] \")"
  },
  {
    "ID": 1007413211,
    "key": "28c072e05a9917ed2720ae840ae333fa7e807e8c2195676c286e68d1ad54f5b2",
    "original": "<div class = rf_tacticalTooltipWaitContainer>",
    "translation": "",
    "context": "\"<div>\" + \"[img]gfx/ui/icons/initiative.png[/img]\" + text + \"</div>\""
  },
  {
    "ID": 1007413212,
    "key": "b741ea33cf62c97b71e01f22b4e5fecf0761c091b9a25f35b8ddda6b240d0ef5",
    "original": "AI Only",
    "translation": "仅AI",
    "stage": 1,
    "context": "value != \"None\" && value == \"All\" || value == \"Player Only\" && this.isPlayerControlled() || value == \"AI Only\" && !this.isPlayerControlled()"
  },
  {
    "ID": 1007413213,
    "key": "a52ace420f2175d08b1577a1bea5445e36801229c074ef9ed6c55a73401fd9c2",
    "original": "All",
    "translation": "所有人",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.ModSettings.getSetting(\"TacticalTooltip_Values\").getValue() == \"All\""
  },
  {
    "ID": 1007413214,
    "key": "dc937b59892604f5a86ac96936cd7ff09e25f18ae6b758e8014a24c7fa039e91",
    "original": "None",
    "translation": "均不显示",
    "stage": 1,
    "context": "value != \"None\" && value == \"All\" || value == \"Player Only\" && this.isPlayerControlled() || value == \"AI Only\" && !this.isPlayerControlled()"
  },
  {
    "ID": 1007413215,
    "key": "7762b225690ee46b72781e940e121e648c6ca94391e9c8f937305dd0cbbe1aa9",
    "original": "Player Only",
    "translation": "仅玩家",
    "stage": 1,
    "context": "value != \"None\" && value == \"All\" || value == \"Player Only\" && this.isPlayerControlled() || value == \"AI Only\" && !this.isPlayerControlled()"
  },
  {
    "ID": 1007413216,
    "key": "b4527b8b3bbb2ed198101640c06448760a64f7174ecd792a1d954bd9b02c7166",
    "original": "action-points-slim",
    "translation": "",
    "context": "entry.style = \"action-points-slim\""
  },
  {
    "ID": 1007413217,
    "key": "ead6ef03d61ee60c533d6d450c50a1e559a8a37f6b796a4094cd0dac6b744428",
    "original": "ghost",
    "translation": "",
    "context": "flags.has(\"ghost\")"
  },
  {
    "ID": 1007413218,
    "key": "64c393506db87e3ffa5f93fa9577b98540275aac3d9118181e70d50972c4f44f",
    "original": "ghoul",
    "translation": "ghoul",
    "context": "flags.has(\"ghoul\")"
  },
  {
    "ID": 1007413219,
    "key": "cdb59355f3ba293977fc0945fb85f11822d412c45c7520c7121bd2234f6c1f48",
    "original": "player",
    "translation": "",
    "context": "getroottable().isKindOf(this, \"player\")"
  },
  {
    "ID": 1007413220,
    "key": "2ac11a92104c4d7d1403c56587d239f7a46d17192a2f2a9d12fda14dfa806574",
    "original": "skeleton",
    "translation": "",
    "context": "flags.has(\"skeleton\")"
  },
  {
    "ID": 1007413221,
    "key": "04d588cb41b8022d1233924f0fe8280d9e2bb92cdc81658eb102ef9c42fc9452",
    "original": "smoke",
    "translation": "smoke",
    "stage": 1,
    "context": "this.getCurrentProperties().IsImmuneToZoneOfControl || !this.getTile().hasZoneOfControlOtherThan(this.getAlliedFactions()) || this.getTile().Properties.Effect != null && this.getTile().Properties.Effect.Type == \"smoke\""
  },
  {
    "ID": 1007413222,
    "key": "b494b694cb092add1527a8be85e86b341628aeb2cf8e3f599caaf13c3cf4adca",
    "original": "undead",
    "translation": "亡灵",
    "context": "this.getFlags().has(\"undead\")"
  },
  {
    "ID": 1007413223,
    "key": "94c41436f038313595af6897442afcc442ebec2c31803cb8fb88765258a52f85",
    "original": "vampire",
    "translation": "",
    "context": "flags.has(\"vampire\")"
  }
]
