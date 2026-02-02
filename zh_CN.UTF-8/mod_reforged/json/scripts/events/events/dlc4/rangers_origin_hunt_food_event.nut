[
  {
    "key": "8c4401d0753098d7a38cbf7246a4f9cc426e9ba62a6ea25d2de002bed9e8fc3a",
    "original": " suffers ",
    "translation": "",
    "context": "_event.m.Hunter.getName() + \" suffers \" + injury.getNameOnly()"
  },
  {
    "key": "465d3d1f171b1fbd8fc84b73335e3a314a1bc75c6a3f1b26ea36e8566e40bfd9",
    "original": "%terrainImage%{An hour or so after sending the men off on a hunt, they return. Except they're dragging a bloodied and shredded %bearbrother% back into camp. They report the group had crossed paths with a momma brown bear. Her fight was tremendous, and she only stopped mauling the wounded poacher because one of the men threatened her babies with a torch. You're happy the men are all alive, albeit %bearbrother% is going to require a long time to recover.}",
    "translation": "",
    "context": "Text = \"%terrainImage%{An hour or so after sending the men off on a hunt, they return. Except they're dragging a bloodied and shredded %bearbrother% back into camp. They report the group had crossed paths with a momma brown bear. Her fight was tremendous, and she only stopped mauling the wounded poacher because one of the men threatened her babies with a torch. You're happy the men are all alive, albeit %bearbrother% is going to require a long time to recover.}\""
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "f3135f42093ede06174bad3bfc4404d4ab53271b9301b14b1dbd46b613c025f3",
    "original": "A decent hunt.",
    "translation": "",
    "context": "Text = \"A decent hunt.\""
  },
  {
    "key": "f2be432fc849a282486188b07c9f1d5fc3e09d4c0c8ac1bcbd8c977c7dc22da1",
    "original": "A good hunt.",
    "translation": "",
    "context": "Text = \"A good hunt.\""
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
    "context": "getResult = function getResult(_event){\n    local r = this.Math.rand(1, 100);\n    if (r <= 70) {\n        return \"C\";\n    } else {\n        if (r <= 90) {\n            return \"B\";\n        } else {\n            return \"D\";\n        }\n    };\n    return;\n}"
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
    "context": "create = function create(){\n    this.m.ID = \"event.rangers_origin_hunt_food\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 7.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        local r = this.Math.rand(1, 100);\n        if (r <= 70) {\n            return \"C\";\n        } else {\n            if (r <= 90) {\n                return \"B\";\n            } else {\n                return \"D\";\n            }\n        };\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{Being the collection of hunters that you are, it becomes readily apparent that you've entered some fine hunting grounds. %randombrother% suggests the company go for a hunt, though he warns the group should be mindful of just how much they pluck from these bountiful stretches.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's hunt!\"\n            getResult = function getResult(_event){\n                local r = this.Math.rand(1, 100);\n                if (r <= 70) {\n                    return \"C\";\n                } else {\n                    if (r <= 90) {\n                        return \"B\";\n                    } else {\n                        return \"D\";\n                    }\n                };\n                return;\n            }\n        },{\n            Text = \"There's time for this later.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n        this.World.Assets.getStash().add(food);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + food.getIcon()\n            text = \"You gain Venison\"\n        });\n        local item = this.new(\"scripts/items/loot/valuable_furs_item\");\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + item.getName()\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{The men are ordered to go on a hunt and they take an inch a mile! They shoot and strip and slaughter just about everything breathing animal in range. You're wary of this leading to the attention of local nobles, but they are none the wiser. Inventory stores will be brimming!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A good hunt.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n            this.World.Assets.getStash().add(food);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + food.getIcon()\n                text = \"You gain Venison\"\n            });\n            local item = this.new(\"scripts/items/loot/valuable_furs_item\");\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + item.getName()\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n        this.World.Assets.getStash().add(food);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + food.getIcon()\n            text = \"You gain Venison\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{A few of the men depart on the hunt and return with a couple of kills. You ask if they ran into any trouble and they shake their heads no. Looks like the inventory will see some tasty additions and no nobleman will be any wiser!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A decent hunt.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n            this.World.Assets.getStash().add(food);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + food.getIcon()\n                text = \"You gain Venison\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local injury = _event.m.Hunter.addInjury(this.Const.Injury.Accident3);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Hunter.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        this.Characters.push(_event.m.Hunter.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"D\"\n        Text = \"%terrainImage%{An hour or so after sending the men off on a hunt, they return. Except they're dragging a bloodied and shredded %bearbrother% back into camp. They report the group had crossed paths with a momma brown bear. Her fight was tremendous, and she only stopped mauling the wounded poacher because one of the men threatened her babies with a torch. You're happy the men are all alive, albeit %bearbrother% is going to require a long time to recover.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"This mercenary work is dulling our senses.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local injury = _event.m.Hunter.addInjury(this.Const.Injury.Accident3);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Hunter.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            this.Characters.push(_event.m.Hunter.getImagePath());\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    local r = this.Math.rand(1, 100);\n    if (r <= 70) {\n        return \"C\";\n    } else {\n        if (r <= 90) {\n            return \"B\";\n        } else {\n            return \"D\";\n        }\n    };\n    return;\n}"
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
    "context": "create = function create(){\n    this.m.ID = \"event.rangers_origin_hunt_food\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 7.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        local r = this.Math.rand(1, 100);\n        if (r <= 70) {\n            return \"C\";\n        } else {\n            if (r <= 90) {\n                return \"B\";\n            } else {\n                return \"D\";\n            }\n        };\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{Being the collection of hunters that you are, it becomes readily apparent that you've entered some fine hunting grounds. %randombrother% suggests the company go for a hunt, though he warns the group should be mindful of just how much they pluck from these bountiful stretches.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's hunt!\"\n            getResult = function getResult(_event){\n                local r = this.Math.rand(1, 100);\n                if (r <= 70) {\n                    return \"C\";\n                } else {\n                    if (r <= 90) {\n                        return \"B\";\n                    } else {\n                        return \"D\";\n                    }\n                };\n                return;\n            }\n        },{\n            Text = \"There's time for this later.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n        this.World.Assets.getStash().add(food);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + food.getIcon()\n            text = \"You gain Venison\"\n        });\n        local item = this.new(\"scripts/items/loot/valuable_furs_item\");\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + item.getName()\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{The men are ordered to go on a hunt and they take an inch a mile! They shoot and strip and slaughter just about everything breathing animal in range. You're wary of this leading to the attention of local nobles, but they are none the wiser. Inventory stores will be brimming!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A good hunt.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n            this.World.Assets.getStash().add(food);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + food.getIcon()\n                text = \"You gain Venison\"\n            });\n            local item = this.new(\"scripts/items/loot/valuable_furs_item\");\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + item.getName()\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n        this.World.Assets.getStash().add(food);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + food.getIcon()\n            text = \"You gain Venison\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{A few of the men depart on the hunt and return with a couple of kills. You ask if they ran into any trouble and they shake their heads no. Looks like the inventory will see some tasty additions and no nobleman will be any wiser!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A decent hunt.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n            this.World.Assets.getStash().add(food);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + food.getIcon()\n                text = \"You gain Venison\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local injury = _event.m.Hunter.addInjury(this.Const.Injury.Accident3);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Hunter.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        this.Characters.push(_event.m.Hunter.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"D\"\n        Text = \"%terrainImage%{An hour or so after sending the men off on a hunt, they return. Except they're dragging a bloodied and shredded %bearbrother% back into camp. They report the group had crossed paths with a momma brown bear. Her fight was tremendous, and she only stopped mauling the wounded poacher because one of the men threatened her babies with a torch. You're happy the men are all alive, albeit %bearbrother% is going to require a long time to recover.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"This mercenary work is dulling our senses.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local injury = _event.m.Hunter.addInjury(this.Const.Injury.Accident3);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Hunter.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            this.Characters.push(_event.m.Hunter.getImagePath());\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    local r = this.Math.rand(1, 100);\n    if (r <= 70) {\n        return \"C\";\n    } else {\n        if (r <= 90) {\n            return \"B\";\n        } else {\n            return \"D\";\n        }\n    };\n    return;\n}"
  },
  {
    "key": "3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43",
    "original": "D",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.rangers_origin_hunt_food\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 7.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        local r = this.Math.rand(1, 100);\n        if (r <= 70) {\n            return \"C\";\n        } else {\n            if (r <= 90) {\n                return \"B\";\n            } else {\n                return \"D\";\n            }\n        };\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{Being the collection of hunters that you are, it becomes readily apparent that you've entered some fine hunting grounds. %randombrother% suggests the company go for a hunt, though he warns the group should be mindful of just how much they pluck from these bountiful stretches.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's hunt!\"\n            getResult = function getResult(_event){\n                local r = this.Math.rand(1, 100);\n                if (r <= 70) {\n                    return \"C\";\n                } else {\n                    if (r <= 90) {\n                        return \"B\";\n                    } else {\n                        return \"D\";\n                    }\n                };\n                return;\n            }\n        },{\n            Text = \"There's time for this later.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n        this.World.Assets.getStash().add(food);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + food.getIcon()\n            text = \"You gain Venison\"\n        });\n        local item = this.new(\"scripts/items/loot/valuable_furs_item\");\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + item.getName()\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{The men are ordered to go on a hunt and they take an inch a mile! They shoot and strip and slaughter just about everything breathing animal in range. You're wary of this leading to the attention of local nobles, but they are none the wiser. Inventory stores will be brimming!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A good hunt.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n            this.World.Assets.getStash().add(food);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + food.getIcon()\n                text = \"You gain Venison\"\n            });\n            local item = this.new(\"scripts/items/loot/valuable_furs_item\");\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + item.getName()\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n        this.World.Assets.getStash().add(food);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + food.getIcon()\n            text = \"You gain Venison\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_10.png[/img]{A few of the men depart on the hunt and return with a couple of kills. You ask if they ran into any trouble and they shake their heads no. Looks like the inventory will see some tasty additions and no nobleman will be any wiser!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A decent hunt.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local food = this.new(\"scripts/items/supplies/cured_venison_item\");\n            this.World.Assets.getStash().add(food);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + food.getIcon()\n                text = \"You gain Venison\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local injury = _event.m.Hunter.addInjury(this.Const.Injury.Accident3);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Hunter.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        this.Characters.push(_event.m.Hunter.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"D\"\n        Text = \"%terrainImage%{An hour or so after sending the men off on a hunt, they return. Except they're dragging a bloodied and shredded %bearbrother% back into camp. They report the group had crossed paths with a momma brown bear. Her fight was tremendous, and she only stopped mauling the wounded poacher because one of the men threatened her babies with a torch. You're happy the men are all alive, albeit %bearbrother% is going to require a long time to recover.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"This mercenary work is dulling our senses.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local injury = _event.m.Hunter.addInjury(this.Const.Injury.Accident3);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Hunter.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            this.Characters.push(_event.m.Hunter.getImagePath());\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43",
    "original": "D",
    "translation": "",
    "context": ""
  },
  {
    "key": "c0482ece0fc08602cbd91a5336ae4ed47f0d1a10bf367dadc029f361a39a6e7f",
    "original": "Let's hunt!",
    "translation": "",
    "context": "Text = \"Let's hunt!\""
  },
  {
    "key": "7ef0e05f9f8d86efbf2f615fc6793afbb5deb924867821524ca2f8e71f73961c",
    "original": "There's time for this later.",
    "translation": "",
    "context": "Text = \"There's time for this later.\""
  },
  {
    "key": "900f2d1a340161daf9f181a7ef651bd0904dbe92f70b92e6a043607b0ab53fd1",
    "original": "This mercenary work is dulling our senses.",
    "translation": "",
    "context": "Text = \"This mercenary work is dulling our senses.\""
  },
  {
    "key": "85d13cf4d5f8d972cb9d6de67c9cc3128758d8462dd3293693b2bcc94257ec0e",
    "original": "You gain ",
    "translation": "",
    "context": "\"You gain \" + item.getName()"
  },
  {
    "key": "5a7d16e12b9920a0bc2cd85085a331a9422bd76f37a588f0924c45c6ef6673ec",
    "original": "You gain Venison",
    "translation": "",
    "context": "text = \"You gain Venison\""
  },
  {
    "key": "9ddeaea72d336b7f199a8a6f53646bddac1c829727a986314da5caa9f9b9f241",
    "original": "[img]gfx/ui/events/event_10.png[/img]{A few of the men depart on the hunt and return with a couple of kills. You ask if they ran into any trouble and they shake their heads no. Looks like the inventory will see some tasty additions and no nobleman will be any wiser!}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_10.png[/img]{A few of the men depart on the hunt and return with a couple of kills. You ask if they ran into any trouble and they shake their heads no. Looks like the inventory will see some tasty additions and no nobleman will be any wiser!}\""
  },
  {
    "key": "4ff6acfc1b8a663c91c9a2a559b896ec3406985a492044822e46c663d9c55568",
    "original": "[img]gfx/ui/events/event_10.png[/img]{Being the collection of hunters that you are, it becomes readily apparent that you've entered some fine hunting grounds. %randombrother% suggests the company go for a hunt, though he warns the group should be mindful of just how much they pluck from these bountiful stretches.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_10.png[/img]{Being the collection of hunters that you are, it becomes readily apparent that you've entered some fine hunting grounds. %randombrother% suggests the company go for a hunt, though he warns the group should be mindful of just how much they pluck from these bountiful stretches.}\""
  },
  {
    "key": "8d8ee0e6bbe16ccf55c41dc4976282a3162f04219a26053497ec8f0a6e30a48b",
    "original": "[img]gfx/ui/events/event_10.png[/img]{The men are ordered to go on a hunt and they take an inch a mile! They shoot and strip and slaughter just about everything breathing animal in range. You're wary of this leading to the attention of local nobles, but they are none the wiser. Inventory stores will be brimming!}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_10.png[/img]{The men are ordered to go on a hunt and they take an inch a mile! They shoot and strip and slaughter just about everything breathing animal in range. You're wary of this leading to the attention of local nobles, but they are none the wiser. Inventory stores will be brimming!}\""
  },
  {
    "key": "66ea0851cbb9a2198da2b464b81abe23733b2c55c34844f002774e425a592052",
    "original": "bearbrother",
    "translation": "",
    "context": ""
  }
]