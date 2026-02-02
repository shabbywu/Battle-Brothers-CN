[
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
    "context": "getResult = function getResult(_event){\n    if (_event.m.Peddler != null) {\n        return \"B\";\n    } else {\n        return 0;\n    };\n    return;\n}"
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
    "context": "create = function create(){\n    this.m.ID = \"event.sellsword_retires\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 999999.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        if (_event.m.Peddler != null) {\n            return \"B\";\n        } else {\n            return 0;\n        };\n        return;\n    };\n    function start(_event){\n        local item = null;\n        local stash = this.World.Assets.getStash();\n        item = this.new(\"scripts/items/weapons/arming_sword\");\n        item.setCondition(item.getConditionMax() \\ 2 - 1);\n        stash.add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n        });\n        item = this.new(\"scripts/items/armor/basic_mail_shirt\");\n        item.setArmor(item.getArmorMax() \\ 2 - 1);\n        stash.add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_64.png[/img]{While on the path, you come across a man sitting beside the path. He's clad in some beaten armor and there's an even more beaten weapon in his lap. He regards you with the limpest of waves.%SPEECH_ON%Evening. If you ain't sellswords, then I never set my pa's pants afire.%SPEECH_OFF%That seems to be an interesting tale in and of itself, but you instead ask the man what he's doing in the middle of the road. More important, you ask this rather able-bodied fella if he's looking for work.%SPEECH_ON%A job? No. I don't need one. I already done that sword-selling bit and I'm done with it. You know what, here.%SPEECH_OFF%He starts undoing his armor and throws it on the ground before you.%SPEECH_ON%Take it. I've no need for that life anymore. Take the weapon, too. I'm leaving all this shite behind. You should, too, but I knew ya won't. Not before it's too late, anyway. I'm walking the earth until my feet are ground into nubs. As for yourself, godspeed.%SPEECH_OFF%And just like that, the stranger goes.}\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Good luck.\"\n            getResult = function getResult(_event){\n                if (_event.m.Peddler != null) {\n                    return \"B\";\n                } else {\n                    return 0;\n                };\n                return;\n            }\n        }]\n        start = function start(_event){\n            local item = null;\n            local stash = this.World.Assets.getStash();\n            item = this.new(\"scripts/items/weapons/arming_sword\");\n            item.setCondition(item.getConditionMax() \\ 2 - 1);\n            stash.add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n            });\n            item = this.new(\"scripts/items/armor/basic_mail_shirt\");\n            item.setArmor(item.getArmorMax() \\ 2 - 1);\n            stash.add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Peddler.getImagePath());\n        local money = this.Math.rand(20, 100);\n        this.World.Assets.addMoney(money);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crown\"\n        }];\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_64.png[/img]{%peddler% the peddler, always having a good nose for gold, asks if the man earned any crowns while working as a sellsword. When the stranger nods, the peddler notes that if that's true then he can always 'buy' his way back into the life. The sellsword thinks for a minute, then nods again.%SPEECH_ON%You know what? That's right. So long as I've got the crowns, I've still got a lifeline back to that damned business. Here, take it.%SPEECH_OFF%The retiring, and ostensibly soon-to-be-hermit, fishes into his pockets and happily throws you a sack of crowns like a man ridding himself of an old burden.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"We'll put these to good use.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Peddler.getImagePath());\n            local money = this.Math.rand(20, 100);\n            this.World.Assets.addMoney(money);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crown\"\n            }];\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "ID = \"B\""
  },
  {
    "key": "19a6c59f1ca4050d7522a0f07fcd6540a1717bd73483ac37ec919dab28ae4fc8",
    "original": "Good luck.",
    "translation": "",
    "context": "Text = \"Good luck.\""
  },
  {
    "key": "87b6ac431ac0b024ead060e938e646fa4282ae79fde9a01bdcca31327e7eaf30",
    "original": "We'll put these to good use.",
    "translation": "",
    "context": "Text = \"We'll put these to good use.\""
  },
  {
    "key": "85d13cf4d5f8d972cb9d6de67c9cc3128758d8462dd3293693b2bcc94257ec0e",
    "original": "You gain ",
    "translation": "",
    "context": "\"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()"
  },
  {
    "key": "75c45e6b8866c7aacf8d3a14cae5d644d278d2f53ab2cc835118e64cc9d12404",
    "original": "You gain [color=",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crown\""
  },
  {
    "key": "dccd103da59492e6ea54a50818575e71b24eb8dcaa20dc5285b553c41188c4e7",
    "original": "[/color] Crown",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crown\""
  },
  {
    "key": "2a231f12787203804275610a59e1fa86ea890ef9877c2d3bf24dcec5b9b08bca",
    "original": "[img]gfx/ui/events/event_64.png[/img]{%peddler% the peddler, always having a good nose for gold, asks if the man earned any crowns while working as a sellsword. When the stranger nods, the peddler notes that if that's true then he can always 'buy' his way back into the life. The sellsword thinks for a minute, then nods again.%SPEECH_ON%You know what? That's right. So long as I've got the crowns, I've still got a lifeline back to that damned business. Here, take it.%SPEECH_OFF%The retiring, and ostensibly soon-to-be-hermit, fishes into his pockets and happily throws you a sack of crowns like a man ridding himself of an old burden.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_64.png[/img]{%peddler% the peddler, always having a good nose for gold, asks if the man earned any crowns while working as a sellsword. When the stranger nods, the peddler notes that if that's true then he can always 'buy' his way back into the life. The sellsword thinks for a minute, then nods again.%SPEECH_ON%You know what? That's right. So long as I've got the crowns, I've still got a lifeline back to that damned business. Here, take it.%SPEECH_OFF%The retiring, and ostensibly soon-to-be-hermit, fishes into his pockets and happily throws you a sack of crowns like a man ridding himself of an old burden.}\""
  },
  {
    "key": "43b2d49062beb579712c1fea62ea00fa92e26c72baaed0adaee65e42c9ae0c18",
    "original": "[img]gfx/ui/events/event_64.png[/img]{While on the path, you come across a man sitting beside the path. He's clad in some beaten armor and there's an even more beaten weapon in his lap. He regards you with the limpest of waves.%SPEECH_ON%Evening. If you ain't sellswords, then I never set my pa's pants afire.%SPEECH_OFF%That seems to be an interesting tale in and of itself, but you instead ask the man what he's doing in the middle of the road. More important, you ask this rather able-bodied fella if he's looking for work.%SPEECH_ON%A job? No. I don't need one. I already done that sword-selling bit and I'm done with it. You know what, here.%SPEECH_OFF%He starts undoing his armor and throws it on the ground before you.%SPEECH_ON%Take it. I've no need for that life anymore. Take the weapon, too. I'm leaving all this shite behind. You should, too, but I knew ya won't. Not before it's too late, anyway. I'm walking the earth until my feet are ground into nubs. As for yourself, godspeed.%SPEECH_OFF%And just like that, the stranger goes.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_64.png[/img]{While on the path, you come across a man sitting beside the path. He's clad in some beaten armor and there's an even more beaten weapon in his lap. He regards you with the limpest of waves.%SPEECH_ON%Evening. If you ain't sellswords, then I never set my pa's pants afire.%SPEECH_OFF%That seems to be an interesting tale in and of itself, but you instead ask the man what he's doing in the middle of the road. More important, you ask this rather able-bodied fella if he's looking for work.%SPEECH_ON%A job? No. I don't need one. I already done that sword-selling bit and I'm done with it. You know what, here.%SPEECH_OFF%He starts undoing his armor and throws it on the ground before you.%SPEECH_ON%Take it. I've no need for that life anymore. Take the weapon, too. I'm leaving all this shite behind. You should, too, but I knew ya won't. Not before it's too late, anyway. I'm walking the earth until my feet are ground into nubs. As for yourself, godspeed.%SPEECH_OFF%And just like that, the stranger goes.}\""
  },
  {
    "key": "06e39f9dd2c69f08fb3c9a56e1dfe05a13cb18226901e92f679f790f3dfb1ea1",
    "original": "peddler",
    "translation": "",
    "context": ""
  }
]