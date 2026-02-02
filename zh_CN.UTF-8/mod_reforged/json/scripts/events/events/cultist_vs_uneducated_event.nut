[
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\""
  },
  {
    "key": "91f588659d774744c0811b18a6e349f4e088577d6133061e9cafd3ce68dcd096",
    "original": " has been converted to a Cultist",
    "translation": "",
    "context": "_event.m.Uneducated.getName() + \" has been converted to a Cultist\""
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.cultist_vs_uneducated\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 30.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]A few brothers come to you looking rather worried. They say %cultist% has been sitting with %uneducated% for a few hours now. When you ask what's the worry, they remind you that the cultist has a scarred forehead and speaks of incredibly strange things. Ah, right.\\n\\nYou go and see the two men. %uneducated% looks up at you, smiling, and says the cultist actually has a lot to teach him. Grimacing, you wonder if you should put a stop to these... lessons.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Do as you wish, as long as you don't forget what I hired you to do.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Stop this nonsense.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        local background = this.new(\"scripts/skills/backgrounds/converted_cultist_background\");\n        _event.m.Uneducated.getSkills().removeByID(_event.m.Uneducated.getBackground().getID());\n        _event.m.Uneducated.getSkills().add(background);\n        background.buildDescription();\n        background.onSetAppearance();\n        this.List = [{\n            id = 13\n            icon = background.getIcon()\n            text = _event.m.Uneducated.getName() + \" has been converted to a Cultist\"\n        }];\n        _event.m.Cultist.getBaseProperties()[4] += 2;\n        _event.m.Cultist.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You nod and turn away. The rest of the brothers shake their heads. By next morning, %uneducated% is found with a fresh wound on his forehead, the blood of conversion. When you ask how he is doing, he only says a few words.%SPEECH_ON%Davkul is coming.%SPEECH_OFF%Well, great.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Suit yourself.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            local background = this.new(\"scripts/skills/backgrounds/converted_cultist_background\");\n            _event.m.Uneducated.getSkills().removeByID(_event.m.Uneducated.getBackground().getID());\n            _event.m.Uneducated.getSkills().add(background);\n            background.buildDescription();\n            background.onSetAppearance();\n            this.List = [{\n                id = 13\n                icon = background.getIcon()\n                text = _event.m.Uneducated.getName() + \" has been converted to a Cultist\"\n            }];\n            _event.m.Cultist.getBaseProperties()[4] += 2;\n            _event.m.Cultist.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        _event.m.Cultist.worsenMood(2.0, \"Was denied the chance to convert \" + _event.m.Uneducated.getName());\n        if (_event.m.Cultist.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You separate the two men, telling %uneducated% to go count some inventory. When he leaves, the cultist sneers at you.%SPEECH_ON%Davkul awaits. You see him in your sleep. You see him in the nights. His darkness is coming. No light burns forever.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Yeah, well, until then you work for me.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            _event.m.Cultist.worsenMood(2.0, \"Was denied the chance to convert \" + _event.m.Uneducated.getName());\n            if (_event.m.Cultist.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                    text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "create = function create(){\n    this.m.ID = \"event.cultist_vs_uneducated\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 30.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]A few brothers come to you looking rather worried. They say %cultist% has been sitting with %uneducated% for a few hours now. When you ask what's the worry, they remind you that the cultist has a scarred forehead and speaks of incredibly strange things. Ah, right.\\n\\nYou go and see the two men. %uneducated% looks up at you, smiling, and says the cultist actually has a lot to teach him. Grimacing, you wonder if you should put a stop to these... lessons.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Do as you wish, as long as you don't forget what I hired you to do.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Stop this nonsense.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        local background = this.new(\"scripts/skills/backgrounds/converted_cultist_background\");\n        _event.m.Uneducated.getSkills().removeByID(_event.m.Uneducated.getBackground().getID());\n        _event.m.Uneducated.getSkills().add(background);\n        background.buildDescription();\n        background.onSetAppearance();\n        this.List = [{\n            id = 13\n            icon = background.getIcon()\n            text = _event.m.Uneducated.getName() + \" has been converted to a Cultist\"\n        }];\n        _event.m.Cultist.getBaseProperties()[4] += 2;\n        _event.m.Cultist.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You nod and turn away. The rest of the brothers shake their heads. By next morning, %uneducated% is found with a fresh wound on his forehead, the blood of conversion. When you ask how he is doing, he only says a few words.%SPEECH_ON%Davkul is coming.%SPEECH_OFF%Well, great.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Suit yourself.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            local background = this.new(\"scripts/skills/backgrounds/converted_cultist_background\");\n            _event.m.Uneducated.getSkills().removeByID(_event.m.Uneducated.getBackground().getID());\n            _event.m.Uneducated.getSkills().add(background);\n            background.buildDescription();\n            background.onSetAppearance();\n            this.List = [{\n                id = 13\n                icon = background.getIcon()\n                text = _event.m.Uneducated.getName() + \" has been converted to a Cultist\"\n            }];\n            _event.m.Cultist.getBaseProperties()[4] += 2;\n            _event.m.Cultist.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        _event.m.Cultist.worsenMood(2.0, \"Was denied the chance to convert \" + _event.m.Uneducated.getName());\n        if (_event.m.Cultist.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You separate the two men, telling %uneducated% to go count some inventory. When he leaves, the cultist sneers at you.%SPEECH_ON%Davkul awaits. You see him in your sleep. You see him in the nights. His darkness is coming. No light burns forever.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Yeah, well, until then you work for me.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            _event.m.Cultist.worsenMood(2.0, \"Was denied the chance to convert \" + _event.m.Uneducated.getName());\n            if (_event.m.Cultist.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                    text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "f622b3d330661f3e2a1a60040816f9f0654c664cc25068d50e63a366bd036d83",
    "original": "Do as you wish, as long as you don't forget what I hired you to do.",
    "translation": "",
    "context": "Text = \"Do as you wish, as long as you don't forget what I hired you to do.\""
  },
  {
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "90a6b712dbb9158997b3c0e44de4cedf23cf5c58a66e5b79e79b129f521a2035",
    "original": "Stop this nonsense.",
    "translation": "",
    "context": "Text = \"Stop this nonsense.\""
  },
  {
    "key": "e03fa6ed1b6eac873209a4827482ac35717c4351875d75f46934eb1ad2a6a12a",
    "original": "Suit yourself.",
    "translation": "",
    "context": "Text = \"Suit yourself.\""
  },
  {
    "key": "04643374130a9792b7531d06e4c5c9adbdabffa7f7db2ced6800155ac65f235d",
    "original": "Was denied the chance to convert ",
    "translation": "",
    "context": "\"Was denied the chance to convert \" + _event.m.Uneducated.getName()"
  },
  {
    "key": "35d6b086a616d1c41bd379f225d13c2ef62c73bd49d40ee17f60cf14a9a0951c",
    "original": "Yeah, well, until then you work for me.",
    "translation": "",
    "context": "Text = \"Yeah, well, until then you work for me.\""
  },
  {
    "key": "07a481cf1e387790ea47a7df245449369f6ac1171efdbb4b169c70f30e2a07e4",
    "original": "[img]gfx/ui/events/event_05.png[/img]A few brothers come to you looking rather worried. They say %cultist% has been sitting with %uneducated% for a few hours now. When you ask what's the worry, they remind you that the cultist has a scarred forehead and speaks of incredibly strange things. Ah, right.\n\nYou go and see the two men. %uneducated% looks up at you, smiling, and says the cultist actually has a lot to teach him. Grimacing, you wonder if you should put a stop to these... lessons.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]A few brothers come to you looking rather worried. They say %cultist% has been sitting with %uneducated% for a few hours now. When you ask what's the worry, they remind you that the cultist has a scarred forehead and speaks of incredibly strange things. Ah, right.\\n\\nYou go and see the two men. %uneducated% looks up at you, smiling, and says the cultist actually has a lot to teach him. Grimacing, you wonder if you should put a stop to these... lessons.\""
  },
  {
    "key": "c009f2251a2d521d4b9d59b06f17fe48b1d133b4dcd28c41f697ad91938edce3",
    "original": "[img]gfx/ui/events/event_05.png[/img]You nod and turn away. The rest of the brothers shake their heads. By next morning, %uneducated% is found with a fresh wound on his forehead, the blood of conversion. When you ask how he is doing, he only says a few words.%SPEECH_ON%Davkul is coming.%SPEECH_OFF%Well, great.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]You nod and turn away. The rest of the brothers shake their heads. By next morning, %uneducated% is found with a fresh wound on his forehead, the blood of conversion. When you ask how he is doing, he only says a few words.%SPEECH_ON%Davkul is coming.%SPEECH_OFF%Well, great.\""
  },
  {
    "key": "0b2e75a13f4991a08a1d1c206d3a59d0bb95e6c1f37c377c58c9f3c49048f1eb",
    "original": "[img]gfx/ui/events/event_05.png[/img]You separate the two men, telling %uneducated% to go count some inventory. When he leaves, the cultist sneers at you.%SPEECH_ON%Davkul awaits. You see him in your sleep. You see him in the nights. His darkness is coming. No light burns forever.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]You separate the two men, telling %uneducated% to go count some inventory. When he leaves, the cultist sneers at you.%SPEECH_ON%Davkul awaits. You see him in your sleep. You see him in the nights. His darkness is coming. No light burns forever.%SPEECH_OFF%\""
  },
  {
    "key": "7a13736f003f5eb5e634c0a135bc0a5fb7d5cfb449189cd394583b83a5807f90",
    "original": "]+2[/color] Resolve",
    "translation": "",
    "context": "_event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\""
  },
  {
    "key": "b7841aae23eb0eb084fe770775b8b7590c75a157f12d1b07485af990e71a5b7a",
    "original": "cultist",
    "translation": "",
    "context": ""
  },
  {
    "key": "7d2c3c7917c8a506f9483477e2aff0a7b91abffe35d31533f91c0223c3b4430b",
    "original": "uneducated",
    "translation": "",
    "context": ""
  }
]