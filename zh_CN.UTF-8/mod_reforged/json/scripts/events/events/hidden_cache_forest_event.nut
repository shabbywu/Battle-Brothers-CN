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
    "context": "getResult = function getResult(_event){\n    if (_event.m.Graverobber != null) {\n        return \"B\";\n    } else {\n        return 0;\n    };\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.hidden_cache_forest\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 200.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        if (_event.m.Graverobber != null) {\n            return \"B\";\n        } else {\n            return 0;\n        };\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Otherbrother.getImagePath());\n        local money = this.Math.rand(30, 150);\n        this.World.Assets.addMoney(money);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n        });\n        local r = this.Math.rand(1, 8);\n        local item = null;\n        if (r == 1) {\n            item = this.new(\"scripts/items/weapons/bludgeon\")\n        } else {\n            if (r == 2) {\n                item = this.new(\"scripts/items/weapons/falchion\")\n            } else {\n                if (r == 3) {\n                    item = this.new(\"scripts/items/weapons/knife\")\n                } else {\n                    if (r == 4) {\n                        item = this.new(\"scripts/items/weapons/dagger\")\n                    } else {\n                        if (r == 5) {\n                            item = this.new(\"scripts/items/weapons/shortsword\")\n                        } else {\n                            if (r == 6) {\n                                item = this.new(\"scripts/items/weapons/woodcutters_axe\")\n                            } else {\n                                if (r == 7) {\n                                    item = this.new(\"scripts/items/weapons/scramasax\")\n                                } else {\n                                    if (r == 8) {\n                                        item = this.new(\"scripts/items/weapons/hand_axe\")\n                                    }\n                                }\n                            }\n                        }\n                    }\n                }\n            }\n        };\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n        });\n        r = this.Math.rand(1, 5);\n        if (r == 1) {\n            item = this.new(\"scripts/items/armor/gambeson\")\n        } else {\n            if (r == 2) {\n                item = this.new(\"scripts/items/armor/leather_tunic\")\n            } else {\n                if (r == 3) {\n                    item = this.new(\"scripts/items/armor/thick_tunic\")\n                } else {\n                    if (r == 4) {\n                        item = this.new(\"scripts/items/armor/wizard_robe\")\n                    } else {\n                        if (r == 5) {\n                            item = this.new(\"scripts/items/armor/worn_mail_shirt\")\n                        }\n                    }\n                }\n            }\n        };\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_25.png[/img]The forest is no friend of man which is why men of ill-repute sure love to put their keepsakes there. And today you've stumbled across one: a cache that %otherbrother% found by way of stubbing his toe on the edge of it. Digging out the crate and cracking it open, you find an assortment of weapons, armor, and gold. You clap the sellsword on the shoulder and thank him for his 'hard work'. He wags his boot around.%SPEECH_ON%Yessir, I've got a toe like the nose of a bloodhound.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Indeed you do.\"\n            getResult = function getResult(_event){\n                if (_event.m.Graverobber != null) {\n                    return \"B\";\n                } else {\n                    return 0;\n                };\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Otherbrother.getImagePath());\n            local money = this.Math.rand(30, 150);\n            this.World.Assets.addMoney(money);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n            });\n            local r = this.Math.rand(1, 8);\n            local item = null;\n            if (r == 1) {\n                item = this.new(\"scripts/items/weapons/bludgeon\")\n            } else {\n                if (r == 2) {\n                    item = this.new(\"scripts/items/weapons/falchion\")\n                } else {\n                    if (r == 3) {\n                        item = this.new(\"scripts/items/weapons/knife\")\n                    } else {\n                        if (r == 4) {\n                            item = this.new(\"scripts/items/weapons/dagger\")\n                        } else {\n                            if (r == 5) {\n                                item = this.new(\"scripts/items/weapons/shortsword\")\n                            } else {\n                                if (r == 6) {\n                                    item = this.new(\"scripts/items/weapons/woodcutters_axe\")\n                                } else {\n                                    if (r == 7) {\n                                        item = this.new(\"scripts/items/weapons/scramasax\")\n                                    } else {\n                                        if (r == 8) {\n                                            item = this.new(\"scripts/items/weapons/hand_axe\")\n                                        }\n                                    }\n                                }\n                            }\n                        }\n                    }\n                }\n            };\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n            });\n            r = this.Math.rand(1, 5);\n            if (r == 1) {\n                item = this.new(\"scripts/items/armor/gambeson\")\n            } else {\n                if (r == 2) {\n                    item = this.new(\"scripts/items/armor/leather_tunic\")\n                } else {\n                    if (r == 3) {\n                        item = this.new(\"scripts/items/armor/thick_tunic\")\n                    } else {\n                        if (r == 4) {\n                            item = this.new(\"scripts/items/armor/wizard_robe\")\n                        } else {\n                            if (r == 5) {\n                                item = this.new(\"scripts/items/armor/worn_mail_shirt\")\n                            }\n                        }\n                    }\n                }\n            };\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Graverobber.getImagePath());\n        local r = this.Math.rand(1, 4);\n        local item = null;\n        if (r == 1) {\n            item = this.new(\"scripts/items/loot/gemstones_item\")\n        } else {\n            if (r == 2) {\n                item = this.new(\"scripts/items/loot/silver_bowl_item\")\n            } else {\n                if (r == 3) {\n                    item = this.new(\"scripts/items/loot/silverware_item\")\n                } else {\n                    if (r == 4) {\n                        item = this.new(\"scripts/items/loot/golden_chalice_item\")\n                    }\n                }\n            }\n        };\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_25.png[/img]As you get ready to leave, %graverobber% the graverobber stops you.%SPEECH_ON%Wait a minute.%SPEECH_OFF%He jumps down into the pit in which the cache was buried. He starts knocking around on the dirt. Tap. Tap. Tap. Clack. His knuckle raps hard and a smile crosses his face.%SPEECH_ON%Yeah, that's what I thought.%SPEECH_OFF%The man digs into the earth and drags out another crate and opens it up. You're wowed by the sight of what's inside. The graverobber nods.%SPEECH_ON%If someone has something good to hide, they don't just hide it in the ground, they hide it with things of lesser value. That way, even if you find their treasure there's still a chance you'll get distracted from the real good stuff. Quite clever, really, but it don't fool me none.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Well done.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Graverobber.getImagePath());\n            local r = this.Math.rand(1, 4);\n            local item = null;\n            if (r == 1) {\n                item = this.new(\"scripts/items/loot/gemstones_item\")\n            } else {\n                if (r == 2) {\n                    item = this.new(\"scripts/items/loot/silver_bowl_item\")\n                } else {\n                    if (r == 3) {\n                        item = this.new(\"scripts/items/loot/silverware_item\")\n                    } else {\n                        if (r == 4) {\n                            item = this.new(\"scripts/items/loot/golden_chalice_item\")\n                        }\n                    }\n                }\n            };\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "c4d0eb68d3b0c19971a03ceb3107813faa5bf95f5d8245d8c6dcafa890549e89",
    "original": "Indeed you do.",
    "translation": "",
    "context": "Text = \"Indeed you do.\""
  },
  {
    "key": "a4e70b52b37c66b16046a9e7424f378acde06601a5ecc762b4b7e60a83fd6128",
    "original": "Well done.",
    "translation": "",
    "context": "Text = \"Well done.\""
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
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\""
  },
  {
    "key": "4c7191ec29bcad5f88c9782f841c0151bf3019e2218c080ea4787ee82639d2e1",
    "original": "[/color] Crowns",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\""
  },
  {
    "key": "29706513ab349bd6cccc7229a59cee968d39eb95b03b99221b9f7dbdb45e31b9",
    "original": "[img]gfx/ui/events/event_25.png[/img]As you get ready to leave, %graverobber% the graverobber stops you.%SPEECH_ON%Wait a minute.%SPEECH_OFF%He jumps down into the pit in which the cache was buried. He starts knocking around on the dirt. Tap. Tap. Tap. Clack. His knuckle raps hard and a smile crosses his face.%SPEECH_ON%Yeah, that's what I thought.%SPEECH_OFF%The man digs into the earth and drags out another crate and opens it up. You're wowed by the sight of what's inside. The graverobber nods.%SPEECH_ON%If someone has something good to hide, they don't just hide it in the ground, they hide it with things of lesser value. That way, even if you find their treasure there's still a chance you'll get distracted from the real good stuff. Quite clever, really, but it don't fool me none.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_25.png[/img]As you get ready to leave, %graverobber% the graverobber stops you.%SPEECH_ON%Wait a minute.%SPEECH_OFF%He jumps down into the pit in which the cache was buried. He starts knocking around on the dirt. Tap. Tap. Tap. Clack. His knuckle raps hard and a smile crosses his face.%SPEECH_ON%Yeah, that's what I thought.%SPEECH_OFF%The man digs into the earth and drags out another crate and opens it up. You're wowed by the sight of what's inside. The graverobber nods.%SPEECH_ON%If someone has something good to hide, they don't just hide it in the ground, they hide it with things of lesser value. That way, even if you find their treasure there's still a chance you'll get distracted from the real good stuff. Quite clever, really, but it don't fool me none.%SPEECH_OFF%\""
  },
  {
    "key": "8ef87f81e11c416563d1e1074345d28ab0fed23848ebbaf5b01c8a60899bb83f",
    "original": "[img]gfx/ui/events/event_25.png[/img]The forest is no friend of man which is why men of ill-repute sure love to put their keepsakes there. And today you've stumbled across one: a cache that %otherbrother% found by way of stubbing his toe on the edge of it. Digging out the crate and cracking it open, you find an assortment of weapons, armor, and gold. You clap the sellsword on the shoulder and thank him for his 'hard work'. He wags his boot around.%SPEECH_ON%Yessir, I've got a toe like the nose of a bloodhound.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_25.png[/img]The forest is no friend of man which is why men of ill-repute sure love to put their keepsakes there. And today you've stumbled across one: a cache that %otherbrother% found by way of stubbing his toe on the edge of it. Digging out the crate and cracking it open, you find an assortment of weapons, armor, and gold. You clap the sellsword on the shoulder and thank him for his 'hard work'. He wags his boot around.%SPEECH_ON%Yessir, I've got a toe like the nose of a bloodhound.%SPEECH_OFF%\""
  },
  {
    "key": "fcb530157106b07669ff969f69951cb1613ad483768fc439d58026c47e647d7d",
    "original": "graverobber",
    "translation": "",
    "context": ""
  },
  {
    "key": "8a1b91f0a848e56df23e0300dadd21395da4522641b62d2d3f72880ae1c1a948",
    "original": "otherbrother",
    "translation": "",
    "context": ""
  }
]