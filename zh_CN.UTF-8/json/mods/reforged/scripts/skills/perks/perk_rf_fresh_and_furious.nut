[
  {
    "ID": 1007441883,
    "key": "0699c8a02667c3450e4663e01a4bff0db856d11a95126dc1aa76b95819b5fe46",
    "original": " (Disabled)",
    "translation": "（失效了）",
    "stage": 1,
    "context": "this.m.Name + \" (Disabled)\""
  },
  {
    "ID": 1007441884,
    "key": "4e52327752ec0a6e09276f7dd1089cf91286d7a646affd148171f472a4e18063",
    "original": " of its [Action Point|Concept.ActionPoints] cost",
    "translation": "",
    "context": "\"The next skill use will refund \" + getroottable().MSU.Text.colorizePct(this.m.ActionPointsRecoveredPct) + \" of its [Action Point|Concept.ActionPoints] cost\""
  },
  {
    "ID": 1007441885,
    "key": "9f3821386979f077e6af4531ea02ac2eaf43dee9ed8fc9141409c3a7ff4c624f",
    "original": " or more [Fatigue|Concept.Fatigue] built",
    "translation": "",
    "context": "\"Becomes disabled when starting a turn with \" + getroottable().MSU.Text.colorizePct(this.m.FatigueThreshold, {\n    InvertColor = True\n}) + \" or more [Fatigue|Concept.Fatigue] built\""
  },
  {
    "ID": 1007441886,
    "key": "4538f49e47d1204842c22f205689af65db6862dc3c09a01cc95ad53afa078532",
    "original": "Becomes disabled when starting a turn with ",
    "translation": "积累的[疲劳值|Concept.Fatigue]不低于",
    "stage": 1,
    "context": "\"Becomes disabled when starting a turn with \" + getroottable().MSU.Text.colorizePct(this.m.FatigueThreshold, {\n    InvertColor = True\n}) + \" or more [Fatigue|Concept.Fatigue] built\""
  },
  {
    "ID": 1007441887,
    "key": "3a20dad5a283d63095ac7110447579550a78b1e472965a7bc6a8dd9d5cc01d0c",
    "original": "Becomes disabled when starting a turn with %s (%s) or more [Fatigue|Concept.Fatigue] built",
    "translation": "",
    "context": "this.format(\"Becomes disabled when starting a turn with %s (%s) or more [Fatigue|Concept.Fatigue] built\", getroottable().MSU.Text.colorizePct(this.m.FatigueThreshold, {\n    InvertColor = True\n}), getroottable().MSU.Text.colorNegative(getroottable().Math.round(this.m.FatigueThreshold * this.getContainer().getActor().getFatigueMax())))"
  },
  {
    "ID": 1007441888,
    "key": "9a951d2c5200365293525cb92481a7f276fc3d3ff06806e47d68900b779286b2",
    "original": "Disabled until this character uses [$ $|Skill+recover_skill]",
    "translation": "",
    "context": "getroottable().MSU.Text.colorNegative(\"Disabled until this character uses [$ $|Skill+recover_skill]\")"
  },
  {
    "ID": 1007441889,
    "key": "6997e91029071cffc36ab26784413c7df339bbd6ce34ebdb84bc04e36c5a27e8",
    "original": "Does not expire when using skills that cost no [Action Points|Concept.ActionPoints] but will expire upon [waiting|Concept.Wait]",
    "translation": ""
  },
  {
    "ID": 1007441890,
    "key": "44fd23d76def5195d92a31acdd48f2c0f3c917a772371b6938bdf362ad702072",
    "original": "The next skill use will refund ",
    "translation": "下个技能消耗的[行动点数|Concept.ActionPoints]会返还",
    "stage": 1,
    "context": "\"The next skill use will refund \" + getroottable().MSU.Text.colorizePct(this.m.ActionPointsRecoveredPct) + \" of its [Action Point|Concept.ActionPoints] cost\""
  },
  {
    "ID": 1007441891,
    "key": "0743dfdaff492f329a5f35719a760641641f679e756d2535f180043383f1fd28",
    "original": "This character is exceptionally fast when not fatigued.",
    "translation": "该角色不疲劳时速度极快。",
    "stage": 1,
    "context": "this.m.Description = \"This character is exceptionally fast when not fatigued.\""
  },
  {
    "ID": 1007668140,
    "key": "c2cb2a417fec79ab21c4f94017fbd42a8de52db52fb5d3d55b272ab7cda8390e",
    "original": "The next skill costing [Action Points|Concept.ActionPoints] has its [Action Point|Concept.ActionPoints] cost ",
    "translation": "下个技能消耗的[行动点数|Concept.ActionPoints]会返还",
    "context": "\"The next skill costing [Action Points|Concept.ActionPoints] has its [Action Point|Concept.ActionPoints] cost \" + getroottable().MSU.Text.colorPositive(\"halved\")"
  },
  {
    "ID": 1007668141,
    "key": "d804b7462c56f231e42d63b1861b9f14c16aa837022b25659bc85ebe8cbbfef2",
    "original": "halved",
    "translation": "",
    "context": "getroottable().MSU.Text.colorPositive(\"halved\")"
  }
]
