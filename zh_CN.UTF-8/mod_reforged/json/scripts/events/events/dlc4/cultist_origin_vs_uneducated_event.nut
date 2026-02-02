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
    "context": "create = function create(){\n    this.m.ID = \"event.cultist_origin_vs_uneducated\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 13.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]A few brothers come to you looking rather worried. They say %cultist% has been sitting with %uneducated% for a few hours now. When you ask what's the worry, they remind you that the cultist has a scarred forehead and speaks of incredibly strange things. Yeah. Those are the demands of Davkul, an example of one's committment. You do not understand what could possibly be wrong with that.\\n\\n You go and see the two men. %uneducated% looks up at you, smiling, and says the cultist actually has a lot to teach him. Perhaps he does, but you know Davkul's presence need not be felt in all, and if it desired being forced upon the world it would be a misapprehension of Davkul's purpose.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Show him the darkness.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Davkul does not want him.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        local background = this.new(\"scripts/skills/backgrounds/converted_cultist_background\");\n        _event.m.Uneducated.getSkills().removeByID(_event.m.Uneducated.getBackground().getID());\n        _event.m.Uneducated.getSkills().add(background);\n        background.buildDescription();\n        background.onSetAppearance();\n        this.List = [{\n            id = 13\n            icon = background.getIcon()\n            text = _event.m.Uneducated.getName() + \" has been converted to a Cultist\"\n        }];\n        _event.m.Cultist.getBaseProperties()[4] += 2;\n        _event.m.Cultist.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You nod and turn away. By next morning, %uneducated% is found with a fresh wound on his forehead, the blood of conversion and the price some must pay to devote themselves to Davkul. When you ask how he is doing, he only says a few words.%SPEECH_ON%Davkul is coming.%SPEECH_OFF%Shaking your head, you correct him.%SPEECH_ON%Davkul is not coming. Davkul AWAITS us all.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Davkul awaits.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            local background = this.new(\"scripts/skills/backgrounds/converted_cultist_background\");\n            _event.m.Uneducated.getSkills().removeByID(_event.m.Uneducated.getBackground().getID());\n            _event.m.Uneducated.getSkills().add(background);\n            background.buildDescription();\n            background.onSetAppearance();\n            this.List = [{\n                id = 13\n                icon = background.getIcon()\n                text = _event.m.Uneducated.getName() + \" has been converted to a Cultist\"\n            }];\n            _event.m.Cultist.getBaseProperties()[4] += 2;\n            _event.m.Cultist.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to convert \" + _event.m.Uneducated.getName());\n        if (_event.m.Cultist.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You separate the two men, telling %uneducated% to go count some inventory. When he leaves, %cultist% sneers at you.%SPEECH_ON%Davkul awaits. You see him in your sleep. You see him in the nights. His darkness is coming. No light burns forever.%SPEECH_OFF%The man pauses and stares into your soul. And you stare back from somewhere not of your body. You can only see infinite blackness around you and a pip of light through which %cultist% is looking. Slowly, you float back toward the light and find yourself blinking and staring at the man. He bows.%SPEECH_ON%Apologies, captain, I did not know that Davkul had such plans.%SPEECH_OFF%Blinking again, you can only nod.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Davkul awaits us all.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to convert \" + _event.m.Uneducated.getName());\n            if (_event.m.Cultist.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                    text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "ID = \"C\""
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.cultist_origin_vs_uneducated\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 13.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]A few brothers come to you looking rather worried. They say %cultist% has been sitting with %uneducated% for a few hours now. When you ask what's the worry, they remind you that the cultist has a scarred forehead and speaks of incredibly strange things. Yeah. Those are the demands of Davkul, an example of one's committment. You do not understand what could possibly be wrong with that.\\n\\n You go and see the two men. %uneducated% looks up at you, smiling, and says the cultist actually has a lot to teach him. Perhaps he does, but you know Davkul's presence need not be felt in all, and if it desired being forced upon the world it would be a misapprehension of Davkul's purpose.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Show him the darkness.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Davkul does not want him.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        local background = this.new(\"scripts/skills/backgrounds/converted_cultist_background\");\n        _event.m.Uneducated.getSkills().removeByID(_event.m.Uneducated.getBackground().getID());\n        _event.m.Uneducated.getSkills().add(background);\n        background.buildDescription();\n        background.onSetAppearance();\n        this.List = [{\n            id = 13\n            icon = background.getIcon()\n            text = _event.m.Uneducated.getName() + \" has been converted to a Cultist\"\n        }];\n        _event.m.Cultist.getBaseProperties()[4] += 2;\n        _event.m.Cultist.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You nod and turn away. By next morning, %uneducated% is found with a fresh wound on his forehead, the blood of conversion and the price some must pay to devote themselves to Davkul. When you ask how he is doing, he only says a few words.%SPEECH_ON%Davkul is coming.%SPEECH_OFF%Shaking your head, you correct him.%SPEECH_ON%Davkul is not coming. Davkul AWAITS us all.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Davkul awaits.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            local background = this.new(\"scripts/skills/backgrounds/converted_cultist_background\");\n            _event.m.Uneducated.getSkills().removeByID(_event.m.Uneducated.getBackground().getID());\n            _event.m.Uneducated.getSkills().add(background);\n            background.buildDescription();\n            background.onSetAppearance();\n            this.List = [{\n                id = 13\n                icon = background.getIcon()\n                text = _event.m.Uneducated.getName() + \" has been converted to a Cultist\"\n            }];\n            _event.m.Cultist.getBaseProperties()[4] += 2;\n            _event.m.Cultist.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        this.Characters.push(_event.m.Uneducated.getImagePath());\n        _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to convert \" + _event.m.Uneducated.getName());\n        if (_event.m.Cultist.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You separate the two men, telling %uneducated% to go count some inventory. When he leaves, %cultist% sneers at you.%SPEECH_ON%Davkul awaits. You see him in your sleep. You see him in the nights. His darkness is coming. No light burns forever.%SPEECH_OFF%The man pauses and stares into your soul. And you stare back from somewhere not of your body. You can only see infinite blackness around you and a pip of light through which %cultist% is looking. Slowly, you float back toward the light and find yourself blinking and staring at the man. He bows.%SPEECH_ON%Apologies, captain, I did not know that Davkul had such plans.%SPEECH_OFF%Blinking again, you can only nod.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Davkul awaits us all.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            this.Characters.push(_event.m.Uneducated.getImagePath());\n            _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to convert \" + _event.m.Uneducated.getName());\n            if (_event.m.Cultist.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                    text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": ""
  },
  {
    "key": "72b3100bf74b26641d09acfc07c6133b40f7f74195ad6be1ae0f3316596a94c9",
    "original": "Davkul awaits us all.",
    "translation": "",
    "context": "Text = \"Davkul awaits us all.\""
  },
  {
    "key": "93fe0dd055c98f13822c43fab839fd41b131dd9860c0c3f40d84c53f66476a69",
    "original": "Davkul awaits.",
    "translation": "",
    "context": "Text = \"Davkul awaits.\""
  },
  {
    "key": "a19475139e920f98cc50e45632cce7a946dafc36d913c5adc2e07ad4cb31ce15",
    "original": "Davkul does not want him.",
    "translation": "",
    "context": "Text = \"Davkul does not want him.\""
  },
  {
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "2a86f75f07bd52b4c0b40a606729db9154768b99d502fc7024a6d90dbe16bbf6",
    "original": "Show him the darkness.",
    "translation": "",
    "context": "Text = \"Show him the darkness.\""
  },
  {
    "key": "04643374130a9792b7531d06e4c5c9adbdabffa7f7db2ced6800155ac65f235d",
    "original": "Was denied the chance to convert ",
    "translation": "",
    "context": "\"Was denied the chance to convert \" + _event.m.Uneducated.getName()"
  },
  {
    "key": "3ba9f75dfc42a5777f1a70e51013d433a47e88fd00d838aaa59df0d8bda32f8e",
    "original": "[img]gfx/ui/events/event_05.png[/img]A few brothers come to you looking rather worried. They say %cultist% has been sitting with %uneducated% for a few hours now. When you ask what's the worry, they remind you that the cultist has a scarred forehead and speaks of incredibly strange things. Yeah. Those are the demands of Davkul, an example of one's committment. You do not understand what could possibly be wrong with that.\n\n You go and see the two men. %uneducated% looks up at you, smiling, and says the cultist actually has a lot to teach him. Perhaps he does, but you know Davkul's presence need not be felt in all, and if it desired being forced upon the world it would be a misapprehension of Davkul's purpose.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]A few brothers come to you looking rather worried. They say %cultist% has been sitting with %uneducated% for a few hours now. When you ask what's the worry, they remind you that the cultist has a scarred forehead and speaks of incredibly strange things. Yeah. Those are the demands of Davkul, an example of one's committment. You do not understand what could possibly be wrong with that.\\n\\n You go and see the two men. %uneducated% looks up at you, smiling, and says the cultist actually has a lot to teach him. Perhaps he does, but you know Davkul's presence need not be felt in all, and if it desired being forced upon the world it would be a misapprehension of Davkul's purpose.\""
  },
  {
    "key": "339e000ac0739eb98228ed5f807cb8854d3233db3c439579d09ed72a80f082d4",
    "original": "[img]gfx/ui/events/event_05.png[/img]You nod and turn away. By next morning, %uneducated% is found with a fresh wound on his forehead, the blood of conversion and the price some must pay to devote themselves to Davkul. When you ask how he is doing, he only says a few words.%SPEECH_ON%Davkul is coming.%SPEECH_OFF%Shaking your head, you correct him.%SPEECH_ON%Davkul is not coming. Davkul AWAITS us all.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]You nod and turn away. By next morning, %uneducated% is found with a fresh wound on his forehead, the blood of conversion and the price some must pay to devote themselves to Davkul. When you ask how he is doing, he only says a few words.%SPEECH_ON%Davkul is coming.%SPEECH_OFF%Shaking your head, you correct him.%SPEECH_ON%Davkul is not coming. Davkul AWAITS us all.%SPEECH_OFF%\""
  },
  {
    "key": "1b8529bff07ccdec18af0546357e04f7aa15771a7005c792a0523d872363ae18",
    "original": "[img]gfx/ui/events/event_05.png[/img]You separate the two men, telling %uneducated% to go count some inventory. When he leaves, %cultist% sneers at you.%SPEECH_ON%Davkul awaits. You see him in your sleep. You see him in the nights. His darkness is coming. No light burns forever.%SPEECH_OFF%The man pauses and stares into your soul. And you stare back from somewhere not of your body. You can only see infinite blackness around you and a pip of light through which %cultist% is looking. Slowly, you float back toward the light and find yourself blinking and staring at the man. He bows.%SPEECH_ON%Apologies, captain, I did not know that Davkul had such plans.%SPEECH_OFF%Blinking again, you can only nod.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]You separate the two men, telling %uneducated% to go count some inventory. When he leaves, %cultist% sneers at you.%SPEECH_ON%Davkul awaits. You see him in your sleep. You see him in the nights. His darkness is coming. No light burns forever.%SPEECH_OFF%The man pauses and stares into your soul. And you stare back from somewhere not of your body. You can only see infinite blackness around you and a pip of light through which %cultist% is looking. Slowly, you float back toward the light and find yourself blinking and staring at the man. He bows.%SPEECH_ON%Apologies, captain, I did not know that Davkul had such plans.%SPEECH_OFF%Blinking again, you can only nod.\""
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