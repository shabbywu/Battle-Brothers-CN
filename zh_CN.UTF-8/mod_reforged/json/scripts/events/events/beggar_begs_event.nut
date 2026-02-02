[
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
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.beggar_begs\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 14.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Beggar.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{As you take stock of the inventory, you can't help but notice %beggar% lingering in your peripheral. Sighing, you finally turn to the former beggar and ask what he wants. Like the poorest of the poor he holds a hand out, asking if maybe you could spare a few crowns. | With practiced theatrics, %beggar% approaches you and lets loose a long tale of troubles and squabbles and empty bottles. The former beggar is down on his luck, apparently, and just needs a few extra crowns to get by. | %otherguy% tells you that %beggar% is going around the camp asking for crowns. Apparently the former beggar just needs a little more, expressing a longwinded sob story to anyone who'll listen. Hearing this news, you go to see the man yourself but before you can even get a word out the man lets loose his long narrative. Finished, he looks you in the eye, trying to gauge whether or not you'll give him something. | Apparently %beggar% the former beggar needs some help. He's come to you, begging for a few crowns to help him get by. The man looks like he's in a poor state, but he's had plenty of practice of actually being poor so it's hard to tell if he's being honest or not.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Get back to work!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Here you go, have a few crowns.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Beggar.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Beggar.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{You tell the beggar you'll cross his hands with a sword if he doesn't get back to work. The man shrugs and pretty much does as told. That was easier than expected. | The beggar's shoulders sag as you tell him to get back to work. You feel a little bad, but then remember that's how they get ya.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Ok.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Beggar.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Beggar.getImagePath());\n        this.World.Assets.addMoney(-10);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]10[/color] Crowns\"\n        });\n        _event.m.Beggar.improveMood(0.5, \"Got a few extra crowns from you\");\n        if (_event.m.Beggar.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Beggar.getMoodState()]\n                text = _event.m.Beggar.getName() + this.Const.MoodStateEvent[_event.m.Beggar.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{The beggar takes the crowns and with a smile gets right back to work. | Tired of his games, you give the beggar a few crowns and tell him to get back to work. He bows and thanks you and, surprisingly, actually gets back to work.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Ok.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Beggar.getImagePath());\n            this.World.Assets.addMoney(-10);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]10[/color] Crowns\"\n            });\n            _event.m.Beggar.improveMood(0.5, \"Got a few extra crowns from you\");\n            if (_event.m.Beggar.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Beggar.getMoodState()]\n                    text = _event.m.Beggar.getName() + this.Const.MoodStateEvent[_event.m.Beggar.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"C\";;\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.beggar_begs\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 14.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Beggar.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{As you take stock of the inventory, you can't help but notice %beggar% lingering in your peripheral. Sighing, you finally turn to the former beggar and ask what he wants. Like the poorest of the poor he holds a hand out, asking if maybe you could spare a few crowns. | With practiced theatrics, %beggar% approaches you and lets loose a long tale of troubles and squabbles and empty bottles. The former beggar is down on his luck, apparently, and just needs a few extra crowns to get by. | %otherguy% tells you that %beggar% is going around the camp asking for crowns. Apparently the former beggar just needs a little more, expressing a longwinded sob story to anyone who'll listen. Hearing this news, you go to see the man yourself but before you can even get a word out the man lets loose his long narrative. Finished, he looks you in the eye, trying to gauge whether or not you'll give him something. | Apparently %beggar% the former beggar needs some help. He's come to you, begging for a few crowns to help him get by. The man looks like he's in a poor state, but he's had plenty of practice of actually being poor so it's hard to tell if he's being honest or not.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Get back to work!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Here you go, have a few crowns.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Beggar.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Beggar.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{You tell the beggar you'll cross his hands with a sword if he doesn't get back to work. The man shrugs and pretty much does as told. That was easier than expected. | The beggar's shoulders sag as you tell him to get back to work. You feel a little bad, but then remember that's how they get ya.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Ok.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Beggar.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Beggar.getImagePath());\n        this.World.Assets.addMoney(-10);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]10[/color] Crowns\"\n        });\n        _event.m.Beggar.improveMood(0.5, \"Got a few extra crowns from you\");\n        if (_event.m.Beggar.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Beggar.getMoodState()]\n                text = _event.m.Beggar.getName() + this.Const.MoodStateEvent[_event.m.Beggar.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{The beggar takes the crowns and with a smile gets right back to work. | Tired of his games, you give the beggar a few crowns and tell him to get back to work. He bows and thanks you and, surprisingly, actually gets back to work.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Ok.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Beggar.getImagePath());\n            this.World.Assets.addMoney(-10);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]10[/color] Crowns\"\n            });\n            _event.m.Beggar.improveMood(0.5, \"Got a few extra crowns from you\");\n            if (_event.m.Beggar.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Beggar.getMoodState()]\n                    text = _event.m.Beggar.getName() + this.Const.MoodStateEvent[_event.m.Beggar.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "d33522a8ab796f289cdf3cfaec75dcf39e76cb97adfea78ba44b25a30f1dbabc",
    "original": "Get back to work!",
    "translation": "",
    "context": "Text = \"Get back to work!\""
  },
  {
    "key": "c17e6bbeea6daceae642dce07b8642eb87a9e220b472c9d169fcfb5480942013",
    "original": "Got a few extra crowns from you",
    "translation": "",
    "context": ""
  },
  {
    "key": "2842ae5e6e0a6ae224a18ac452894a720414f894904f115fba71c7b917416b5c",
    "original": "Here you go, have a few crowns.",
    "translation": "",
    "context": "Text = \"Here you go, have a few crowns.\""
  },
  {
    "key": "d87d3680146bd7ab0891a57de9e96fe87e53d32b5970b14519138ae3e8e24840",
    "original": "Ok.",
    "translation": "",
    "context": "Text = \"Ok.\""
  },
  {
    "key": "a13fe5411cacd783f255c572bdc6c56739d54be420a516b38fb8ae49baa5a6d3",
    "original": "You spend [color=",
    "translation": "",
    "context": "\"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]10[/color] Crowns\""
  },
  {
    "key": "fc8c67b14692f4c7395120a7c82429040092f2995a6eeb867eeaad653b42ebb6",
    "original": "[img]gfx/ui/events/event_05.png[/img]{As you take stock of the inventory, you can't help but notice %beggar% lingering in your peripheral. Sighing, you finally turn to the former beggar and ask what he wants. Like the poorest of the poor he holds a hand out, asking if maybe you could spare a few crowns. | With practiced theatrics, %beggar% approaches you and lets loose a long tale of troubles and squabbles and empty bottles. The former beggar is down on his luck, apparently, and just needs a few extra crowns to get by. | %otherguy% tells you that %beggar% is going around the camp asking for crowns. Apparently the former beggar just needs a little more, expressing a longwinded sob story to anyone who'll listen. Hearing this news, you go to see the man yourself but before you can even get a word out the man lets loose his long narrative. Finished, he looks you in the eye, trying to gauge whether or not you'll give him something. | Apparently %beggar% the former beggar needs some help. He's come to you, begging for a few crowns to help him get by. The man looks like he's in a poor state, but he's had plenty of practice of actually being poor so it's hard to tell if he's being honest or not.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]{As you take stock of the inventory, you can't help but notice %beggar% lingering in your peripheral. Sighing, you finally turn to the former beggar and ask what he wants. Like the poorest of the poor he holds a hand out, asking if maybe you could spare a few crowns. | With practiced theatrics, %beggar% approaches you and lets loose a long tale of troubles and squabbles and empty bottles. The former beggar is down on his luck, apparently, and just needs a few extra crowns to get by. | %otherguy% tells you that %beggar% is going around the camp asking for crowns. Apparently the former beggar just needs a little more, expressing a longwinded sob story to anyone who'll listen. Hearing this news, you go to see the man yourself but before you can even get a word out the man lets loose his long narrative. Finished, he looks you in the eye, trying to gauge whether or not you'll give him something. | Apparently %beggar% the former beggar needs some help. He's come to you, begging for a few crowns to help him get by. The man looks like he's in a poor state, but he's had plenty of practice of actually being poor so it's hard to tell if he's being honest or not.}\""
  },
  {
    "key": "344e35046b654ce92427099d937d053804b758597a2c12cbb491137142feb0ff",
    "original": "[img]gfx/ui/events/event_05.png[/img]{The beggar takes the crowns and with a smile gets right back to work. | Tired of his games, you give the beggar a few crowns and tell him to get back to work. He bows and thanks you and, surprisingly, actually gets back to work.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]{The beggar takes the crowns and with a smile gets right back to work. | Tired of his games, you give the beggar a few crowns and tell him to get back to work. He bows and thanks you and, surprisingly, actually gets back to work.}\""
  },
  {
    "key": "fae08b4ffac8234faf23faaac85bf4c4c13f6995cc08f5cafa78002201af9818",
    "original": "[img]gfx/ui/events/event_05.png[/img]{You tell the beggar you'll cross his hands with a sword if he doesn't get back to work. The man shrugs and pretty much does as told. That was easier than expected. | The beggar's shoulders sag as you tell him to get back to work. You feel a little bad, but then remember that's how they get ya.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]{You tell the beggar you'll cross his hands with a sword if he doesn't get back to work. The man shrugs and pretty much does as told. That was easier than expected. | The beggar's shoulders sag as you tell him to get back to work. You feel a little bad, but then remember that's how they get ya.}\""
  },
  {
    "key": "cb7ddaa09ecf6027fd1919408035fe8b6f2607fca52804566206534023713643",
    "original": "]10[/color] Crowns",
    "translation": "",
    "context": "\"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]10[/color] Crowns\""
  },
  {
    "key": "0d5afdf3c070bed1b01f73b8b9ee8b840ea7071feb38bce431b4d8dd6447dd78",
    "original": "beggar",
    "translation": "",
    "context": ""
  },
  {
    "key": "f5150ee304c068edbef20dacf2450f7ec057d0c288d7fea3ec30ea4616f98d6d",
    "original": "otherguy",
    "translation": "",
    "context": ""
  }
]