[
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "ae31efc9bb7ce0a89c17317e6d702b0584f6bd73fe7518a2ae9d3464a76b1d5b",
    "original": "Along the way...",
    "translation": "",
    "context": "this.m.Title = \"Along the way...\""
  },
  {
    "key": "e052756944031817e82a7518fe7323e1f9035402634ac34251ac9b194f02e072",
    "original": "And you're sure this is edible still?",
    "translation": "",
    "context": "Text = \"And you're sure this is edible still?\""
  },
  {
    "key": "d85eb74fd75da1bc566c5999caf5e328023b6ade367ce98626d91a7601c745ec",
    "original": "Butcher",
    "translation": "",
    "context": "ID = \"Butcher\""
  },
  {
    "key": "d85eb74fd75da1bc566c5999caf5e328023b6ade367ce98626d91a7601c745ec",
    "original": "Butcher",
    "translation": "",
    "context": ""
  },
  {
    "key": "d85eb74fd75da1bc566c5999caf5e328023b6ade367ce98626d91a7601c745ec",
    "original": "Butcher",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.broken_wagon_in_swamp\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 60.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        if (_event.m.Butcher != null) {\n            return \"Butcher\";\n        } else {\n            return 0;\n        };\n        return;\n    };\n    function start(_event){\n        local amount = this.Math.rand(5, 15);\n        this.World.Assets.addArmorParts(amount);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_supplies.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Tools and Supplies.\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_09.png[/img]Swamps are no safe place for a man's travels. Judging by the neverending smog and the way the trees bend, there's little doubt that it's a bubbling domicile for all things demonic. At least that's what the druids of these parts like to say. All you find is a couple of dead horses drowned in the mire and a wagon crushed by the mud which has seeped over its wheels and bed. %randombrother% rifles through the remains and manages to recover some items.%SPEECH_ON%Well, it's something. Whoever left this here left a short while ago. Probably spooked by whatever the hell lives out here in the day-to-day.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Still useful.\"\n            getResult = function getResult(_event){\n                if (_event.m.Butcher != null) {\n                    return \"Butcher\";\n                } else {\n                    return 0;\n                };\n                return;\n            }\n        }]\n        start = function start(_event){\n            local amount = this.Math.rand(5, 15);\n            this.World.Assets.addArmorParts(amount);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_supplies.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Tools and Supplies.\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Butcher.getImagePath());\n        local item = this.new(\"scripts/items/supplies/strange_meat_item\");\n        this.World.Assets.getStash().add(item);\n        item = this.new(\"scripts/items/supplies/strange_meat_item\");\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + item.getName()\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"Butcher\"\n        Text = \"[img]gfx/ui/events/event_14.png[/img]%SPEECH_ON%Sir, wait.%SPEECH_OFF%The former butcher, %butcher%, says. He moves on ahead and starts hacking at the corpse of a horse. He cuts out a series of chunks, wraps them in large leaves, dries them with a bit of dirt and salt, and hands them over.%SPEECH_ON%No reason in leaving behind what can be used.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"And you're sure this is edible still?\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Butcher.getImagePath());\n            local item = this.new(\"scripts/items/supplies/strange_meat_item\");\n            this.World.Assets.getStash().add(item);\n            item = this.new(\"scripts/items/supplies/strange_meat_item\");\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + item.getName()\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "d85eb74fd75da1bc566c5999caf5e328023b6ade367ce98626d91a7601c745ec",
    "original": "Butcher",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    if (_event.m.Butcher != null) {\n        return \"Butcher\";\n    } else {\n        return 0;\n    };\n    return;\n}"
  },
  {
    "key": "ccd7828c66456df9461c6e8cccd74508c357d8f7bd9001a058b891f3d644a7ec",
    "original": "Still useful.",
    "translation": "",
    "context": "Text = \"Still useful.\""
  },
  {
    "key": "85d13cf4d5f8d972cb9d6de67c9cc3128758d8462dd3293693b2bcc94257ec0e",
    "original": "You gain ",
    "translation": "",
    "context": "\"You gain \" + item.getName()"
  },
  {
    "key": "75c45e6b8866c7aacf8d3a14cae5d644d278d2f53ab2cc835118e64cc9d12404",
    "original": "You gain [color=",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Tools and Supplies.\""
  },
  {
    "key": "4f6fdae815a1a55f343cb81c44a49a2f58d24813d9ddd4b53248ae1d052807b8",
    "original": "[/color] Tools and Supplies.",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Tools and Supplies.\""
  },
  {
    "key": "e6c9f04339173e0823121dadde037ff225897eb7777af39de10dbf6ca52a1cc0",
    "original": "[img]gfx/ui/events/event_09.png[/img]Swamps are no safe place for a man's travels. Judging by the neverending smog and the way the trees bend, there's little doubt that it's a bubbling domicile for all things demonic. At least that's what the druids of these parts like to say. All you find is a couple of dead horses drowned in the mire and a wagon crushed by the mud which has seeped over its wheels and bed. %randombrother% rifles through the remains and manages to recover some items.%SPEECH_ON%Well, it's something. Whoever left this here left a short while ago. Probably spooked by whatever the hell lives out here in the day-to-day.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_09.png[/img]Swamps are no safe place for a man's travels. Judging by the neverending smog and the way the trees bend, there's little doubt that it's a bubbling domicile for all things demonic. At least that's what the druids of these parts like to say. All you find is a couple of dead horses drowned in the mire and a wagon crushed by the mud which has seeped over its wheels and bed. %randombrother% rifles through the remains and manages to recover some items.%SPEECH_ON%Well, it's something. Whoever left this here left a short while ago. Probably spooked by whatever the hell lives out here in the day-to-day.%SPEECH_OFF%\""
  },
  {
    "key": "af9ca1da443fed51eb9c8711867656cc0d015c645b4c9551e70239beaa8a0cd0",
    "original": "[img]gfx/ui/events/event_14.png[/img]%SPEECH_ON%Sir, wait.%SPEECH_OFF%The former butcher, %butcher%, says. He moves on ahead and starts hacking at the corpse of a horse. He cuts out a series of chunks, wraps them in large leaves, dries them with a bit of dirt and salt, and hands them over.%SPEECH_ON%No reason in leaving behind what can be used.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_14.png[/img]%SPEECH_ON%Sir, wait.%SPEECH_OFF%The former butcher, %butcher%, says. He moves on ahead and starts hacking at the corpse of a horse. He cuts out a series of chunks, wraps them in large leaves, dries them with a bit of dirt and salt, and hands them over.%SPEECH_ON%No reason in leaving behind what can be used.%SPEECH_OFF%\""
  },
  {
    "key": "01303d3beb16b992be93426c567ae5d5adeb1981d9a1063c9194752e9f284b9d",
    "original": "butcher",
    "translation": "",
    "context": ""
  }
]