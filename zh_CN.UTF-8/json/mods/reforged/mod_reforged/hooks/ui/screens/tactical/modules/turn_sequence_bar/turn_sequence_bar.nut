[
  {
    "ID": 1007440092,
    "key": "b741ea33cf62c97b71e01f22b4e5fecf0761c091b9a25f35b8ddda6b240d0ef5",
    "original": "AI Only",
    "translation": "仅AI",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.ModSettings.getSetting(\"TacticalTooltip_Values\").getValue() == \"AI Only\""
  },
  {
    "ID": 1007440093,
    "key": "a52ace420f2175d08b1577a1bea5445e36801229c074ef9ed6c55a73401fd9c2",
    "original": "All",
    "translation": "所有人",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.ModSettings.getSetting(\"TacticalTooltip_Values\").getValue() == \"All\""
  },
  {
    "ID": 1007440094,
    "key": "e65f51dd4a5df5ce613955854e2e287a43575ea2c62cf1360910b04d0a600c57",
    "original": "Have all your characters use 'Wait' on this round?",
    "translation": "确定要让所有角色“等待”回合？",
    "context": "getroottable().Tactical.State.showDialogPopup(\"Wait Round\", \"Have all your characters use 'Wait' on this round?\", function None(){\n    this.m.IsWaitingRound = True;\n    this.m.JSHandle.call(\"RF_setWaitTurnAllButtonVisible\", False);\n    foreach( e in this.m.CurrentEntities){\n        if (e.isPlayerControlled()) {\n            e.setWaitTurn(True)\n        }\n    };\n    local activeEntity = this.getActiveEntity();\n    if (activeEntity != null && activeEntity.m.IsWaitingTurn) {\n        activeEntity.m.IsWaitingTurn = False;\n        this.entityWaitTurn(activeEntity);\n        return;\n    };\n    return;\n}.bindenv(this), null)"
  },
  {
    "ID": 1007440095,
    "key": "7762b225690ee46b72781e940e121e648c6ca94391e9c8f937305dd0cbbe1aa9",
    "original": "Player Only",
    "translation": "仅玩家",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.ModSettings.getSetting(\"TacticalTooltip_Values\").getValue() == \"Player Only\""
  },
  {
    "ID": 1007440096,
    "key": "69bebe0b9e282178ca37dee74d3fc7496b8d2d8d84e98ac45a1eb342820ea9e6",
    "original": "Wait Round",
    "translation": "等待回合",
    "context": "getroottable().Tactical.State.showDialogPopup(\"Wait Round\", \"Have all your characters use 'Wait' on this round?\", function None(){\n    this.m.IsWaitingRound = True;\n    this.m.JSHandle.call(\"RF_setWaitTurnAllButtonVisible\", False);\n    foreach( e in this.m.CurrentEntities){\n        if (e.isPlayerControlled()) {\n            e.setWaitTurn(True)\n        }\n    };\n    local activeEntity = this.getActiveEntity();\n    if (activeEntity != null && activeEntity.m.IsWaitingTurn) {\n        activeEntity.m.IsWaitingTurn = False;\n        this.entityWaitTurn(activeEntity);\n        return;\n    };\n    return;\n}.bindenv(this), null)"
  },
  {
    "ID": 1007440097,
    "key": "cdb59355f3ba293977fc0945fb85f11822d412c45c7520c7121bd2234f6c1f48",
    "original": "player",
    "translation": "",
    "context": "getroottable().MSU.isKindOf(_entity, \"player\")"
  }
]
