[
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Peddler.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\""
  },
  {
    "key": "b7bc905957708d55178221afa8341e37cfc0312b758eb88e1a3ea8b3e2fee3c6",
    "original": " suffers light wounds",
    "translation": "",
    "context": "_event.m.Peddler.getName() + \" suffers light wounds\""
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": ""
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "onDetermineStartScreen = function onDetermineStartScreen(){\n    return \"A\";;\n    return;\n}"
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "192e8afbcc5fddacb7a210be479b590db909a61800c4d86072ec1f5855863df2",
    "original": "A pleasure to do business with you.",
    "translation": "",
    "context": "Text = \"A pleasure to do business with you.\""
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 70 ? \"B\" : \"C\";;\n    return;\n}"
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
    "context": ""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.peddler_deal\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 40.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 70 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Peddler.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]%peddler% comes to you, rubbing the back of his neck and nervously pulling on the front of his shirt. He proposes a plan wherein he goes into town with a handful of goods to peddle around, as he's done so often in the past.\\n\\nOnly problem is that he doesn't yet have the goods - he has to buy them from some local in the nearby hinterlands. All he needs now is a bit of money to get him started and help purchase the goods. A sum of 500 crowns all in all. Naturally, as a partner, you will get a cut of the profits once it's all said and done.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Count me in!\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 70 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"You're a mercenary now. Time to leave that old life behind.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Peddler.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Peddler.getImagePath());\n        local money = this.Math.rand(100, 400);\n        this.World.Assets.addMoney(money);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You earn [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n        }];\n        _event.m.Peddler.getBaseProperties()[4] += 1;\n        _event.m.Peddler.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Peddler.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n        });\n        _event.m.Peddler.improveMood(2.0, \"Made a profit peddling wares\");\n        if (_event.m.Peddler.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Peddler.getMoodState()]\n                text = _event.m.Peddler.getName() + this.Const.MoodStateEvent[_event.m.Peddler.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]You hand %peddler% the crowns and off he goes.\\n\\nA few hours later, the peddler comes running up with a small lockbox in hand. The wily grin on his face is undeniable and he's unwittingly fistpumping as he glides to you. When he tries to speak, gasps of breath seize him. You hold your hand out, telling him to take his time. Settling down, the man hands over a heavy purse of coins, stating that it is your cut of the profits.\\n\\nBefore you can even say anything, the man wheels on his heels and jumps away, giddy with his success.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A pleasure to do business with you.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Peddler.getImagePath());\n            local money = this.Math.rand(100, 400);\n            this.World.Assets.addMoney(money);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You earn [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n            }];\n            _event.m.Peddler.getBaseProperties()[4] += 1;\n            _event.m.Peddler.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Peddler.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n            });\n            _event.m.Peddler.improveMood(2.0, \"Made a profit peddling wares\");\n            if (_event.m.Peddler.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Peddler.getMoodState()]\n                    text = _event.m.Peddler.getName() + this.Const.MoodStateEvent[_event.m.Peddler.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Peddler.getImagePath());\n        this.World.Assets.addMoney(-500);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n        }];\n        _event.m.Peddler.addLightInjury();\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/days_wounded.png\"\n            text = _event.m.Peddler.getName() + \" suffers light wounds\"\n        });\n        _event.m.Peddler.worsenMood(2, \"Failed in his plan and lost a large amount of money\");\n        if (_event.m.Peddler.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Peddler.getMoodState()]\n                text = _event.m.Peddler.getName() + this.Const.MoodStateEvent[_event.m.Peddler.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]%peddler% makes off and you tend to other business for the day.\\n\\nAs you step out of your tent hours later, you see a slumped shape in the distance, steadily heading your way. It appears to be the peddler. He carries nothing with him but a frown. As he gets closer, you begin to see the bruises that dot his body. He explains that while he managed to purchase the goods from his source, the actual townspeople weren't particularly warm to his selling tactics.\\n\\nWhat money was invested has been lost and %peddler% heads to a tent to nurse his wounds.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"But...\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Peddler.getImagePath());\n            this.World.Assets.addMoney(-500);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n            }];\n            _event.m.Peddler.addLightInjury();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/days_wounded.png\"\n                text = _event.m.Peddler.getName() + \" suffers light wounds\"\n            });\n            _event.m.Peddler.worsenMood(2, \"Failed in his plan and lost a large amount of money\");\n            if (_event.m.Peddler.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Peddler.getMoodState()]\n                    text = _event.m.Peddler.getName() + this.Const.MoodStateEvent[_event.m.Peddler.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "3916f238051e7e2ff31986d79497a33f32db0968f7c504ba091a5115bb97d2ac",
    "original": "But...",
    "translation": "",
    "context": "Text = \"But...\""
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 70 ? \"B\" : \"C\";;\n    return;\n}"
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
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.peddler_deal\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 40.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 70 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Peddler.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]%peddler% comes to you, rubbing the back of his neck and nervously pulling on the front of his shirt. He proposes a plan wherein he goes into town with a handful of goods to peddle around, as he's done so often in the past.\\n\\nOnly problem is that he doesn't yet have the goods - he has to buy them from some local in the nearby hinterlands. All he needs now is a bit of money to get him started and help purchase the goods. A sum of 500 crowns all in all. Naturally, as a partner, you will get a cut of the profits once it's all said and done.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Count me in!\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 70 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"You're a mercenary now. Time to leave that old life behind.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Peddler.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Peddler.getImagePath());\n        local money = this.Math.rand(100, 400);\n        this.World.Assets.addMoney(money);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You earn [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n        }];\n        _event.m.Peddler.getBaseProperties()[4] += 1;\n        _event.m.Peddler.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Peddler.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n        });\n        _event.m.Peddler.improveMood(2.0, \"Made a profit peddling wares\");\n        if (_event.m.Peddler.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Peddler.getMoodState()]\n                text = _event.m.Peddler.getName() + this.Const.MoodStateEvent[_event.m.Peddler.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]You hand %peddler% the crowns and off he goes.\\n\\nA few hours later, the peddler comes running up with a small lockbox in hand. The wily grin on his face is undeniable and he's unwittingly fistpumping as he glides to you. When he tries to speak, gasps of breath seize him. You hold your hand out, telling him to take his time. Settling down, the man hands over a heavy purse of coins, stating that it is your cut of the profits.\\n\\nBefore you can even say anything, the man wheels on his heels and jumps away, giddy with his success.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A pleasure to do business with you.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Peddler.getImagePath());\n            local money = this.Math.rand(100, 400);\n            this.World.Assets.addMoney(money);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You earn [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n            }];\n            _event.m.Peddler.getBaseProperties()[4] += 1;\n            _event.m.Peddler.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Peddler.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n            });\n            _event.m.Peddler.improveMood(2.0, \"Made a profit peddling wares\");\n            if (_event.m.Peddler.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Peddler.getMoodState()]\n                    text = _event.m.Peddler.getName() + this.Const.MoodStateEvent[_event.m.Peddler.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Peddler.getImagePath());\n        this.World.Assets.addMoney(-500);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n        }];\n        _event.m.Peddler.addLightInjury();\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/days_wounded.png\"\n            text = _event.m.Peddler.getName() + \" suffers light wounds\"\n        });\n        _event.m.Peddler.worsenMood(2, \"Failed in his plan and lost a large amount of money\");\n        if (_event.m.Peddler.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Peddler.getMoodState()]\n                text = _event.m.Peddler.getName() + this.Const.MoodStateEvent[_event.m.Peddler.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]%peddler% makes off and you tend to other business for the day.\\n\\nAs you step out of your tent hours later, you see a slumped shape in the distance, steadily heading your way. It appears to be the peddler. He carries nothing with him but a frown. As he gets closer, you begin to see the bruises that dot his body. He explains that while he managed to purchase the goods from his source, the actual townspeople weren't particularly warm to his selling tactics.\\n\\nWhat money was invested has been lost and %peddler% heads to a tent to nurse his wounds.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"But...\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Peddler.getImagePath());\n            this.World.Assets.addMoney(-500);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n            }];\n            _event.m.Peddler.addLightInjury();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/days_wounded.png\"\n                text = _event.m.Peddler.getName() + \" suffers light wounds\"\n            });\n            _event.m.Peddler.worsenMood(2, \"Failed in his plan and lost a large amount of money\");\n            if (_event.m.Peddler.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Peddler.getMoodState()]\n                    text = _event.m.Peddler.getName() + this.Const.MoodStateEvent[_event.m.Peddler.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "97914701eea8c7905fbab4d055d1ed591582065c16d3331263549ba04f155233",
    "original": "Count me in!",
    "translation": "",
    "context": "Text = \"Count me in!\""
  },
  {
    "key": "e78fef5b92d30b9af8a57a062c7f513085434a670365f2d8539f24880f440f66",
    "original": "Failed in his plan and lost a large amount of money",
    "translation": "",
    "context": ""
  },
  {
    "key": "2a7727ed0864e003ec0f8557b6fac94fd6ba9b89d74232a038211a08d9e1ded0",
    "original": "Made a profit peddling wares",
    "translation": "",
    "context": ""
  },
  {
    "key": "5bbbb67b08cc15c65464e2989f79b1f5eefd46df1e808dcd5ac0f66fb3cc9fc1",
    "original": "You earn [color=",
    "translation": "",
    "context": "\"You earn [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\""
  },
  {
    "key": "41eb00b728bb1f7d4f1c2c460ae754d1549736419b7e3c28dc49a7f1bfd47b78",
    "original": "You lose [color=",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\""
  },
  {
    "key": "60ea7076fcbf91990942789f352f3f296fd0bdd3418fdecd7d6fb1866c353e68",
    "original": "You're a mercenary now. Time to leave that old life behind.",
    "translation": "",
    "context": "Text = \"You're a mercenary now. Time to leave that old life behind.\""
  },
  {
    "key": "4c7191ec29bcad5f88c9782f841c0151bf3019e2218c080ea4787ee82639d2e1",
    "original": "[/color] Crowns",
    "translation": "",
    "context": "\"You earn [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\""
  },
  {
    "key": "87785a6807baf1ba3ef80c9279920099f53cfc1daaad6ca380ee14c218f2e958",
    "original": "[img]gfx/ui/events/event_04.png[/img]You hand %peddler% the crowns and off he goes.\n\nA few hours later, the peddler comes running up with a small lockbox in hand. The wily grin on his face is undeniable and he's unwittingly fistpumping as he glides to you. When he tries to speak, gasps of breath seize him. You hold your hand out, telling him to take his time. Settling down, the man hands over a heavy purse of coins, stating that it is your cut of the profits.\n\nBefore you can even say anything, the man wheels on his heels and jumps away, giddy with his success.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_04.png[/img]You hand %peddler% the crowns and off he goes.\\n\\nA few hours later, the peddler comes running up with a small lockbox in hand. The wily grin on his face is undeniable and he's unwittingly fistpumping as he glides to you. When he tries to speak, gasps of breath seize him. You hold your hand out, telling him to take his time. Settling down, the man hands over a heavy purse of coins, stating that it is your cut of the profits.\\n\\nBefore you can even say anything, the man wheels on his heels and jumps away, giddy with his success.\""
  },
  {
    "key": "ae9b4f1c66e768ceb19ee84211db63bb0943be86a11c33034fa508021e34ad5b",
    "original": "[img]gfx/ui/events/event_05.png[/img]%peddler% comes to you, rubbing the back of his neck and nervously pulling on the front of his shirt. He proposes a plan wherein he goes into town with a handful of goods to peddle around, as he's done so often in the past.\n\nOnly problem is that he doesn't yet have the goods - he has to buy them from some local in the nearby hinterlands. All he needs now is a bit of money to get him started and help purchase the goods. A sum of 500 crowns all in all. Naturally, as a partner, you will get a cut of the profits once it's all said and done.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]%peddler% comes to you, rubbing the back of his neck and nervously pulling on the front of his shirt. He proposes a plan wherein he goes into town with a handful of goods to peddle around, as he's done so often in the past.\\n\\nOnly problem is that he doesn't yet have the goods - he has to buy them from some local in the nearby hinterlands. All he needs now is a bit of money to get him started and help purchase the goods. A sum of 500 crowns all in all. Naturally, as a partner, you will get a cut of the profits once it's all said and done.\""
  },
  {
    "key": "1617da1eff460b608f96aa3bed6bd43a55b82bffd10c847c1b5df549442eafd5",
    "original": "[img]gfx/ui/events/event_05.png[/img]%peddler% makes off and you tend to other business for the day.\n\nAs you step out of your tent hours later, you see a slumped shape in the distance, steadily heading your way. It appears to be the peddler. He carries nothing with him but a frown. As he gets closer, you begin to see the bruises that dot his body. He explains that while he managed to purchase the goods from his source, the actual townspeople weren't particularly warm to his selling tactics.\n\nWhat money was invested has been lost and %peddler% heads to a tent to nurse his wounds.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]%peddler% makes off and you tend to other business for the day.\\n\\nAs you step out of your tent hours later, you see a slumped shape in the distance, steadily heading your way. It appears to be the peddler. He carries nothing with him but a frown. As he gets closer, you begin to see the bruises that dot his body. He explains that while he managed to purchase the goods from his source, the actual townspeople weren't particularly warm to his selling tactics.\\n\\nWhat money was invested has been lost and %peddler% heads to a tent to nurse his wounds.\""
  },
  {
    "key": "d77afa2604514fbb33e439e67a1c5f47eb5b0dd68be42a644af4fd56b423bdd6",
    "original": "]+1[/color] Resolve",
    "translation": "",
    "context": "_event.m.Peddler.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\""
  },
  {
    "key": "5076c811af44eba319a7c380d69d5432e23a681021f4d45b5c0a88dbe01ca62f",
    "original": "]500[/color] Crowns",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\""
  },
  {
    "key": "06e39f9dd2c69f08fb3c9a56e1dfe05a13cb18226901e92f679f790f3dfb1ea1",
    "original": "peddler",
    "translation": "",
    "context": ""
  }
]