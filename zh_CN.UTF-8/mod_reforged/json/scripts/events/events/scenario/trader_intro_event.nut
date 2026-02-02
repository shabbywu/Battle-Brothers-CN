[
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "400ddfec109fbcae05c9db30ceb28c1a165d637dac77612d5739cb79678798c4",
    "original": "Ah, we'll be fine.",
    "translation": "",
    "context": "Text = \"Ah, we'll be fine.\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.trader_scenario_intro\";\n    this.m.IsSpecial = True;\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n        local brothers = this.World.getPlayerRoster().getAll();\n        this.Characters.push(brothers[0].getImagePath());\n        this.Characters.push(brothers[1].getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_95.png[/img]The corpses are abuzz with flies and %ch1% stands amidst the swarm like he built the deathly totem which brought their presence. He turns to you.%SPEECH_ON%Greenskins did this one. No man can hew a head in half like that, and no sane man would stack them in such a manner. And there's goblin poison on them arrow tips.%SPEECH_OFF% %ch2% nods.%SPEECH_ON%Yesterday we find that merchant hanged by brigands, now this. The roads are getting too dangerous for a wagon carrying shine. Now, I ain't saying my swordhand ain't worth its weight in salt, but with just the two of us on duty we're throwing dice by the hour. Sir, you should look into hiring more guard.%SPEECH_OFF%\"\n        Image = \"\"\n        Banner = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Ah, we'll be fine.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        },{\n            Text = \"We'll hire more guards and then some!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n            local brothers = this.World.getPlayerRoster().getAll();\n            this.Characters.push(brothers[0].getImagePath());\n            this.Characters.push(brothers[1].getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n        local brothers = this.World.getPlayerRoster().getAll();\n        this.Characters.push(brothers[0].getImagePath());\n        this.Characters.push(brothers[1].getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_95.png[/img]You shake your head.%SPEECH_ON%No. What we'll be doing is fighting back and then some. I aim to hire sellswords to fit a company of making, and if your swordhands want to earn a steady keep, you two can be the first.%SPEECH_OFF%\"\n        Image = \"\"\n        Banner = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Onwards, now, we have wares to sell!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n            local brothers = this.World.getPlayerRoster().getAll();\n            this.Characters.push(brothers[0].getImagePath());\n            this.Characters.push(brothers[1].getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n        local brothers = this.World.getPlayerRoster().getAll();\n        this.Characters.push(brothers[0].getImagePath());\n        this.Characters.push(brothers[1].getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_95.png[/img]You shake your head.%SPEECH_ON%We're hardly making a profit as is. I can't spare the coin to hire any more guards. Not unless we find a new profitable trade route, that is. And I aim to do just that!%SPEECH_OFF%\"\n        Image = \"\"\n        Banner = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Onwards, now, we have wares to sell!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n            local brothers = this.World.getPlayerRoster().getAll();\n            this.Characters.push(brothers[0].getImagePath());\n            this.Characters.push(brothers[1].getImagePath());\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "ID = \"B\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"B\";;\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.trader_scenario_intro\";\n    this.m.IsSpecial = True;\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n        local brothers = this.World.getPlayerRoster().getAll();\n        this.Characters.push(brothers[0].getImagePath());\n        this.Characters.push(brothers[1].getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_95.png[/img]The corpses are abuzz with flies and %ch1% stands amidst the swarm like he built the deathly totem which brought their presence. He turns to you.%SPEECH_ON%Greenskins did this one. No man can hew a head in half like that, and no sane man would stack them in such a manner. And there's goblin poison on them arrow tips.%SPEECH_OFF% %ch2% nods.%SPEECH_ON%Yesterday we find that merchant hanged by brigands, now this. The roads are getting too dangerous for a wagon carrying shine. Now, I ain't saying my swordhand ain't worth its weight in salt, but with just the two of us on duty we're throwing dice by the hour. Sir, you should look into hiring more guard.%SPEECH_OFF%\"\n        Image = \"\"\n        Banner = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Ah, we'll be fine.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        },{\n            Text = \"We'll hire more guards and then some!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n            local brothers = this.World.getPlayerRoster().getAll();\n            this.Characters.push(brothers[0].getImagePath());\n            this.Characters.push(brothers[1].getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n        local brothers = this.World.getPlayerRoster().getAll();\n        this.Characters.push(brothers[0].getImagePath());\n        this.Characters.push(brothers[1].getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_95.png[/img]You shake your head.%SPEECH_ON%No. What we'll be doing is fighting back and then some. I aim to hire sellswords to fit a company of making, and if your swordhands want to earn a steady keep, you two can be the first.%SPEECH_OFF%\"\n        Image = \"\"\n        Banner = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Onwards, now, we have wares to sell!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n            local brothers = this.World.getPlayerRoster().getAll();\n            this.Characters.push(brothers[0].getImagePath());\n            this.Characters.push(brothers[1].getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n        local brothers = this.World.getPlayerRoster().getAll();\n        this.Characters.push(brothers[0].getImagePath());\n        this.Characters.push(brothers[1].getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_95.png[/img]You shake your head.%SPEECH_ON%We're hardly making a profit as is. I can't spare the coin to hire any more guards. Not unless we find a new profitable trade route, that is. And I aim to do just that!%SPEECH_OFF%\"\n        Image = \"\"\n        Banner = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Onwards, now, we have wares to sell!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Banner = \"ui/banners/\" + this.World.Assets.getBanner() + \"s.png\";\n            local brothers = this.World.getPlayerRoster().getAll();\n            this.Characters.push(brothers[0].getImagePath());\n            this.Characters.push(brothers[1].getImagePath());\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return \"C\";;\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "ID = \"C\""
  },
  {
    "key": "5e53bd4051b3c980f211df5319fc15825327d0cda6442b9b8f48455527fbf196",
    "original": "Onwards, now, we have wares to sell!",
    "translation": "",
    "context": "Text = \"Onwards, now, we have wares to sell!\""
  },
  {
    "key": "b46ac17ae62eef7292eb168d0faf2aafd453072ad6f9e522b022e97c45a476d4",
    "original": "The Trading Caravan",
    "translation": "",
    "context": "this.m.Title = \"The Trading Caravan\""
  },
  {
    "key": "5790947451f0c3957cb5361ea8f76428d351a04a110bfc67b690702a6f5c72e7",
    "original": "We'll hire more guards and then some!",
    "translation": "",
    "context": "Text = \"We'll hire more guards and then some!\""
  },
  {
    "key": "f7503f3b59c0f77a36b380b7b72240d265e7ee7a574790a743e68f5078c3ab46",
    "original": "[img]gfx/ui/events/event_95.png[/img]The corpses are abuzz with flies and %ch1% stands amidst the swarm like he built the deathly totem which brought their presence. He turns to you.%SPEECH_ON%Greenskins did this one. No man can hew a head in half like that, and no sane man would stack them in such a manner. And there's goblin poison on them arrow tips.%SPEECH_OFF% %ch2% nods.%SPEECH_ON%Yesterday we find that merchant hanged by brigands, now this. The roads are getting too dangerous for a wagon carrying shine. Now, I ain't saying my swordhand ain't worth its weight in salt, but with just the two of us on duty we're throwing dice by the hour. Sir, you should look into hiring more guard.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_95.png[/img]The corpses are abuzz with flies and %ch1% stands amidst the swarm like he built the deathly totem which brought their presence. He turns to you.%SPEECH_ON%Greenskins did this one. No man can hew a head in half like that, and no sane man would stack them in such a manner. And there's goblin poison on them arrow tips.%SPEECH_OFF% %ch2% nods.%SPEECH_ON%Yesterday we find that merchant hanged by brigands, now this. The roads are getting too dangerous for a wagon carrying shine. Now, I ain't saying my swordhand ain't worth its weight in salt, but with just the two of us on duty we're throwing dice by the hour. Sir, you should look into hiring more guard.%SPEECH_OFF%\""
  },
  {
    "key": "ee10e96c60aa1be2771b03e3cd4caa72ed641446c038d02e442490354c1c5f8c",
    "original": "[img]gfx/ui/events/event_95.png[/img]You shake your head.%SPEECH_ON%No. What we'll be doing is fighting back and then some. I aim to hire sellswords to fit a company of making, and if your swordhands want to earn a steady keep, you two can be the first.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_95.png[/img]You shake your head.%SPEECH_ON%No. What we'll be doing is fighting back and then some. I aim to hire sellswords to fit a company of making, and if your swordhands want to earn a steady keep, you two can be the first.%SPEECH_OFF%\""
  },
  {
    "key": "73b21104008b9157459484c993884596d2f5a1ac6533a87c85deb37573547d15",
    "original": "[img]gfx/ui/events/event_95.png[/img]You shake your head.%SPEECH_ON%We're hardly making a profit as is. I can't spare the coin to hire any more guards. Not unless we find a new profitable trade route, that is. And I aim to do just that!%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_95.png[/img]You shake your head.%SPEECH_ON%We're hardly making a profit as is. I can't spare the coin to hire any more guards. Not unless we find a new profitable trade route, that is. And I aim to do just that!%SPEECH_OFF%\""
  },
  {
    "key": "0b2ace5def2ecf1234ae0db2a062b83fe40dd330121844b37bc8bdfb6b2f3ea5",
    "original": "ch1",
    "translation": "",
    "context": ""
  },
  {
    "key": "f7088d7f354fadfc6fe69df2f0a9f2057a715e9a62672258a88ee200e72f1c22",
    "original": "ch2",
    "translation": "",
    "context": ""
  }
]