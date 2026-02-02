[
  {
    "key": "a4bd17fe882a1986eb3b0b5de5c203b671c9b8521010ff64753d77f485322350",
    "original": " is sick",
    "translation": "",
    "context": "_event.m.Volunteer.getName() + \" is sick\""
  },
  {
    "key": "95d887cb24b9b69d33e4da929cf43807c31be6c52e7ec4f1744f16e5e0d3416f",
    "original": "%terrainImage%It appears that the herbs are not just harmless, but rather even proactive in taking care of some nagging issues with the men. %volunteer%'s cold seems to have lifted, and the stomach pains of %otherguy% have abated. After trying some yourself, you see a splinter wiggle its way out of your thumb. Amazing!",
    "translation": "",
    "context": "Text = \"%terrainImage%It appears that the herbs are not just harmless, but rather even proactive in taking care of some nagging issues with the men. %volunteer%'s cold seems to have lifted, and the stomach pains of %otherguy% have abated. After trying some yourself, you see a splinter wiggle its way out of your thumb. Amazing!\""
  },
  {
    "key": "9548ed3c1a55655de16f2c282460ea1b154116f8255e23be0400ac7e86895398",
    "original": "%terrainImage%While heading toward your destination, %volunteer% runs up to you with a bundle of herbs in hand. Now you know this fool knows nothing about plants or wildlife, but he seems rather persistent in wanting to try them out. Something about 'hearing' of magical powers to be found in the essence of herbs. This talk gets the attention of a few others in the company. Soon, a number of them are asking to try out the 'medicine' for the good of their brothers.",
    "translation": "",
    "context": "Text = \"%terrainImage%While heading toward your destination, %volunteer% runs up to you with a bundle of herbs in hand. Now you know this fool knows nothing about plants or wildlife, but he seems rather persistent in wanting to try them out. Something about 'hearing' of magical powers to be found in the essence of herbs. This talk gets the attention of a few others in the company. Soon, a number of them are asking to try out the 'medicine' for the good of their brothers.\""
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
    "key": "ae31efc9bb7ce0a89c17317e6d702b0584f6bd73fe7518a2ae9d3464a76b1d5b",
    "original": "Along the way...",
    "translation": "",
    "context": "this.m.Title = \"Along the way...\""
  },
  {
    "key": "161fdcce3e2e7cdbe03869c07b0affd475cdf4bf5bc2b3b6e1e4f037131666bc",
    "original": "Amazing!",
    "translation": "",
    "context": "Text = \"Amazing!\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 50 ? \"C\" : \"B\";;\n    return;\n}"
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
    "context": "create = function create(){\n    this.m.ID = \"event.herbs_along_the_way\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 30.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 50 ? \"C\" : \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"%terrainImage%While heading toward your destination, %volunteer% runs up to you with a bundle of herbs in hand. Now you know this fool knows nothing about plants or wildlife, but he seems rather persistent in wanting to try them out. Something about 'hearing' of magical powers to be found in the essence of herbs. This talk gets the attention of a few others in the company. Soon, a number of them are asking to try out the 'medicine' for the good of their brothers.\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"They look good, any volunteer to try them?\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 50 ? \"C\" : \"B\";;\n                return;\n            }\n        },{\n            Text = \"{Better not try our luck. | You fools will only poison yourselves.}\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local amount = this.Math.rand(5, 12);\n        this.World.Assets.addMedicine(amount);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_medicine.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Medical Supplies\"\n        }];\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"%terrainImage%It appears that the herbs are not just harmless, but rather even proactive in taking care of some nagging issues with the men. %volunteer%'s cold seems to have lifted, and the stomach pains of %otherguy% have abated. After trying some yourself, you see a splinter wiggle its way out of your thumb. Amazing!\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Amazing!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local amount = this.Math.rand(5, 12);\n            this.World.Assets.addMedicine(amount);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_medicine.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Medical Supplies\"\n            }];\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local effect = this.new(\"scripts/skills/injury/sickness_injury\");\n        _event.m.Volunteer.getSkills().add(effect);\n        this.List = [{\n            id = 10\n            icon = effect.getIcon()\n            text = _event.m.Volunteer.getName() + \" is sick\"\n        }];\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_18.png[/img]From one end comes vomit and from the other shite. It appears the herbs were not worth a try after all. %volunteer% bravely elected himself ready to chow down on the mystery plants and, suffice it to say, the proportions which you are seeing come out of him are definitely mystical in that strange, 'can the body really hold that much?', sort of way.\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Ewww.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local effect = this.new(\"scripts/skills/injury/sickness_injury\");\n            _event.m.Volunteer.getSkills().add(effect);\n            this.List = [{\n                id = 10\n                icon = effect.getIcon()\n                text = _event.m.Volunteer.getName() + \" is sick\"\n            }];\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 50 ? \"C\" : \"B\";;\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.herbs_along_the_way\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 30.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 50 ? \"C\" : \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"%terrainImage%While heading toward your destination, %volunteer% runs up to you with a bundle of herbs in hand. Now you know this fool knows nothing about plants or wildlife, but he seems rather persistent in wanting to try them out. Something about 'hearing' of magical powers to be found in the essence of herbs. This talk gets the attention of a few others in the company. Soon, a number of them are asking to try out the 'medicine' for the good of their brothers.\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"They look good, any volunteer to try them?\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 50 ? \"C\" : \"B\";;\n                return;\n            }\n        },{\n            Text = \"{Better not try our luck. | You fools will only poison yourselves.}\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local amount = this.Math.rand(5, 12);\n        this.World.Assets.addMedicine(amount);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_medicine.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Medical Supplies\"\n        }];\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"%terrainImage%It appears that the herbs are not just harmless, but rather even proactive in taking care of some nagging issues with the men. %volunteer%'s cold seems to have lifted, and the stomach pains of %otherguy% have abated. After trying some yourself, you see a splinter wiggle its way out of your thumb. Amazing!\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Amazing!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local amount = this.Math.rand(5, 12);\n            this.World.Assets.addMedicine(amount);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_medicine.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Medical Supplies\"\n            }];\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local effect = this.new(\"scripts/skills/injury/sickness_injury\");\n        _event.m.Volunteer.getSkills().add(effect);\n        this.List = [{\n            id = 10\n            icon = effect.getIcon()\n            text = _event.m.Volunteer.getName() + \" is sick\"\n        }];\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_18.png[/img]From one end comes vomit and from the other shite. It appears the herbs were not worth a try after all. %volunteer% bravely elected himself ready to chow down on the mystery plants and, suffice it to say, the proportions which you are seeing come out of him are definitely mystical in that strange, 'can the body really hold that much?', sort of way.\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Ewww.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local effect = this.new(\"scripts/skills/injury/sickness_injury\");\n            _event.m.Volunteer.getSkills().add(effect);\n            this.List = [{\n                id = 10\n                icon = effect.getIcon()\n                text = _event.m.Volunteer.getName() + \" is sick\"\n            }];\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "786f5db6b7ac7bd8bbc2dbe70468be0c0a7bd6c5397859da5fca86ae0e92c530",
    "original": "Ewww.",
    "translation": "",
    "context": "Text = \"Ewww.\""
  },
  {
    "key": "6a7c97c69250fa6274697148e7504dbdc52b242c6ddbc868f38c303a649aaaef",
    "original": "They look good, any volunteer to try them?",
    "translation": "",
    "context": "Text = \"They look good, any volunteer to try them?\""
  },
  {
    "key": "75c45e6b8866c7aacf8d3a14cae5d644d278d2f53ab2cc835118e64cc9d12404",
    "original": "You gain [color=",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Medical Supplies\""
  },
  {
    "key": "a66ebf68b41a42c42344f1e6d21da6ee774c2ad1cde31e11a872713160e87ea7",
    "original": "[/color] Medical Supplies",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+\" + amount + \"[/color] Medical Supplies\""
  },
  {
    "key": "4e4111399770f18079f087a91b47be85f13950a331e00d9189bd3dd613fa1581",
    "original": "[img]gfx/ui/events/event_18.png[/img]From one end comes vomit and from the other shite. It appears the herbs were not worth a try after all. %volunteer% bravely elected himself ready to chow down on the mystery plants and, suffice it to say, the proportions which you are seeing come out of him are definitely mystical in that strange, 'can the body really hold that much?', sort of way.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_18.png[/img]From one end comes vomit and from the other shite. It appears the herbs were not worth a try after all. %volunteer% bravely elected himself ready to chow down on the mystery plants and, suffice it to say, the proportions which you are seeing come out of him are definitely mystical in that strange, 'can the body really hold that much?', sort of way.\""
  },
  {
    "key": "6105d6cc76af400325e94d588ce511be5bfdbb73b437dc51eca43917d7a43e3d",
    "original": "image",
    "translation": "",
    "context": ""
  },
  {
    "key": "f5150ee304c068edbef20dacf2450f7ec057d0c288d7fea3ec30ea4616f98d6d",
    "original": "otherguy",
    "translation": "",
    "context": ""
  },
  {
    "key": "dcbb0f3cafb30402d5ed4cb826e000bcae930c7ce60763e0458665150dffa879",
    "original": "volunteer",
    "translation": "",
    "context": ""
  },
  {
    "key": "d974e1cf1d0dbb455492ccf500dd6267967375f83c927ea2260e64b6a3405456",
    "original": "{Better not try our luck. | You fools will only poison yourselves.}",
    "translation": "",
    "context": "Text = \"{Better not try our luck. | You fools will only poison yourselves.}\""
  }
]