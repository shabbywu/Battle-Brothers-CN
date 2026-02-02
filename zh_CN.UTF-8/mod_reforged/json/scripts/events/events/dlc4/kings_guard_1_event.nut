[
  {
    "key": "d8c9549b91c16f7667601671990524cfb6970d32ddbe40a93e9c0e91834a85f8",
    "original": "%terrainImage%{The nearly frozen man joins the company. He's a ragged wreck, but if what he said is true maybe he will someday become the fighter he could barely speak of.}",
    "translation": "",
    "context": "Text = \"%terrainImage%{The nearly frozen man joins the company. He's a ragged wreck, but if what he said is true maybe he will someday become the fighter he could barely speak of.}\""
  },
  {
    "key": "7a4560bfb08fe6698bae099edd2ac83338bb627c6255906013a25a6e1f585854",
    "original": "%terrainImage%{The snowy wastes are home to not much of anything, so to find a man half-naked in its frigid geography is rather unusual. That he is actually alive even more so. You crouch beside him. His eyes are hollow and rime frosts make blinking them a struggle. His lips are jagged and purple. His nose a deep red bordering on black. You ask if he can speak. He nods.%SPEECH_ON%Barbarians. Took. Me.%SPEECH_OFF%You ask where his kidnappers are. He shrugs and continues his cold cadence.%SPEECH_ON%They. Got. Bored. And. Left.%SPEECH_OFF%It does seem in tune with the primitives to up and leave a prisoner in the ice. He explains that he was once a sturdy swordfighter. A smile squeezes  through the pain.%SPEECH_ON%A. King's. Guard. In. The. Kingless. Land. Things. Could. Be. Worse?%SPEECH_OFF%}",
    "translation": "",
    "context": "Text = \"%terrainImage%{The snowy wastes are home to not much of anything, so to find a man half-naked in its frigid geography is rather unusual. That he is actually alive even more so. You crouch beside him. His eyes are hollow and rime frosts make blinking them a struggle. His lips are jagged and purple. His nose a deep red bordering on black. You ask if he can speak. He nods.%SPEECH_ON%Barbarians. Took. Me.%SPEECH_OFF%You ask where his kidnappers are. He shrugs and continues his cold cadence.%SPEECH_ON%They. Got. Bored. And. Left.%SPEECH_OFF%It does seem in tune with the primitives to up and leave a prisoner in the ice. He explains that he was once a sturdy swordfighter. A smile squeezes  through the pain.%SPEECH_ON%A. King's. Guard. In. The. Kingless. Land. Things. Could. Be. Worse?%SPEECH_OFF%}\""
  },
  {
    "key": "24555192663f3592efaf6f315329d0aed6fc1524a83c3b0547f455ec592774da",
    "original": "%terrainImage%{You pat the man on his head, but tell him it's already over. He nods.%SPEECH_ON%Speak. For. Yourself. Mercenary.%SPEECH_OFF%He smiles again, but this time it does release. It sticks. Literally. And he leans forward and his eyes are open and do not blink and in this state he is gone. You get the men back on the road, or what one can make of a road in these snowed stretches.}",
    "translation": "",
    "context": "Text = \"%terrainImage%{You pat the man on his head, but tell him it's already over. He nods.%SPEECH_ON%Speak. For. Yourself. Mercenary.%SPEECH_OFF%He smiles again, but this time it does release. It sticks. Literally. And he leans forward and his eyes are open and do not blink and in this state he is gone. You get the men back on the road, or what one can make of a road in these snowed stretches.}\""
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "285db421dde6f5bb8b0df2eb451a601f6425d4083ee4ded41980c845a8d30c76",
    "original": "Along the road...",
    "translation": "",
    "context": "this.m.Title = \"Along the road...\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "ID = \"B\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"B\";;\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.kings_guard_1\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 9999999.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        local roster = this.World.getTemporaryRoster();\n        _event.m.Dude = roster.create(\"scripts/entity/tactical/player\");\n        _event.m.Dude.setStartValuesEx([\"cripple_background\"], False);\n        _event.m.Dude.setTitle(\"\");\n        _event.m.Dude.getBackground().m.RawDescription = \"You found %name% frozen half to death in the north. He claims he was a King's Guard once, but looking at him now you see but a cripple.\";\n        _event.m.Dude.getBackground().buildDescription(True);\n        _event.m.Dude.getFlags().set(\"IsSpecial\", True);\n        _event.m.Dude.getBaseProperties()[4] += 15;\n        _event.m.Dude.getSkills().update();\n        _event.m.Dude.m.PerkPoints = 2;\n        _event.m.Dude.m.LevelUps = 2;\n        _event.m.Dude.m.Level = 3;\n        _event.m.Dude.m.XP = this.Const.LevelXP[_event.m.Dude.m.Level - 1];\n        _event.m.Dude.m.Talents = [];\n        local talents = _event.m.Dude.getTalents();\n        talents.resize(this.Const.Attributes.COUNT, 0);\n        talents.this.Const.Attributes.MeleeSkill = 2;\n        talents.this.Const.Attributes.MeleeDefense = 3;\n        talents.this.Const.Attributes.RangedDefense = 3;\n        _event.m.Dude.m.Attributes = [];\n        _event.m.Dude.fillAttributeLevelUpValues(this.Const.XP.MaxLevelWithPerkpoints - 1);\n        _event.m.Dude.getItems().unequip(_event.m.Dude.getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand));\n        _event.m.Dude.getItems().unequip(_event.m.Dude.getItems().getItemAtSlot(this.Const.ItemSlot.Offhand));\n        _event.m.Dude.worsenMood(1.5, \"Got taken by barbarians and left to die in the cold\");\n        _event.m.Dude.getFlags().set(\"IsKingsGuard\", True);\n        this.Characters.push(_event.m.Dude.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"%terrainImage%{The snowy wastes are home to not much of anything, so to find a man half-naked in its frigid geography is rather unusual. That he is actually alive even more so. You crouch beside him. His eyes are hollow and rime frosts make blinking them a struggle. His lips are jagged and purple. His nose a deep red bordering on black. You ask if he can speak. He nods.%SPEECH_ON%Barbarians. Took. Me.%SPEECH_OFF%You ask where his kidnappers are. He shrugs and continues his cold cadence.%SPEECH_ON%They. Got. Bored. And. Left.%SPEECH_OFF%It does seem in tune with the primitives to up and leave a prisoner in the ice. He explains that he was once a sturdy swordfighter. A smile squeezes  through the pain.%SPEECH_ON%A. King's. Guard. In. The. Kingless. Land. Things. Could. Be. Worse?%SPEECH_OFF%}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"We have a place for you, friend.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        },{\n            Text = \"You're on your own in this world.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local roster = this.World.getTemporaryRoster();\n            _event.m.Dude = roster.create(\"scripts/entity/tactical/player\");\n            _event.m.Dude.setStartValuesEx([\"cripple_background\"], False);\n            _event.m.Dude.setTitle(\"\");\n            _event.m.Dude.getBackground().m.RawDescription = \"You found %name% frozen half to death in the north. He claims he was a King's Guard once, but looking at him now you see but a cripple.\";\n            _event.m.Dude.getBackground().buildDescription(True);\n            _event.m.Dude.getFlags().set(\"IsSpecial\", True);\n            _event.m.Dude.getBaseProperties()[4] += 15;\n            _event.m.Dude.getSkills().update();\n            _event.m.Dude.m.PerkPoints = 2;\n            _event.m.Dude.m.LevelUps = 2;\n            _event.m.Dude.m.Level = 3;\n            _event.m.Dude.m.XP = this.Const.LevelXP[_event.m.Dude.m.Level - 1];\n            _event.m.Dude.m.Talents = [];\n            local talents = _event.m.Dude.getTalents();\n            talents.resize(this.Const.Attributes.COUNT, 0);\n            talents.this.Const.Attributes.MeleeSkill = 2;\n            talents.this.Const.Attributes.MeleeDefense = 3;\n            talents.this.Const.Attributes.RangedDefense = 3;\n            _event.m.Dude.m.Attributes = [];\n            _event.m.Dude.fillAttributeLevelUpValues(this.Const.XP.MaxLevelWithPerkpoints - 1);\n            _event.m.Dude.getItems().unequip(_event.m.Dude.getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand));\n            _event.m.Dude.getItems().unequip(_event.m.Dude.getItems().getItemAtSlot(this.Const.ItemSlot.Offhand));\n            _event.m.Dude.worsenMood(1.5, \"Got taken by barbarians and left to die in the cold\");\n            _event.m.Dude.getFlags().set(\"IsKingsGuard\", True);\n            this.Characters.push(_event.m.Dude.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude = null;\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Dude.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"%terrainImage%{You pat the man on his head, but tell him it's already over. He nods.%SPEECH_ON%Speak. For. Yourself. Mercenary.%SPEECH_OFF%He smiles again, but this time it does release. It sticks. Literally. And he leans forward and his eyes are open and do not blink and in this state he is gone. You get the men back on the road, or what one can make of a road in these snowed stretches.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"It's already over for you.\"\n            getResult = function getResult(_event){\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude = null;\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Dude.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.getPlayerRoster().add(_event.m.Dude);\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude.onHired();\n        _event.m.Dude = null;\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Dude.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"%terrainImage%{The nearly frozen man joins the company. He's a ragged wreck, but if what he said is true maybe he will someday become the fighter he could barely speak of.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"We'll see.\"\n            getResult = function getResult(_event){\n                this.World.getPlayerRoster().add(_event.m.Dude);\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude.onHired();\n                _event.m.Dude = null;\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Dude.getImagePath());\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": ""
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"C\";;\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.kings_guard_1\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 9999999.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        local roster = this.World.getTemporaryRoster();\n        _event.m.Dude = roster.create(\"scripts/entity/tactical/player\");\n        _event.m.Dude.setStartValuesEx([\"cripple_background\"], False);\n        _event.m.Dude.setTitle(\"\");\n        _event.m.Dude.getBackground().m.RawDescription = \"You found %name% frozen half to death in the north. He claims he was a King's Guard once, but looking at him now you see but a cripple.\";\n        _event.m.Dude.getBackground().buildDescription(True);\n        _event.m.Dude.getFlags().set(\"IsSpecial\", True);\n        _event.m.Dude.getBaseProperties()[4] += 15;\n        _event.m.Dude.getSkills().update();\n        _event.m.Dude.m.PerkPoints = 2;\n        _event.m.Dude.m.LevelUps = 2;\n        _event.m.Dude.m.Level = 3;\n        _event.m.Dude.m.XP = this.Const.LevelXP[_event.m.Dude.m.Level - 1];\n        _event.m.Dude.m.Talents = [];\n        local talents = _event.m.Dude.getTalents();\n        talents.resize(this.Const.Attributes.COUNT, 0);\n        talents.this.Const.Attributes.MeleeSkill = 2;\n        talents.this.Const.Attributes.MeleeDefense = 3;\n        talents.this.Const.Attributes.RangedDefense = 3;\n        _event.m.Dude.m.Attributes = [];\n        _event.m.Dude.fillAttributeLevelUpValues(this.Const.XP.MaxLevelWithPerkpoints - 1);\n        _event.m.Dude.getItems().unequip(_event.m.Dude.getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand));\n        _event.m.Dude.getItems().unequip(_event.m.Dude.getItems().getItemAtSlot(this.Const.ItemSlot.Offhand));\n        _event.m.Dude.worsenMood(1.5, \"Got taken by barbarians and left to die in the cold\");\n        _event.m.Dude.getFlags().set(\"IsKingsGuard\", True);\n        this.Characters.push(_event.m.Dude.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"%terrainImage%{The snowy wastes are home to not much of anything, so to find a man half-naked in its frigid geography is rather unusual. That he is actually alive even more so. You crouch beside him. His eyes are hollow and rime frosts make blinking them a struggle. His lips are jagged and purple. His nose a deep red bordering on black. You ask if he can speak. He nods.%SPEECH_ON%Barbarians. Took. Me.%SPEECH_OFF%You ask where his kidnappers are. He shrugs and continues his cold cadence.%SPEECH_ON%They. Got. Bored. And. Left.%SPEECH_OFF%It does seem in tune with the primitives to up and leave a prisoner in the ice. He explains that he was once a sturdy swordfighter. A smile squeezes  through the pain.%SPEECH_ON%A. King's. Guard. In. The. Kingless. Land. Things. Could. Be. Worse?%SPEECH_OFF%}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"We have a place for you, friend.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        },{\n            Text = \"You're on your own in this world.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local roster = this.World.getTemporaryRoster();\n            _event.m.Dude = roster.create(\"scripts/entity/tactical/player\");\n            _event.m.Dude.setStartValuesEx([\"cripple_background\"], False);\n            _event.m.Dude.setTitle(\"\");\n            _event.m.Dude.getBackground().m.RawDescription = \"You found %name% frozen half to death in the north. He claims he was a King's Guard once, but looking at him now you see but a cripple.\";\n            _event.m.Dude.getBackground().buildDescription(True);\n            _event.m.Dude.getFlags().set(\"IsSpecial\", True);\n            _event.m.Dude.getBaseProperties()[4] += 15;\n            _event.m.Dude.getSkills().update();\n            _event.m.Dude.m.PerkPoints = 2;\n            _event.m.Dude.m.LevelUps = 2;\n            _event.m.Dude.m.Level = 3;\n            _event.m.Dude.m.XP = this.Const.LevelXP[_event.m.Dude.m.Level - 1];\n            _event.m.Dude.m.Talents = [];\n            local talents = _event.m.Dude.getTalents();\n            talents.resize(this.Const.Attributes.COUNT, 0);\n            talents.this.Const.Attributes.MeleeSkill = 2;\n            talents.this.Const.Attributes.MeleeDefense = 3;\n            talents.this.Const.Attributes.RangedDefense = 3;\n            _event.m.Dude.m.Attributes = [];\n            _event.m.Dude.fillAttributeLevelUpValues(this.Const.XP.MaxLevelWithPerkpoints - 1);\n            _event.m.Dude.getItems().unequip(_event.m.Dude.getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand));\n            _event.m.Dude.getItems().unequip(_event.m.Dude.getItems().getItemAtSlot(this.Const.ItemSlot.Offhand));\n            _event.m.Dude.worsenMood(1.5, \"Got taken by barbarians and left to die in the cold\");\n            _event.m.Dude.getFlags().set(\"IsKingsGuard\", True);\n            this.Characters.push(_event.m.Dude.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude = null;\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Dude.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"%terrainImage%{You pat the man on his head, but tell him it's already over. He nods.%SPEECH_ON%Speak. For. Yourself. Mercenary.%SPEECH_OFF%He smiles again, but this time it does release. It sticks. Literally. And he leans forward and his eyes are open and do not blink and in this state he is gone. You get the men back on the road, or what one can make of a road in these snowed stretches.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"It's already over for you.\"\n            getResult = function getResult(_event){\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude = null;\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Dude.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.getPlayerRoster().add(_event.m.Dude);\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude.onHired();\n        _event.m.Dude = null;\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Dude.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"%terrainImage%{The nearly frozen man joins the company. He's a ragged wreck, but if what he said is true maybe he will someday become the fighter he could barely speak of.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"We'll see.\"\n            getResult = function getResult(_event){\n                this.World.getPlayerRoster().add(_event.m.Dude);\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude.onHired();\n                _event.m.Dude = null;\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Dude.getImagePath());\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "ID = \"C\""
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": ""
  },
  {
    "key": "a42f3a6c453f943acf6943a8b7e9dfe4ebc639bfbfe3db9a9b4d6c4f433edca0",
    "original": "Got taken by barbarians and left to die in the cold",
    "translation": "",
    "context": ""
  },
  {
    "key": "f210abd05d353b3b9c5c9e1c4cf72d50a861f765cb3591b6af290a75736c7274",
    "original": "It's already over for you.",
    "translation": "",
    "context": "Text = \"It's already over for you.\""
  },
  {
    "key": "81a8965615657802169c02c414899363bc09fe7c1cec4d67672af84281354c2a",
    "original": "We have a place for you, friend.",
    "translation": "",
    "context": "Text = \"We have a place for you, friend.\""
  },
  {
    "key": "647d12376b5556cd6f0700638a3dedbde339b18c3de4890eddec2e423b6320c4",
    "original": "We'll see.",
    "translation": "",
    "context": "Text = \"We'll see.\""
  },
  {
    "key": "f84efc300adbdf201fb2debac4f5973cda200a12f402aa3dfbfa4ddfb5c0f3ee",
    "original": "You found %name% frozen half to death in the north. He claims he was a King's Guard once, but looking at him now you see but a cripple.",
    "translation": "",
    "context": "_event.m.Dude.getBackground().m.RawDescription = \"You found %name% frozen half to death in the north. He claims he was a King's Guard once, but looking at him now you see but a cripple.\""
  },
  {
    "key": "47c00bfbb55f4fb8200e0879222f3627c5432d4514a17c575937577e2545fdb3",
    "original": "You're on your own in this world.",
    "translation": "",
    "context": "Text = \"You're on your own in this world.\""
  }
]