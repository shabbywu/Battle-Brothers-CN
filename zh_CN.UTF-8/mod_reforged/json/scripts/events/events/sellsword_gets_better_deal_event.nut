[
  {
    "key": "d80b67a57eb47c185bdec0a769eb08d747b60a1da677a103d32f561767250e3b",
    "original": " crowns a day",
    "translation": "",
    "context": "_event.m.Sellsword.getName() + \" is now paid \" + _event.m.Sellsword.getDailyCost() + \" crowns a day\""
  },
  {
    "key": "4f99b5848ed1ae2ac298cef848769afd313fb2ed657d1fc5d28fcd9871c0cf51",
    "original": " is now paid ",
    "translation": "",
    "context": "_event.m.Sellsword.getName() + \" is now paid \" + _event.m.Sellsword.getDailyCost() + \" crowns a day\""
  },
  {
    "key": "483ea1a4210799201d267693d1e5f26e000ee04d333fbd89a190fae8ba5fa9ad",
    "original": " leaves the ",
    "translation": "",
    "context": "_event.m.Sellsword.getName() + \" leaves the \" + this.World.Assets.getName()"
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
    "key": "946fc017473129527e95ca3397429e4a8b7f94976682944a05c5cec4684f2ef1",
    "original": "A damn shame.",
    "translation": "",
    "context": "Text = \"A damn shame.\""
  },
  {
    "key": "36ab50b5bd39ec2fbb088d5d19e2201fbcbbeeafc1a5e92e29fce9a10937bd7b",
    "original": "A good man doesn't come cheap.",
    "translation": "",
    "context": "Text = \"A good man doesn't come cheap.\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.sellsword_gets_better_deal\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 35.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n        this.World.getPlayerRoster().remove(_event.m.Sellsword);\n        return 0;;\n        return;\n    };\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= _event.m.Sellsword.getLevel() * 10 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"D\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]While counting inventory, %sellsword% joins your side, mindlessly picking at this sword or that shield. You set your quill pen down and ask him what's up for he sure as shit isn't here to count anything. He explains that another company wishes to use his swordhand - and they're willing to pay more. You ask how much and he holds up his hands to count.%SPEECH_ON%They're talking %newpay% crowns a day.%SPEECH_OFF%He's earning %pay% crowns a day with you.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I see, time to part ways then.\"\n            getResult = function getResult(_event){\n                _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n                this.World.getPlayerRoster().remove(_event.m.Sellsword);\n                return 0;;\n                return;\n            }\n        },{\n            Text = \"There must be a way I can talk you out of this.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= _event.m.Sellsword.getLevel() * 10 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"Then I shall match their offer.\"\n            getResult = function getResult(_event){\n                return \"D\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        _event.m.Sellsword.getFlags().add(\"convincedToStayWithCompany\");\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\\n\\nThe sellsword looks at the ground, thinking your words over. Finally he nods and agrees to stay. You tell him he's made the right choice. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Glad you're staying with us.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            _event.m.Sellsword.getFlags().add(\"convincedToStayWithCompany\");\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.List.push({\n            id = 13\n            icon = \"ui/icons/kills.png\"\n            text = _event.m.Sellsword.getName() + \" leaves the \" + this.World.Assets.getName()\n        });\n        _event.m.Sellsword.getItems().transferToStash(this.World.Assets.getStash());\n        _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n        this.World.getPlayerRoster().remove(_event.m.Sellsword);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_16.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\\n\\n The sellsword looks at the ground, thinking your words over. Finally he shakes his head and purses his lips with a look of 'sorry'. You tell him he's making the wrong choice, but he's having none of it. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%The arrows are a little low, but all you can think about is figuring out how to replace a good swordhand such as he.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A damn shame.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.List.push({\n                id = 13\n                icon = \"ui/icons/kills.png\"\n                text = _event.m.Sellsword.getName() + \" leaves the \" + this.World.Assets.getName()\n            });\n            _event.m.Sellsword.getItems().transferToStash(this.World.Assets.getStash());\n            _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n            this.World.getPlayerRoster().remove(_event.m.Sellsword);\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        _event.m.Sellsword.getBaseProperties()[3] += _event.m.Amount;\n        _event.m.Sellsword.getSkills().update();\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_daily_money.png\"\n            text = _event.m.Sellsword.getName() + \" is now paid \" + _event.m.Sellsword.getDailyCost() + \" crowns a day\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"D\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img] You sigh. The man nods and starts to leave, but you stop him. You'll pay the amount so he can stay. The %companyname% simply cannot afford to lose a man like him.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A good man doesn't come cheap.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            _event.m.Sellsword.getBaseProperties()[3] += _event.m.Amount;\n            _event.m.Sellsword.getSkills().update();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_daily_money.png\"\n                text = _event.m.Sellsword.getName() + \" is now paid \" + _event.m.Sellsword.getDailyCost() + \" crowns a day\"\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= _event.m.Sellsword.getLevel() * 10 ? \"B\" : \"C\";;\n    return;\n}"
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
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.sellsword_gets_better_deal\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 35.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n        this.World.getPlayerRoster().remove(_event.m.Sellsword);\n        return 0;;\n        return;\n    };\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= _event.m.Sellsword.getLevel() * 10 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"D\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]While counting inventory, %sellsword% joins your side, mindlessly picking at this sword or that shield. You set your quill pen down and ask him what's up for he sure as shit isn't here to count anything. He explains that another company wishes to use his swordhand - and they're willing to pay more. You ask how much and he holds up his hands to count.%SPEECH_ON%They're talking %newpay% crowns a day.%SPEECH_OFF%He's earning %pay% crowns a day with you.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I see, time to part ways then.\"\n            getResult = function getResult(_event){\n                _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n                this.World.getPlayerRoster().remove(_event.m.Sellsword);\n                return 0;;\n                return;\n            }\n        },{\n            Text = \"There must be a way I can talk you out of this.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= _event.m.Sellsword.getLevel() * 10 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"Then I shall match their offer.\"\n            getResult = function getResult(_event){\n                return \"D\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        _event.m.Sellsword.getFlags().add(\"convincedToStayWithCompany\");\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\\n\\nThe sellsword looks at the ground, thinking your words over. Finally he nods and agrees to stay. You tell him he's made the right choice. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Glad you're staying with us.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            _event.m.Sellsword.getFlags().add(\"convincedToStayWithCompany\");\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.List.push({\n            id = 13\n            icon = \"ui/icons/kills.png\"\n            text = _event.m.Sellsword.getName() + \" leaves the \" + this.World.Assets.getName()\n        });\n        _event.m.Sellsword.getItems().transferToStash(this.World.Assets.getStash());\n        _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n        this.World.getPlayerRoster().remove(_event.m.Sellsword);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_16.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\\n\\n The sellsword looks at the ground, thinking your words over. Finally he shakes his head and purses his lips with a look of 'sorry'. You tell him he's making the wrong choice, but he's having none of it. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%The arrows are a little low, but all you can think about is figuring out how to replace a good swordhand such as he.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A damn shame.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.List.push({\n                id = 13\n                icon = \"ui/icons/kills.png\"\n                text = _event.m.Sellsword.getName() + \" leaves the \" + this.World.Assets.getName()\n            });\n            _event.m.Sellsword.getItems().transferToStash(this.World.Assets.getStash());\n            _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n            this.World.getPlayerRoster().remove(_event.m.Sellsword);\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        _event.m.Sellsword.getBaseProperties()[3] += _event.m.Amount;\n        _event.m.Sellsword.getSkills().update();\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_daily_money.png\"\n            text = _event.m.Sellsword.getName() + \" is now paid \" + _event.m.Sellsword.getDailyCost() + \" crowns a day\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"D\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img] You sigh. The man nods and starts to leave, but you stop him. You'll pay the amount so he can stay. The %companyname% simply cannot afford to lose a man like him.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A good man doesn't come cheap.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            _event.m.Sellsword.getBaseProperties()[3] += _event.m.Amount;\n            _event.m.Sellsword.getSkills().update();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_daily_money.png\"\n                text = _event.m.Sellsword.getName() + \" is now paid \" + _event.m.Sellsword.getDailyCost() + \" crowns a day\"\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= _event.m.Sellsword.getLevel() * 10 ? \"B\" : \"C\";;\n    return;\n}"
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
    "key": "3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43",
    "original": "D",
    "translation": "",
    "context": "ID = \"D\""
  },
  {
    "key": "3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43",
    "original": "D",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.sellsword_gets_better_deal\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 35.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n        this.World.getPlayerRoster().remove(_event.m.Sellsword);\n        return 0;;\n        return;\n    };\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= _event.m.Sellsword.getLevel() * 10 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"D\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]While counting inventory, %sellsword% joins your side, mindlessly picking at this sword or that shield. You set your quill pen down and ask him what's up for he sure as shit isn't here to count anything. He explains that another company wishes to use his swordhand - and they're willing to pay more. You ask how much and he holds up his hands to count.%SPEECH_ON%They're talking %newpay% crowns a day.%SPEECH_OFF%He's earning %pay% crowns a day with you.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I see, time to part ways then.\"\n            getResult = function getResult(_event){\n                _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n                this.World.getPlayerRoster().remove(_event.m.Sellsword);\n                return 0;;\n                return;\n            }\n        },{\n            Text = \"There must be a way I can talk you out of this.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= _event.m.Sellsword.getLevel() * 10 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"Then I shall match their offer.\"\n            getResult = function getResult(_event){\n                return \"D\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        _event.m.Sellsword.getFlags().add(\"convincedToStayWithCompany\");\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\\n\\nThe sellsword looks at the ground, thinking your words over. Finally he nods and agrees to stay. You tell him he's made the right choice. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Glad you're staying with us.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            _event.m.Sellsword.getFlags().add(\"convincedToStayWithCompany\");\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.List.push({\n            id = 13\n            icon = \"ui/icons/kills.png\"\n            text = _event.m.Sellsword.getName() + \" leaves the \" + this.World.Assets.getName()\n        });\n        _event.m.Sellsword.getItems().transferToStash(this.World.Assets.getStash());\n        _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n        this.World.getPlayerRoster().remove(_event.m.Sellsword);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_16.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\\n\\n The sellsword looks at the ground, thinking your words over. Finally he shakes his head and purses his lips with a look of 'sorry'. You tell him he's making the wrong choice, but he's having none of it. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%The arrows are a little low, but all you can think about is figuring out how to replace a good swordhand such as he.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A damn shame.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.List.push({\n                id = 13\n                icon = \"ui/icons/kills.png\"\n                text = _event.m.Sellsword.getName() + \" leaves the \" + this.World.Assets.getName()\n            });\n            _event.m.Sellsword.getItems().transferToStash(this.World.Assets.getStash());\n            _event.m.Sellsword.getSkills().onDeath(this.Const.FatalityType.None);\n            this.World.getPlayerRoster().remove(_event.m.Sellsword);\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Sellsword.getImagePath());\n        _event.m.Sellsword.getBaseProperties()[3] += _event.m.Amount;\n        _event.m.Sellsword.getSkills().update();\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_daily_money.png\"\n            text = _event.m.Sellsword.getName() + \" is now paid \" + _event.m.Sellsword.getDailyCost() + \" crowns a day\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"D\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img] You sigh. The man nods and starts to leave, but you stop him. You'll pay the amount so he can stay. The %companyname% simply cannot afford to lose a man like him.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A good man doesn't come cheap.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Sellsword.getImagePath());\n            _event.m.Sellsword.getBaseProperties()[3] += _event.m.Amount;\n            _event.m.Sellsword.getSkills().update();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_daily_money.png\"\n                text = _event.m.Sellsword.getName() + \" is now paid \" + _event.m.Sellsword.getDailyCost() + \" crowns a day\"\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43",
    "original": "D",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"D\";;\n    return;\n}"
  },
  {
    "key": "3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43",
    "original": "D",
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
    "key": "e0e424c03269de64fa3fea52394bcff032797752856c2d4f049590d3b0b00a27",
    "original": "Glad you're staying with us.",
    "translation": "",
    "context": "Text = \"Glad you're staying with us.\""
  },
  {
    "key": "6038d26698e16b3331ecf3671eb6a462015cac974315f47082275aafce76da42",
    "original": "I see, time to part ways then.",
    "translation": "",
    "context": "Text = \"I see, time to part ways then.\""
  },
  {
    "key": "6b11843600bbe1289f4a4dc92bd7544d6c4e7289fb9b3ba5df7966e1f1c0f474",
    "original": "Then I shall match their offer.",
    "translation": "",
    "context": "Text = \"Then I shall match their offer.\""
  },
  {
    "key": "9c05cdb61cc8dc274e671438ca3910d5c0b51875b5e83a1bf5c10e52419b3adb",
    "original": "There must be a way I can talk you out of this.",
    "translation": "",
    "context": "Text = \"There must be a way I can talk you out of this.\""
  },
  {
    "key": "d0edf75103270083067acebaf896631771f77228a7dc419f4fb34b201461c7e7",
    "original": "[img]gfx/ui/events/event_04.png[/img] You sigh. The man nods and starts to leave, but you stop him. You'll pay the amount so he can stay. The %companyname% simply cannot afford to lose a man like him.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_04.png[/img] You sigh. The man nods and starts to leave, but you stop him. You'll pay the amount so he can stay. The %companyname% simply cannot afford to lose a man like him.\""
  },
  {
    "key": "b2816f03f09f55eff86f2d773cc645ffa9e1dbeb5b914193612396bc1a311000",
    "original": "[img]gfx/ui/events/event_05.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\n\nThe sellsword looks at the ground, thinking your words over. Finally he nods and agrees to stay. You tell him he's made the right choice. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\\n\\nThe sellsword looks at the ground, thinking your words over. Finally he nods and agrees to stay. You tell him he's made the right choice. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%\""
  },
  {
    "key": "a670ee1d49301e9d384134a40f4abac989ce3c76c5e53a0bd7d2adfa644673d0",
    "original": "[img]gfx/ui/events/event_05.png[/img]While counting inventory, %sellsword% joins your side, mindlessly picking at this sword or that shield. You set your quill pen down and ask him what's up for he sure as shit isn't here to count anything. He explains that another company wishes to use his swordhand - and they're willing to pay more. You ask how much and he holds up his hands to count.%SPEECH_ON%They're talking %newpay% crowns a day.%SPEECH_OFF%He's earning %pay% crowns a day with you.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]While counting inventory, %sellsword% joins your side, mindlessly picking at this sword or that shield. You set your quill pen down and ask him what's up for he sure as shit isn't here to count anything. He explains that another company wishes to use his swordhand - and they're willing to pay more. You ask how much and he holds up his hands to count.%SPEECH_ON%They're talking %newpay% crowns a day.%SPEECH_OFF%He's earning %pay% crowns a day with you.\""
  },
  {
    "key": "9ddeb81cb318e0319075903fb4f2a990c02b8243475967b2404033ebee3694b5",
    "original": "[img]gfx/ui/events/event_16.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\n\n The sellsword looks at the ground, thinking your words over. Finally he shakes his head and purses his lips with a look of 'sorry'. You tell him he's making the wrong choice, but he's having none of it. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%The arrows are a little low, but all you can think about is figuring out how to replace a good swordhand such as he.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_16.png[/img] You turn around, crossing your arms and jacking a boot against a crate. Staring out across the land, you tell %sellsword% that the company has been through a lot together and everyone, yourself especially, would hate to see him go. He has a second family here with the %companyname% and that's a rare treat in the mercenary world. Where he's going there is no guarantee of what he may find. You know, because you've been there. You've been in his very shoes, and you took those shoes and walked. And regretted it.\\n\\n The sellsword looks at the ground, thinking your words over. Finally he shakes his head and purses his lips with a look of 'sorry'. You tell him he's making the wrong choice, but he's having none of it. The man turns and taps a quiver of arrows as he walks away.%SPEECH_ON%Might want to refill that.%SPEECH_OFF%The arrows are a little low, but all you can think about is figuring out how to replace a good swordhand such as he.\""
  },
  {
    "key": "1c1708b6191f911fd78f9b00e73cef6bc0c37b50ca21f9150743f63914c59149",
    "original": "newpay",
    "translation": "",
    "context": ""
  },
  {
    "key": "9350872d712a127c494d7dc35e46b0bc9e62e288239708e581dfc3a1400154a4",
    "original": "pay",
    "translation": "",
    "context": ""
  },
  {
    "key": "f44beae006b8dc3f0e4f168bb612d56d0e65838bdab9d80d29218d6d0cea308d",
    "original": "sellsword",
    "translation": "",
    "context": ""
  }
]