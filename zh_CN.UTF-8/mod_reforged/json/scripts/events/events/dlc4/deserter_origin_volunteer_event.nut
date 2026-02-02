[
  {
    "key": "d749e53f7139cfafb9852e26f5485e29fbba1b118d5dc0125a09f7f75f9ae6d4",
    "original": " before he volunteered to join your company.",
    "translation": "",
    "context": "\"%name% deserted an army regiment together with \" + _event.m.Dude1.getNameOnly() + \" before he volunteered to join your company.\""
  },
  {
    "key": "8c4401d0753098d7a38cbf7246a4f9cc426e9ba62a6ea25d2de002bed9e8fc3a",
    "original": " suffers ",
    "translation": "",
    "context": "_event.m.Victim.getName() + \" suffers \" + injury.getNameOnly()"
  },
  {
    "key": "1fc11af3b480fa9b87ac5196ba0b22b7742db313ec374efad3f6d637b38f4bb2",
    "original": "%name% deserted an army regiment together with ",
    "translation": "",
    "context": "\"%name% deserted an army regiment together with \" + _event.m.Dude1.getNameOnly() + \" before he volunteered to join your company.\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.deserter_origin_volunteer\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 50.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude1 = null;\n        _event.m.Dude2 = null;\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local roster = this.World.getTemporaryRoster();\n        _event.m.Dude1 = roster.create(\"scripts/entity/tactical/player\");\n        _event.m.Dude1.setStartValuesEx([\"deserter_background\"]);\n        _event.m.Dude1.getBackground().m.RawDescription = \"Running from bounty hunters and executioners for some time, %name% bumped into your company on the road and promptly volunteered.\";\n        _event.m.Dude1.getBackground().buildDescription(True);\n        _event.m.Dude2 = roster.create(\"scripts/entity/tactical/player\");\n        _event.m.Dude2.setStartValuesEx([\"deserter_background\"]);\n        _event.m.Dude2.getBackground().m.RawDescription = \"%name% deserted an army regiment together with \" + _event.m.Dude1.getNameOnly() + \" before he volunteered to join your company.\";\n        _event.m.Dude2.getBackground().buildDescription(True);\n        this.Characters.push(_event.m.Dude1.getImagePath());\n        this.Characters.push(_event.m.Dude2.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_88.png[/img]{A pair of men looking disheveled and weary emerge from some bushes beside the road. They hold their hands up as if they'd come to surrender themselves.%SPEECH_ON%Are ye the %companyname%? We'd heard you were a band of deserters. And I don't mean that as an insult. We're runners, too, but we got nowhere else to go. Everywhere we turn there are bounty hunters and executioners. Let us fight for you. It ain't the fight that ever scared us, we swears by that.%SPEECH_OFF%}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"We could use fighting men like you.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"We have no need for you.\"\n            getResult = function getResult(_event){\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude1 = null;\n                _event.m.Dude2 = null;\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local roster = this.World.getTemporaryRoster();\n            _event.m.Dude1 = roster.create(\"scripts/entity/tactical/player\");\n            _event.m.Dude1.setStartValuesEx([\"deserter_background\"]);\n            _event.m.Dude1.getBackground().m.RawDescription = \"Running from bounty hunters and executioners for some time, %name% bumped into your company on the road and promptly volunteered.\";\n            _event.m.Dude1.getBackground().buildDescription(True);\n            _event.m.Dude2 = roster.create(\"scripts/entity/tactical/player\");\n            _event.m.Dude2.setStartValuesEx([\"deserter_background\"]);\n            _event.m.Dude2.getBackground().m.RawDescription = \"%name% deserted an army regiment together with \" + _event.m.Dude1.getNameOnly() + \" before he volunteered to join your company.\";\n            _event.m.Dude2.getBackground().buildDescription(True);\n            this.Characters.push(_event.m.Dude1.getImagePath());\n            this.Characters.push(_event.m.Dude2.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.getPlayerRoster().add(_event.m.Dude1);\n        this.World.getPlayerRoster().add(_event.m.Dude2);\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude1.onHired();\n        _event.m.Dude2.onHired();\n        _event.m.Dude1 = null;\n        _event.m.Dude2 = null;\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Dude1.getImagePath());\n        this.Characters.push(_event.m.Dude2.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_88.png[/img]{It would be almost satisfyingly ironic to string these men up and hang them for what they'd done, but you are not about to set that tone for the company. You welcome them to the band, sending them forth to the inventory. %victim% keeps an eye on them for a time, but he reports that the men are true to their word and will fight.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Welcome to the %companyname%!\"\n            getResult = function getResult(_event){\n                this.World.getPlayerRoster().add(_event.m.Dude1);\n                this.World.getPlayerRoster().add(_event.m.Dude2);\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude1.onHired();\n                _event.m.Dude2.onHired();\n                _event.m.Dude1 = null;\n                _event.m.Dude2 = null;\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Dude1.getImagePath());\n            this.Characters.push(_event.m.Dude2.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude1 = null;\n        _event.m.Dude2 = null;\n        local injury = _event.m.Victim.addInjury(this.Const.Injury.Concussion);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Victim.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        local r = this.Math.rand(1, 4);\n        if (r == 1) {\n            local food = this.World.Assets.getFoodItems();\n            food = food[this.Math.rand(0, food.len() - 1)];\n            this.World.Assets.getStash().remove(food);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + food.getIcon()\n                text = \"You lose \" + food.getName()\n            })\n        } else {\n            if (r == 2) {\n                local amount = this.Math.rand(20, 50);\n                this.World.Assets.addAmmo(~amount);\n                this.List.push({\n                    id = 10\n                    icon = \"ui/icons/asset_ammo.png\"\n                    text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Ammunition\"\n                })\n            } else {\n                if (r == 3) {\n                    local amount = this.Math.rand(5, 10);\n                    this.World.Assets.addArmorParts(~amount);\n                    this.List.push({\n                        id = 10\n                        icon = \"ui/icons/asset_supplies.png\"\n                        text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Tools and Supplies\"\n                    })\n                } else {\n                    if (r == 4) {\n                        local amount = this.Math.rand(5, 10);\n                        this.World.Assets.addMedicine(~amount);\n                        this.List.push({\n                            id = 10\n                            icon = \"ui/icons/asset_medicine.png\"\n                            text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Medical Supplies\"\n                        })\n                    }\n                }\n            }\n        };\n        this.Characters.push(_event.m.Victim.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{It would be almost satisfyingly ironic to string these men up and hang them for what they'd done, but you are not about to set that tone for the company. You welcome them to the band, sending them forth to the inventory with %victim% keeping an eye on them. Except you don't see your sellsword for a suspicious length of time. When you go looking, he's found knocked out on the ground and the inventory ransacked. The two men are nowhere to be seen!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Damn those scroundels!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.World.getTemporaryRoster().clear();\n            _event.m.Dude1 = null;\n            _event.m.Dude2 = null;\n            local injury = _event.m.Victim.addInjury(this.Const.Injury.Concussion);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Victim.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            local r = this.Math.rand(1, 4);\n            if (r == 1) {\n                local food = this.World.Assets.getFoodItems();\n                food = food[this.Math.rand(0, food.len() - 1)];\n                this.World.Assets.getStash().remove(food);\n                this.List.push({\n                    id = 10\n                    icon = \"ui/items/\" + food.getIcon()\n                    text = \"You lose \" + food.getName()\n                })\n            } else {\n                if (r == 2) {\n                    local amount = this.Math.rand(20, 50);\n                    this.World.Assets.addAmmo(~amount);\n                    this.List.push({\n                        id = 10\n                        icon = \"ui/icons/asset_ammo.png\"\n                        text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Ammunition\"\n                    })\n                } else {\n                    if (r == 3) {\n                        local amount = this.Math.rand(5, 10);\n                        this.World.Assets.addArmorParts(~amount);\n                        this.List.push({\n                            id = 10\n                            icon = \"ui/icons/asset_supplies.png\"\n                            text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Tools and Supplies\"\n                        })\n                    } else {\n                        if (r == 4) {\n                            local amount = this.Math.rand(5, 10);\n                            this.World.Assets.addMedicine(~amount);\n                            this.List.push({\n                                id = 10\n                                icon = \"ui/icons/asset_medicine.png\"\n                                text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Medical Supplies\"\n                            })\n                        }\n                    }\n                }\n            };\n            this.Characters.push(_event.m.Victim.getImagePath());\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.deserter_origin_volunteer\";\n    this.m.Title = \"Along the road...\";\n    this.m.Cooldown = 50.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude1 = null;\n        _event.m.Dude2 = null;\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local roster = this.World.getTemporaryRoster();\n        _event.m.Dude1 = roster.create(\"scripts/entity/tactical/player\");\n        _event.m.Dude1.setStartValuesEx([\"deserter_background\"]);\n        _event.m.Dude1.getBackground().m.RawDescription = \"Running from bounty hunters and executioners for some time, %name% bumped into your company on the road and promptly volunteered.\";\n        _event.m.Dude1.getBackground().buildDescription(True);\n        _event.m.Dude2 = roster.create(\"scripts/entity/tactical/player\");\n        _event.m.Dude2.setStartValuesEx([\"deserter_background\"]);\n        _event.m.Dude2.getBackground().m.RawDescription = \"%name% deserted an army regiment together with \" + _event.m.Dude1.getNameOnly() + \" before he volunteered to join your company.\";\n        _event.m.Dude2.getBackground().buildDescription(True);\n        this.Characters.push(_event.m.Dude1.getImagePath());\n        this.Characters.push(_event.m.Dude2.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_88.png[/img]{A pair of men looking disheveled and weary emerge from some bushes beside the road. They hold their hands up as if they'd come to surrender themselves.%SPEECH_ON%Are ye the %companyname%? We'd heard you were a band of deserters. And I don't mean that as an insult. We're runners, too, but we got nowhere else to go. Everywhere we turn there are bounty hunters and executioners. Let us fight for you. It ain't the fight that ever scared us, we swears by that.%SPEECH_OFF%}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"We could use fighting men like you.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"We have no need for you.\"\n            getResult = function getResult(_event){\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude1 = null;\n                _event.m.Dude2 = null;\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local roster = this.World.getTemporaryRoster();\n            _event.m.Dude1 = roster.create(\"scripts/entity/tactical/player\");\n            _event.m.Dude1.setStartValuesEx([\"deserter_background\"]);\n            _event.m.Dude1.getBackground().m.RawDescription = \"Running from bounty hunters and executioners for some time, %name% bumped into your company on the road and promptly volunteered.\";\n            _event.m.Dude1.getBackground().buildDescription(True);\n            _event.m.Dude2 = roster.create(\"scripts/entity/tactical/player\");\n            _event.m.Dude2.setStartValuesEx([\"deserter_background\"]);\n            _event.m.Dude2.getBackground().m.RawDescription = \"%name% deserted an army regiment together with \" + _event.m.Dude1.getNameOnly() + \" before he volunteered to join your company.\";\n            _event.m.Dude2.getBackground().buildDescription(True);\n            this.Characters.push(_event.m.Dude1.getImagePath());\n            this.Characters.push(_event.m.Dude2.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.getPlayerRoster().add(_event.m.Dude1);\n        this.World.getPlayerRoster().add(_event.m.Dude2);\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude1.onHired();\n        _event.m.Dude2.onHired();\n        _event.m.Dude1 = null;\n        _event.m.Dude2 = null;\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Dude1.getImagePath());\n        this.Characters.push(_event.m.Dude2.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_88.png[/img]{It would be almost satisfyingly ironic to string these men up and hang them for what they'd done, but you are not about to set that tone for the company. You welcome them to the band, sending them forth to the inventory. %victim% keeps an eye on them for a time, but he reports that the men are true to their word and will fight.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Welcome to the %companyname%!\"\n            getResult = function getResult(_event){\n                this.World.getPlayerRoster().add(_event.m.Dude1);\n                this.World.getPlayerRoster().add(_event.m.Dude2);\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude1.onHired();\n                _event.m.Dude2.onHired();\n                _event.m.Dude1 = null;\n                _event.m.Dude2 = null;\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Dude1.getImagePath());\n            this.Characters.push(_event.m.Dude2.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude1 = null;\n        _event.m.Dude2 = null;\n        local injury = _event.m.Victim.addInjury(this.Const.Injury.Concussion);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Victim.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        local r = this.Math.rand(1, 4);\n        if (r == 1) {\n            local food = this.World.Assets.getFoodItems();\n            food = food[this.Math.rand(0, food.len() - 1)];\n            this.World.Assets.getStash().remove(food);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + food.getIcon()\n                text = \"You lose \" + food.getName()\n            })\n        } else {\n            if (r == 2) {\n                local amount = this.Math.rand(20, 50);\n                this.World.Assets.addAmmo(~amount);\n                this.List.push({\n                    id = 10\n                    icon = \"ui/icons/asset_ammo.png\"\n                    text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Ammunition\"\n                })\n            } else {\n                if (r == 3) {\n                    local amount = this.Math.rand(5, 10);\n                    this.World.Assets.addArmorParts(~amount);\n                    this.List.push({\n                        id = 10\n                        icon = \"ui/icons/asset_supplies.png\"\n                        text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Tools and Supplies\"\n                    })\n                } else {\n                    if (r == 4) {\n                        local amount = this.Math.rand(5, 10);\n                        this.World.Assets.addMedicine(~amount);\n                        this.List.push({\n                            id = 10\n                            icon = \"ui/icons/asset_medicine.png\"\n                            text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Medical Supplies\"\n                        })\n                    }\n                }\n            }\n        };\n        this.Characters.push(_event.m.Victim.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{It would be almost satisfyingly ironic to string these men up and hang them for what they'd done, but you are not about to set that tone for the company. You welcome them to the band, sending them forth to the inventory with %victim% keeping an eye on them. Except you don't see your sellsword for a suspicious length of time. When you go looking, he's found knocked out on the ground and the inventory ransacked. The two men are nowhere to be seen!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Damn those scroundels!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.World.getTemporaryRoster().clear();\n            _event.m.Dude1 = null;\n            _event.m.Dude2 = null;\n            local injury = _event.m.Victim.addInjury(this.Const.Injury.Concussion);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Victim.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            local r = this.Math.rand(1, 4);\n            if (r == 1) {\n                local food = this.World.Assets.getFoodItems();\n                food = food[this.Math.rand(0, food.len() - 1)];\n                this.World.Assets.getStash().remove(food);\n                this.List.push({\n                    id = 10\n                    icon = \"ui/items/\" + food.getIcon()\n                    text = \"You lose \" + food.getName()\n                })\n            } else {\n                if (r == 2) {\n                    local amount = this.Math.rand(20, 50);\n                    this.World.Assets.addAmmo(~amount);\n                    this.List.push({\n                        id = 10\n                        icon = \"ui/icons/asset_ammo.png\"\n                        text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Ammunition\"\n                    })\n                } else {\n                    if (r == 3) {\n                        local amount = this.Math.rand(5, 10);\n                        this.World.Assets.addArmorParts(~amount);\n                        this.List.push({\n                            id = 10\n                            icon = \"ui/icons/asset_supplies.png\"\n                            text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Tools and Supplies\"\n                        })\n                    } else {\n                        if (r == 4) {\n                            local amount = this.Math.rand(5, 10);\n                            this.World.Assets.addMedicine(~amount);\n                            this.List.push({\n                                id = 10\n                                icon = \"ui/icons/asset_medicine.png\"\n                                text = \"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Medical Supplies\"\n                            })\n                        }\n                    }\n                }\n            };\n            this.Characters.push(_event.m.Victim.getImagePath());\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n    return;\n}"
  },
  {
    "key": "329619f0b9e4ce5c66b502a35e137664b8cccbd3b36ee4e2188f72327d58cb08",
    "original": "Damn those scroundels!",
    "translation": "",
    "context": "Text = \"Damn those scroundels!\""
  },
  {
    "key": "bd8b4ff2c4f6a293ecd8e8c1620ceb278116547e20957556f32869fb94abedfe",
    "original": "Running from bounty hunters and executioners for some time, %name% bumped into your company on the road and promptly volunteered.",
    "translation": "",
    "context": "_event.m.Dude1.getBackground().m.RawDescription = \"Running from bounty hunters and executioners for some time, %name% bumped into your company on the road and promptly volunteered.\""
  },
  {
    "key": "dee06f104fb28402a6ac5b918045b5942d339e41715def0471efc41dd48323c7",
    "original": "We could use fighting men like you.",
    "translation": "",
    "context": "Text = \"We could use fighting men like you.\""
  },
  {
    "key": "a7f62f7adb384d3ffcb4708a87734122cc8482e5a635d00428fe0bf1fc01d860",
    "original": "We have no need for you.",
    "translation": "",
    "context": "Text = \"We have no need for you.\""
  },
  {
    "key": "2ecf62962ba7738186951b66543189369165b359b33d7bc772d477d4585b919f",
    "original": "Welcome to the %companyname%!",
    "translation": "",
    "context": "Text = \"Welcome to the %companyname%!\""
  },
  {
    "key": "206a22ae79743f3b9862628939132ec211d951f223ce6d2a7b925ba56a76f2d9",
    "original": "You lose ",
    "translation": "",
    "context": "\"You lose \" + food.getName()"
  },
  {
    "key": "41eb00b728bb1f7d4f1c2c460ae754d1549736419b7e3c28dc49a7f1bfd47b78",
    "original": "You lose [color=",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Medical Supplies\""
  },
  {
    "key": "41eb00b728bb1f7d4f1c2c460ae754d1549736419b7e3c28dc49a7f1bfd47b78",
    "original": "You lose [color=",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Ammunition\""
  },
  {
    "key": "41eb00b728bb1f7d4f1c2c460ae754d1549736419b7e3c28dc49a7f1bfd47b78",
    "original": "You lose [color=",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Tools and Supplies\""
  },
  {
    "key": "88916b630270dd394cb882ad1e0e33c236e955039eee15e561afe46950ea2e0e",
    "original": "[/color] Ammunition",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Ammunition\""
  },
  {
    "key": "a66ebf68b41a42c42344f1e6d21da6ee774c2ad1cde31e11a872713160e87ea7",
    "original": "[/color] Medical Supplies",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Medical Supplies\""
  },
  {
    "key": "5200f9e430d81871e9a59e77c996544f2acab92154c168015a1d6a67a0c59890",
    "original": "[/color] Tools and Supplies",
    "translation": "",
    "context": "\"You lose [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-\" + amount + \"[/color] Tools and Supplies\""
  },
  {
    "key": "6a5fa4fac835936446615046f14ff96eb465e262e5af1ec78f2752cbd24acc83",
    "original": "[img]gfx/ui/events/event_05.png[/img]{It would be almost satisfyingly ironic to string these men up and hang them for what they'd done, but you are not about to set that tone for the company. You welcome them to the band, sending them forth to the inventory with %victim% keeping an eye on them. Except you don't see your sellsword for a suspicious length of time. When you go looking, he's found knocked out on the ground and the inventory ransacked. The two men are nowhere to be seen!}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]{It would be almost satisfyingly ironic to string these men up and hang them for what they'd done, but you are not about to set that tone for the company. You welcome them to the band, sending them forth to the inventory with %victim% keeping an eye on them. Except you don't see your sellsword for a suspicious length of time. When you go looking, he's found knocked out on the ground and the inventory ransacked. The two men are nowhere to be seen!}\""
  },
  {
    "key": "4bc56f6235248d77d615467234ccd6709f4c212311da77047447a56f676371e0",
    "original": "[img]gfx/ui/events/event_88.png[/img]{A pair of men looking disheveled and weary emerge from some bushes beside the road. They hold their hands up as if they'd come to surrender themselves.%SPEECH_ON%Are ye the %companyname%? We'd heard you were a band of deserters. And I don't mean that as an insult. We're runners, too, but we got nowhere else to go. Everywhere we turn there are bounty hunters and executioners. Let us fight for you. It ain't the fight that ever scared us, we swears by that.%SPEECH_OFF%}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_88.png[/img]{A pair of men looking disheveled and weary emerge from some bushes beside the road. They hold their hands up as if they'd come to surrender themselves.%SPEECH_ON%Are ye the %companyname%? We'd heard you were a band of deserters. And I don't mean that as an insult. We're runners, too, but we got nowhere else to go. Everywhere we turn there are bounty hunters and executioners. Let us fight for you. It ain't the fight that ever scared us, we swears by that.%SPEECH_OFF%}\""
  },
  {
    "key": "940317ccd3810c82587a4c4833d3f66fc3ff33a0e42c1dd9927d5fd9ed68b194",
    "original": "[img]gfx/ui/events/event_88.png[/img]{It would be almost satisfyingly ironic to string these men up and hang them for what they'd done, but you are not about to set that tone for the company. You welcome them to the band, sending them forth to the inventory. %victim% keeps an eye on them for a time, but he reports that the men are true to their word and will fight.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_88.png[/img]{It would be almost satisfyingly ironic to string these men up and hang them for what they'd done, but you are not about to set that tone for the company. You welcome them to the band, sending them forth to the inventory. %victim% keeps an eye on them for a time, but he reports that the men are true to their word and will fight.}\""
  },
  {
    "key": "1bdd5b5b92e2d9f30a3b223bb359551d0da20e3702923e5f7b0a73889eba3d21",
    "original": "victim",
    "translation": "",
    "context": ""
  }
]