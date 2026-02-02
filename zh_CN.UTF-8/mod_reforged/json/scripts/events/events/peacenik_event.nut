[
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Houndmaster.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.peacenik\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 99999.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_40.png[/img]While on the path, you come across a man staring at a hole in the ground. Naturally, you go over and ask what he's doing. He states that there's an orc in the pit. You look down. There is. Taking out your sword, you ask if you should take care of it for him. He reels back.%SPEECH_ON%What? No! I want that alive. I think we can try and understand it.%SPEECH_OFF%Understand it? What is this man on about? He pleads.%SPEECH_ON%Let us merely try! Everyone kills an orc on sight, but they're not mere animals. They show intelligence, and if they have intelligence it means that they can learn, and if they can learn then perhaps they can learn to coexist with us.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Dogs are smart, too, but what do we do with the bad ones?\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Right. Good luck with that.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Houndmaster.getImagePath());\n        this.World.Assets.addMoney(50);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]50[/color] Crowns\"\n        });\n        _event.m.Houndmaster.getBaseProperties()[3] += 1;\n        _event.m.Houndmaster.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Houndmaster.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n        });\n        _event.m.Houndmaster.improveMood(1.0, \"Gave a lecture on the nature of animals\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.Houndmaster.getMoodState()]\n            text = _event.m.Houndmaster.getName() + this.Const.MoodStateEvent[_event.m.Houndmaster.getMoodState()]\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_40.png[/img]%houndmaster% the houndmaster nods and explains that an animal, no matter how intelligent or well trained, is still an animal. The peacenik thinks for a time.%SPEECH_ON%I-it's not a mere dog, though!%SPEECH_OFF%Your houndmaster takes the man by the shoulder.%SPEECH_ON%But you've cornered it like one, haven't you? What do you think a man would do in this situation, all his intellect and wisdom with him, his back to a wall and enemies afoot? This is not the place nor time for making 'peace,' friend, whether it be with man or beast.%SPEECH_OFF%The stranger slowly begins to nod. He sees the sense of the argument and, thankfully, lets you destroy the orc without any incident. With the greenskin put away, the man gives you a satchel of crowns.%SPEECH_ON%I wanted to try and parlay with it using these. That ain't happening now, clearly, and I'd probably be dead if you hadn't shown up. Consider this my thanks, sellsword.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Much appreciated.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Houndmaster.getImagePath());\n            this.World.Assets.addMoney(50);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]50[/color] Crowns\"\n            });\n            _event.m.Houndmaster.getBaseProperties()[3] += 1;\n            _event.m.Houndmaster.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Houndmaster.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n            });\n            _event.m.Houndmaster.improveMood(1.0, \"Gave a lecture on the nature of animals\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Houndmaster.getMoodState()]\n                text = _event.m.Houndmaster.getName() + this.Const.MoodStateEvent[_event.m.Houndmaster.getMoodState()]\n            });\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "7a9898899a0c2dbbadff1f4e72af4ad9dc3ff4f6169bc8bb41cea22454177fd9",
    "original": "Dogs are smart, too, but what do we do with the bad ones?",
    "translation": "",
    "context": "Text = \"Dogs are smart, too, but what do we do with the bad ones?\""
  },
  {
    "key": "4a11dfa33d87af33f3f8858a564a51435d3d8db22dcd21e21d7c7e7ddf31b569",
    "original": "Gave a lecture on the nature of animals",
    "translation": "",
    "context": ""
  },
  {
    "key": "111c02313d69efe5a23eea54d50462ccb51fb2a1bb7311fa73716f94384d6414",
    "original": "Much appreciated.",
    "translation": "",
    "context": "Text = \"Much appreciated.\""
  },
  {
    "key": "457b7847d72fe13dced8f3000423d8fd316c33c4f865dba0649973c9f1f221cd",
    "original": "Right. Good luck with that.",
    "translation": "",
    "context": "Text = \"Right. Good luck with that.\""
  },
  {
    "key": "75c45e6b8866c7aacf8d3a14cae5d644d278d2f53ab2cc835118e64cc9d12404",
    "original": "You gain [color=",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]50[/color] Crowns\""
  },
  {
    "key": "3d71a6c51df66d65da8470a253ac2412fa33f600e7aecf10bfeec70a5458150c",
    "original": "[img]gfx/ui/events/event_40.png[/img]%houndmaster% the houndmaster nods and explains that an animal, no matter how intelligent or well trained, is still an animal. The peacenik thinks for a time.%SPEECH_ON%I-it's not a mere dog, though!%SPEECH_OFF%Your houndmaster takes the man by the shoulder.%SPEECH_ON%But you've cornered it like one, haven't you? What do you think a man would do in this situation, all his intellect and wisdom with him, his back to a wall and enemies afoot? This is not the place nor time for making 'peace,' friend, whether it be with man or beast.%SPEECH_OFF%The stranger slowly begins to nod. He sees the sense of the argument and, thankfully, lets you destroy the orc without any incident. With the greenskin put away, the man gives you a satchel of crowns.%SPEECH_ON%I wanted to try and parlay with it using these. That ain't happening now, clearly, and I'd probably be dead if you hadn't shown up. Consider this my thanks, sellsword.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_40.png[/img]%houndmaster% the houndmaster nods and explains that an animal, no matter how intelligent or well trained, is still an animal. The peacenik thinks for a time.%SPEECH_ON%I-it's not a mere dog, though!%SPEECH_OFF%Your houndmaster takes the man by the shoulder.%SPEECH_ON%But you've cornered it like one, haven't you? What do you think a man would do in this situation, all his intellect and wisdom with him, his back to a wall and enemies afoot? This is not the place nor time for making 'peace,' friend, whether it be with man or beast.%SPEECH_OFF%The stranger slowly begins to nod. He sees the sense of the argument and, thankfully, lets you destroy the orc without any incident. With the greenskin put away, the man gives you a satchel of crowns.%SPEECH_ON%I wanted to try and parlay with it using these. That ain't happening now, clearly, and I'd probably be dead if you hadn't shown up. Consider this my thanks, sellsword.%SPEECH_OFF%\""
  },
  {
    "key": "b2465af21e973ee2700b264764eede46bdaecaba7d36779ef406212fc7ca691d",
    "original": "[img]gfx/ui/events/event_40.png[/img]While on the path, you come across a man staring at a hole in the ground. Naturally, you go over and ask what he's doing. He states that there's an orc in the pit. You look down. There is. Taking out your sword, you ask if you should take care of it for him. He reels back.%SPEECH_ON%What? No! I want that alive. I think we can try and understand it.%SPEECH_OFF%Understand it? What is this man on about? He pleads.%SPEECH_ON%Let us merely try! Everyone kills an orc on sight, but they're not mere animals. They show intelligence, and if they have intelligence it means that they can learn, and if they can learn then perhaps they can learn to coexist with us.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_40.png[/img]While on the path, you come across a man staring at a hole in the ground. Naturally, you go over and ask what he's doing. He states that there's an orc in the pit. You look down. There is. Taking out your sword, you ask if you should take care of it for him. He reels back.%SPEECH_ON%What? No! I want that alive. I think we can try and understand it.%SPEECH_OFF%Understand it? What is this man on about? He pleads.%SPEECH_ON%Let us merely try! Everyone kills an orc on sight, but they're not mere animals. They show intelligence, and if they have intelligence it means that they can learn, and if they can learn then perhaps they can learn to coexist with us.%SPEECH_OFF%\""
  },
  {
    "key": "d77afa2604514fbb33e439e67a1c5f47eb5b0dd68be42a644af4fd56b423bdd6",
    "original": "]+1[/color] Resolve",
    "translation": "",
    "context": "_event.m.Houndmaster.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\""
  },
  {
    "key": "005feeee068782b002ab179a939353bc9c30dab3559873474467bc98925840ec",
    "original": "]50[/color] Crowns",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]50[/color] Crowns\""
  },
  {
    "key": "38de3a04e4a8e54a4ff9c9f3c4159bc040674b84992607e49285b3e970a95c42",
    "original": "houndmaster",
    "translation": "",
    "context": ""
  }
]