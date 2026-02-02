[
  {
    "key": "caedd0c6d0a4d87b0d954ec6d9fe2cdf2ed71a511af202d529c83d279488b764",
    "original": " improve",
    "translation": "",
    "context": "\"Your relations to \" + _event.m.NobleHouse.getName() + \" improve\""
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
    "context": ""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.raiders_origin_redemption_\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 14.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk.getImagePath());\n        this.Banner = _event.m.NobleHouse.getUIBannerSmall();\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_40.png[/img]{%monk% is a monk who, by this point, is very, very far from his home. The days on the road alone are hard enough, and the days off it being filled with violence and pillaging even worse so. It's no surprise that he has come to you with an offer. Despite being with your company for some time now, it is clear that he is still a man of civilization.\\n\\n He explains an old law: as a raider you are persona non grata, but as a raider with a lot of money there is a chance you can buy your way back into dealing with the nobles of this land. The monk says he knows whose palms to cross. Apparently, %noblehouse% is interested in 'opening channels', and they would just appreciate %crowns% crowns to settle into new affairs. Civilized indeed.}\"\n        Banner = \"\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Make it happen.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"We have no need for this.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk.getImagePath());\n            this.Banner = _event.m.NobleHouse.getUIBannerSmall();\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk.getImagePath());\n        this.Banner = _event.m.NobleHouse.getUIBannerSmall();\n        this.World.Flags.set(\"IsRaidersRedemption\", True);\n        this.World.Assets.addBusinessReputation(50);\n        this.World.Assets.addMoney(-2000);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-2000[/color] Crowns\"\n        });\n        _event.m.NobleHouse.addPlayerRelation(20.0, \"Was bribed to have dealings with you\");\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/relations.png\"\n            text = \"Your relations to \" + _event.m.NobleHouse.getName() + \" improve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_31.png[/img]{You agree to the monk's notions. Together, you meet with an intermediary and one of the nobles himself. The meeting takes place in secret and at first there is a lot of dramatic cloak and dagger nonsense. Men wearing black and keeping their hands to their weapons, nobles whispering to one another, but after it's all said and done... you have a good long drink together. In the future, %noblehouse% will be more open to dealings.}\"\n        Banner = \"\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Doing mercenary work for them would further mend relations.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk.getImagePath());\n            this.Banner = _event.m.NobleHouse.getUIBannerSmall();\n            this.World.Flags.set(\"IsRaidersRedemption\", True);\n            this.World.Assets.addBusinessReputation(50);\n            this.World.Assets.addMoney(-2000);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-2000[/color] Crowns\"\n            });\n            _event.m.NobleHouse.addPlayerRelation(20.0, \"Was bribed to have dealings with you\");\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/relations.png\"\n                text = \"Your relations to \" + _event.m.NobleHouse.getName() + \" improve\"\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "42a85f1543c52e83749c99828767d05859c81fc6e5b966afffff6cf71a0aacba",
    "original": "Doing mercenary work for them would further mend relations.",
    "translation": "",
    "context": "Text = \"Doing mercenary work for them would further mend relations.\""
  },
  {
    "key": "a9d204558ef4d95bb504254a2dc5731a40042a7e165256e382018715ad8ce92c",
    "original": "Make it happen.",
    "translation": "",
    "context": "Text = \"Make it happen.\""
  },
  {
    "key": "05a41c6a0f54cf9d1d6c00e644d60e5a2294a107254dd775d0aa2a00fbeeea01",
    "original": "Was bribed to have dealings with you",
    "translation": "",
    "context": ""
  },
  {
    "key": "23faba54ae21ced170ee3390582b2bb83b0cc120ce7197282741e4c0e10f62f5",
    "original": "We have no need for this.",
    "translation": "",
    "context": "Text = \"We have no need for this.\""
  },
  {
    "key": "41eb00b728bb1f7d4f1c2c460ae754d1549736419b7e3c28dc49a7f1bfd47b78",
    "original": "You lose [color=",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-2000[/color] Crowns\""
  },
  {
    "key": "fec17c7094862c54df91db2976787ea186bbdac11ee00260066bf635cfab6a9b",
    "original": "Your relations to ",
    "translation": "",
    "context": "\"Your relations to \" + _event.m.NobleHouse.getName() + \" improve\""
  },
  {
    "key": "025118c20d4a9567d364e364269abde46f9b9923ecebcefa8f69ccb3cbcf83fa",
    "original": "[img]gfx/ui/events/event_31.png[/img]{You agree to the monk's notions. Together, you meet with an intermediary and one of the nobles himself. The meeting takes place in secret and at first there is a lot of dramatic cloak and dagger nonsense. Men wearing black and keeping their hands to their weapons, nobles whispering to one another, but after it's all said and done... you have a good long drink together. In the future, %noblehouse% will be more open to dealings.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_31.png[/img]{You agree to the monk's notions. Together, you meet with an intermediary and one of the nobles himself. The meeting takes place in secret and at first there is a lot of dramatic cloak and dagger nonsense. Men wearing black and keeping their hands to their weapons, nobles whispering to one another, but after it's all said and done... you have a good long drink together. In the future, %noblehouse% will be more open to dealings.}\""
  },
  {
    "key": "7c0af74d0a50e799a3bc788ee5c90b04c2b92aeaef2be599eee81bb8d029156e",
    "original": "[img]gfx/ui/events/event_40.png[/img]{%monk% is a monk who, by this point, is very, very far from his home. The days on the road alone are hard enough, and the days off it being filled with violence and pillaging even worse so. It's no surprise that he has come to you with an offer. Despite being with your company for some time now, it is clear that he is still a man of civilization.\n\n He explains an old law: as a raider you are persona non grata, but as a raider with a lot of money there is a chance you can buy your way back into dealing with the nobles of this land. The monk says he knows whose palms to cross. Apparently, %noblehouse% is interested in 'opening channels', and they would just appreciate %crowns% crowns to settle into new affairs. Civilized indeed.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_40.png[/img]{%monk% is a monk who, by this point, is very, very far from his home. The days on the road alone are hard enough, and the days off it being filled with violence and pillaging even worse so. It's no surprise that he has come to you with an offer. Despite being with your company for some time now, it is clear that he is still a man of civilization.\\n\\n He explains an old law: as a raider you are persona non grata, but as a raider with a lot of money there is a chance you can buy your way back into dealing with the nobles of this land. The monk says he knows whose palms to cross. Apparently, %noblehouse% is interested in 'opening channels', and they would just appreciate %crowns% crowns to settle into new affairs. Civilized indeed.}\""
  },
  {
    "key": "effaca274bfa779f55f2c1ac0f983b4a59b0c9ee509144a17ed8ab5dbc86988e",
    "original": "]-2000[/color] Crowns",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-2000[/color] Crowns\""
  },
  {
    "key": "035cc86ef9bbf2a849f078a92bc05fe235ff0849934d9e27168ae672c8c4dd07",
    "original": "crowns",
    "translation": "",
    "context": ""
  },
  {
    "key": "9b550d15e298bd082ff0378694e05688e79f6a710a600ec00b834e8b15d6f6e4",
    "original": "monk",
    "translation": "",
    "context": ""
  },
  {
    "key": "d2e22c85ac64c2d01da1056d29f141def5b39a1fbd88b8b7ed1037b8c9e416ca",
    "original": "noblehouse",
    "translation": "",
    "context": ""
  }
]