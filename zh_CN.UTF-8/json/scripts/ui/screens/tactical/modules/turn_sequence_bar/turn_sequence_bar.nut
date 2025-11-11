[
  {
    "ID": 293422944,
    "key": "End Round",
    "original": "End Round",
    "translation": "结束回合",
    "stage": 5,
    "context": "this.Tactical.State.showDialogPopup('End Round', 'Have all your characters skip their turn until the next round starts?', function None(){\n    this.m.IsSkippingRound = True;\n    this.m.JSHandle.call('setEndTurnAllButtonVisible', False);\n    foreach( e in this.m.CurrentEntities){\n        if (e.isPlayerControlled()) {\n            e.setSkipTurn(True)\n        }\n    };\n    this.initNextTurn();\n    return;\n}.bindenv(this), null)"
  },
  {
    "ID": 293422945,
    "key": " Round(s).",
    "original": " Round(s).",
    "translation": "回合。",
    "stage": 5,
    "context": "this.logDebug('Info: Battle ended after ' + this.m.CurrentRound + ' Round(s).')"
  },
  {
    "ID": 293422946,
    "key": "ERROR: Skill was clicked for an unknown entity!",
    "original": "ERROR: Skill was clicked for an unknown entity!",
    "translation": "ERROR: Skill was clicked for an unknown entity!",
    "stage": 5,
    "context": "this.logDebug('ERROR: Skill was clicked for an unknown entity!')"
  },
  {
    "ID": 293422947,
    "key": "Info: Battle ended after ",
    "original": "Info: Battle ended after ",
    "translation": "信息：战斗历时",
    "stage": 5,
    "context": "this.logDebug('Info: Battle ended after ' + this.m.CurrentRound + ' Round(s).')"
  },
  {
    "ID": 293422948,
    "key": "]Not enough Action Points![/color]",
    "original": "]Not enough Action Points![/color]",
    "translation": "]行动点不足！[/color]",
    "stage": 5,
    "context": "this.Tactical.EventLog.log('[color=' + this.Const.UI.Color.NegativeValue + ']Not enough Action Points![/color]')"
  },
  {
    "ID": 293422949,
    "key": "Have all your characters skip their turn until the next round starts?",
    "original": "Have all your characters skip their turn until the next round starts?",
    "translation": "确认让你的所有角色跳过回合，直到下轮开始再行动？",
    "stage": 5,
    "context": "this.Tactical.State.showDialogPopup('End Round', 'Have all your characters skip their turn until the next round starts?', function None(){\n    this.m.IsSkippingRound = True;\n    this.m.JSHandle.call('setEndTurnAllButtonVisible', False);\n    foreach( e in this.m.CurrentEntities){\n        if (e.isPlayerControlled()) {\n            e.setSkipTurn(True)\n        }\n    };\n    this.initNextTurn();\n    return;\n}.bindenv(this), null)"
  },
  {
    "ID": 293422950,
    "key": "ERROR: Skill cancel was clicked for an unknown entity!",
    "original": "ERROR: Skill cancel was clicked for an unknown entity!",
    "translation": "ERROR: Skill cancel was clicked for an unknown entity!",
    "stage": 5,
    "context": "this.logDebug('ERROR: Skill cancel was clicked for an unknown entity!')"
  },
  {
    "ID": 293422951,
    "key": " already exists.)",
    "original": " already exists.)",
    "translation": " already exists.)",
    "stage": 5,
    "context": "this.logDebug('TurnSequenceBar::addEntity(' + _entity.getName() + ' already exists.)')"
  },
  {
    "ID": 293422952,
    "key": "]Too much fatigue![/color]",
    "original": "]Too much fatigue![/color]",
    "translation": "]角色疲劳值过高！[/color]",
    "stage": 5,
    "context": "this.Tactical.EventLog.log('[color=' + this.Const.UI.Color.NegativeValue + ']Too much fatigue![/color]')"
  }
]
