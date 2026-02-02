[
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "0fceca238e774a4ec796346b2da0f89daf989b814d993e438c5ba06a6eba21db",
    "original": "A close call.",
    "translation": "",
    "context": "Text = \"A close call.\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.treant_vs_giants\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 150.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_107.png[/img]{%randombrother% wrinkles his calf into a hole in the forest floor and curses with frustration.%SPEECH_ON%For farks sake as if my dogs weren't barking enough!%SPEECH_OFF%You turn to tell him to keep it quiet when suddenly you see an unhold scrambling up the forested hillside the company just climbed. Whereas you all struggled to ascend, the giant is hurdling upward and scrambling the incline, leaving small landslides in its wake. Before you can call it out, an enormous tree swerves down from a crowd of its still brethren and clotheslines the giant. A ball of spit zips through the forest breaking branches and brush and the giant slams its back to the forest floor and even at this distance it rumbles the ground beneath your feet. You see more unhold giants coming and more schrats unweaving themselves from the camouflage of the forest to do battle with them. It's a schrat against unhold no holds barked brawl!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Prepare to attack.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        },{\n            Text = \"Let's get the hell out of here.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_107.png[/img]{You crouch low and order the men to come forward and to do so quickly. They march past like ants as leaves and mats of hair sputter down from above and the violence of the giants claps against your ears like lightning. But you do manage to get out of there and leave the war of the monsters behind.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A close call.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        local properties = this.World.State.getLocalCombatProperties(this.World.State.getPlayer().getPos());\n        properties.CombatID = \"Event\";\n        properties.Music = this.Const.Music.BeastsTracks;\n        properties.IsAutoAssigningBases = False;\n        properties.Entities = [];\n        properties.PlayerDeploymentType = this.Const.Tactical.DeploymentType.Edge;\n        properties.EnemyDeploymentType = this.Const.Tactical.DeploymentType.Random;\n        this.Const.World.Common.addUnitsToCombat(properties.Entities, this.Const.World.Spawn.UnholdBog, 100, this.World.FactionManager.getFactionOfType(this.Const.FactionType.Beasts).getID());\n        this.Const.World.Common.addUnitsToCombat(properties.Entities, this.Const.World.Spawn.Schrats, 100, this.World.FactionManager.getFactionOfType(this.Const.FactionType.Bandits).getID());\n        this.World.State.startScriptedCombat(properties, False, False, True);\n        return 0;;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_107.png[/img]{You draw your sword, but %randombrother% puts his hand on your shoulder.%SPEECH_ON%Really, captain?%SPEECH_OFF%}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Yes, really.\"\n            getResult = function getResult(_event){\n                local properties = this.World.State.getLocalCombatProperties(this.World.State.getPlayer().getPos());\n                properties.CombatID = \"Event\";\n                properties.Music = this.Const.Music.BeastsTracks;\n                properties.IsAutoAssigningBases = False;\n                properties.Entities = [];\n                properties.PlayerDeploymentType = this.Const.Tactical.DeploymentType.Edge;\n                properties.EnemyDeploymentType = this.Const.Tactical.DeploymentType.Random;\n                this.Const.World.Common.addUnitsToCombat(properties.Entities, this.Const.World.Spawn.UnholdBog, 100, this.World.FactionManager.getFactionOfType(this.Const.FactionType.Beasts).getID());\n                this.Const.World.Common.addUnitsToCombat(properties.Entities, this.Const.World.Spawn.Schrats, 100, this.World.FactionManager.getFactionOfType(this.Const.FactionType.Bandits).getID());\n                this.World.State.startScriptedCombat(properties, False, False, True);\n                return 0;;\n                return;\n            }\n        },{\n            Text = \"On second thought, no.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": ""
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.treant_vs_giants\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 150.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_107.png[/img]{%randombrother% wrinkles his calf into a hole in the forest floor and curses with frustration.%SPEECH_ON%For farks sake as if my dogs weren't barking enough!%SPEECH_OFF%You turn to tell him to keep it quiet when suddenly you see an unhold scrambling up the forested hillside the company just climbed. Whereas you all struggled to ascend, the giant is hurdling upward and scrambling the incline, leaving small landslides in its wake. Before you can call it out, an enormous tree swerves down from a crowd of its still brethren and clotheslines the giant. A ball of spit zips through the forest breaking branches and brush and the giant slams its back to the forest floor and even at this distance it rumbles the ground beneath your feet. You see more unhold giants coming and more schrats unweaving themselves from the camouflage of the forest to do battle with them. It's a schrat against unhold no holds barked brawl!}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Prepare to attack.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        },{\n            Text = \"Let's get the hell out of here.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_107.png[/img]{You crouch low and order the men to come forward and to do so quickly. They march past like ants as leaves and mats of hair sputter down from above and the violence of the giants claps against your ears like lightning. But you do manage to get out of there and leave the war of the monsters behind.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A close call.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        local properties = this.World.State.getLocalCombatProperties(this.World.State.getPlayer().getPos());\n        properties.CombatID = \"Event\";\n        properties.Music = this.Const.Music.BeastsTracks;\n        properties.IsAutoAssigningBases = False;\n        properties.Entities = [];\n        properties.PlayerDeploymentType = this.Const.Tactical.DeploymentType.Edge;\n        properties.EnemyDeploymentType = this.Const.Tactical.DeploymentType.Random;\n        this.Const.World.Common.addUnitsToCombat(properties.Entities, this.Const.World.Spawn.UnholdBog, 100, this.World.FactionManager.getFactionOfType(this.Const.FactionType.Beasts).getID());\n        this.Const.World.Common.addUnitsToCombat(properties.Entities, this.Const.World.Spawn.Schrats, 100, this.World.FactionManager.getFactionOfType(this.Const.FactionType.Bandits).getID());\n        this.World.State.startScriptedCombat(properties, False, False, True);\n        return 0;;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_107.png[/img]{You draw your sword, but %randombrother% puts his hand on your shoulder.%SPEECH_ON%Really, captain?%SPEECH_OFF%}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Yes, really.\"\n            getResult = function getResult(_event){\n                local properties = this.World.State.getLocalCombatProperties(this.World.State.getPlayer().getPos());\n                properties.CombatID = \"Event\";\n                properties.Music = this.Const.Music.BeastsTracks;\n                properties.IsAutoAssigningBases = False;\n                properties.Entities = [];\n                properties.PlayerDeploymentType = this.Const.Tactical.DeploymentType.Edge;\n                properties.EnemyDeploymentType = this.Const.Tactical.DeploymentType.Random;\n                this.Const.World.Common.addUnitsToCombat(properties.Entities, this.Const.World.Spawn.UnholdBog, 100, this.World.FactionManager.getFactionOfType(this.Const.FactionType.Beasts).getID());\n                this.Const.World.Common.addUnitsToCombat(properties.Entities, this.Const.World.Spawn.Schrats, 100, this.World.FactionManager.getFactionOfType(this.Const.FactionType.Bandits).getID());\n                this.World.State.startScriptedCombat(properties, False, False, True);\n                return 0;;\n                return;\n            }\n        },{\n            Text = \"On second thought, no.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "4e1f49a9c8ae8a158434e647c0c410352d718984a4fcd144d26cca3c394caa02",
    "original": "Event",
    "translation": "",
    "context": "properties.CombatID = \"Event\""
  },
  {
    "key": "00a0f1c4159676e580d2447fda63e4b049adf33b6b4df20022361edd7d692e56",
    "original": "Let's get the hell out of here.",
    "translation": "",
    "context": "Text = \"Let's get the hell out of here.\""
  },
  {
    "key": "3a6216914dc69b16e4e0bd4fc65eafea6d18805981c4083a8d1f1eab26300a54",
    "original": "On second thought, no.",
    "translation": "",
    "context": "Text = \"On second thought, no.\""
  },
  {
    "key": "e3eadb8199289e71b741a1b595fcb8ece44327afc7e86270ecba13492472b110",
    "original": "Prepare to attack.",
    "translation": "",
    "context": "Text = \"Prepare to attack.\""
  },
  {
    "key": "4d1f09f288f8718c6c8149b080cd9b2aac7cdf377847e227bcb83ad7b8028138",
    "original": "Yes, really.",
    "translation": "",
    "context": "Text = \"Yes, really.\""
  },
  {
    "key": "b6f55eb1ce69657e225cd719c1f3d10e0ba05ea4127361bf8ef2bda2d22d3c0d",
    "original": "[img]gfx/ui/events/event_107.png[/img]{%randombrother% wrinkles his calf into a hole in the forest floor and curses with frustration.%SPEECH_ON%For farks sake as if my dogs weren't barking enough!%SPEECH_OFF%You turn to tell him to keep it quiet when suddenly you see an unhold scrambling up the forested hillside the company just climbed. Whereas you all struggled to ascend, the giant is hurdling upward and scrambling the incline, leaving small landslides in its wake. Before you can call it out, an enormous tree swerves down from a crowd of its still brethren and clotheslines the giant. A ball of spit zips through the forest breaking branches and brush and the giant slams its back to the forest floor and even at this distance it rumbles the ground beneath your feet. You see more unhold giants coming and more schrats unweaving themselves from the camouflage of the forest to do battle with them. It's a schrat against unhold no holds barked brawl!}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_107.png[/img]{%randombrother% wrinkles his calf into a hole in the forest floor and curses with frustration.%SPEECH_ON%For farks sake as if my dogs weren't barking enough!%SPEECH_OFF%You turn to tell him to keep it quiet when suddenly you see an unhold scrambling up the forested hillside the company just climbed. Whereas you all struggled to ascend, the giant is hurdling upward and scrambling the incline, leaving small landslides in its wake. Before you can call it out, an enormous tree swerves down from a crowd of its still brethren and clotheslines the giant. A ball of spit zips through the forest breaking branches and brush and the giant slams its back to the forest floor and even at this distance it rumbles the ground beneath your feet. You see more unhold giants coming and more schrats unweaving themselves from the camouflage of the forest to do battle with them. It's a schrat against unhold no holds barked brawl!}\""
  },
  {
    "key": "4bf5c93088227ca4b09ee302749c5c67b71999a923ae35019e0bf6f877653c3d",
    "original": "[img]gfx/ui/events/event_107.png[/img]{You crouch low and order the men to come forward and to do so quickly. They march past like ants as leaves and mats of hair sputter down from above and the violence of the giants claps against your ears like lightning. But you do manage to get out of there and leave the war of the monsters behind.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_107.png[/img]{You crouch low and order the men to come forward and to do so quickly. They march past like ants as leaves and mats of hair sputter down from above and the violence of the giants claps against your ears like lightning. But you do manage to get out of there and leave the war of the monsters behind.}\""
  },
  {
    "key": "84c09351c13063c5defd4afde1077e4ff5899a85325607bdb250236b4c2a70f3",
    "original": "[img]gfx/ui/events/event_107.png[/img]{You draw your sword, but %randombrother% puts his hand on your shoulder.%SPEECH_ON%Really, captain?%SPEECH_OFF%}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_107.png[/img]{You draw your sword, but %randombrother% puts his hand on your shoulder.%SPEECH_ON%Really, captain?%SPEECH_OFF%}\""
  }
]