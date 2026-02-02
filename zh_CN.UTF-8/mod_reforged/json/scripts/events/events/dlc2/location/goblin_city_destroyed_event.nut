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
    "key": "3016321de3cc7ad3cd377e2b5e14258918a8b303ad57d5258c975553be13bbda",
    "original": "After the battle",
    "translation": "",
    "context": "this.m.Title = \"After the battle\""
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
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.location.goblin_city_destroyed\";\n    this.m.Title = \"After the battle\";\n    this.m.Cooldown = 999999.0 * this.World.getTime().SecondsPerDay;\n    this.m.IsSpecial = True;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_119.png[/img]{The goblin vanguard vanquished, you march on the city to ransack it. Tiny goblins are slain and scalped or beheaded. More yet scurry around you like ants, each carrying something above their heads like human skulls or treasures and one sprints madly about toting a flagpole with its banner aflame and another dances with the decapitated head of a wolf. Your men turn over huts and shanties and kick out leaners and anything found breathing is put to an end.\\n\\n An ancient fortress the goblins used for a city core is set upon with a pillager's eye. You enter the halls yourself and there find a blind goblin crawling with a wreath of human femurs hanging from its neck. The greenskin chitters and chamfers in your general direction, no doubt sensing your presence, though a pained grimace on its face means it also senses the annihilation of its people. You gut the greenskin and leave it to die on the stone floor. Your mercenaries run on ahead and into a council room full of elders and cut them all down in a murderous frenzy that has limbs flying and fingers scattering and blood shooting up the walls and across the tables.\\n\\n You head outside to the castle yard. Here you find a pile of dead humans, some mutilated, others charged, one stuffed with a torch as though his ribcage were a brazier. Past the corpses you spot the wolfrider kennels. You have wolf cages burned and their trainers thrown in the fires to die with them. One of the wolves breaks free and sprints further into the city with a cape of flame for fur. It runs from abode to abode barking and howling for relief. You watch as the flames rapidly burn thatched huts and strawroofed shacks. Before you yourself are consumed in the fiery carnage, you order the men back out and watch the whole place burn to the ground. With the savages taken care of, you take inventory of the loot.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Who is that?\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.World.Flags.set(\"IsGoblinCityDestroyed\", True);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_119.png[/img]{As you count the loot, the stranger who ordained this entire goblin-slaying strategy reappears. You can't even see the color of him for he is utterly drenched in goblin guts and gore. He's got a few scalps in hand and a pouch that has ears and noses poking out the top and blood dripping from the bottom. He nods.%SPEECH_ON%All is well, traveler, all is well. We did good.%SPEECH_OFF%You ask him if he set the fire. He nods.%SPEECH_ON%Goblins stagger their rearguard in mazes of walls and mines. I shuttered their escapes to hem the population between two walls, closed the way out, closed the way in, and set fire to everything. They perished quickly. I see you fared well. You can keep the loot. I've no use for it.%SPEECH_OFF%He turns and walks away. You yell out to him, this outrageous warrior, and ask how much he'd want to join the company. This time he turns back.%SPEECH_ON%Heh, heh, haha, hahaha! Traveler! This joke, ah. Comedy. Delightful. Truly. But my work will not be stalled until every goblin has been destroyed.%SPEECH_OFF%Fair enough, a man's purpose is his own. But you're curious. You ask how many cities are out there.%SPEECH_ON%Twenty three, oh, sorry, did you ask how many there are in total? Twenty three I've destroyed, but still in existence there are, ah, two, three, hmmm. I wager four thousand. Good travels, traveler.%SPEECH_OFF%This time he departs for good. You look back at the %companyname%. They are in rare agreement: they wish they hadn't heard any of that.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"That few, huh?\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.World.Flags.set(\"IsGoblinCityDestroyed\", True);\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "1335ffd3d027e5d4fd8a969d8f94462f5d2baf031fc922f3690062ad1ce3cac9",
    "original": "That few, huh?",
    "translation": "",
    "context": "Text = \"That few, huh?\""
  },
  {
    "key": "593320ee19156652a5903a4e59a84c855b8e9f77b4dbe82150092816e6e1c6b1",
    "original": "Who is that?",
    "translation": "",
    "context": "Text = \"Who is that?\""
  },
  {
    "key": "1b10ec8254248f5d0abb424e7cee4b822f6822e2e97312e92d0427adef3f9284",
    "original": "[img]gfx/ui/events/event_119.png[/img]{As you count the loot, the stranger who ordained this entire goblin-slaying strategy reappears. You can't even see the color of him for he is utterly drenched in goblin guts and gore. He's got a few scalps in hand and a pouch that has ears and noses poking out the top and blood dripping from the bottom. He nods.%SPEECH_ON%All is well, traveler, all is well. We did good.%SPEECH_OFF%You ask him if he set the fire. He nods.%SPEECH_ON%Goblins stagger their rearguard in mazes of walls and mines. I shuttered their escapes to hem the population between two walls, closed the way out, closed the way in, and set fire to everything. They perished quickly. I see you fared well. You can keep the loot. I've no use for it.%SPEECH_OFF%He turns and walks away. You yell out to him, this outrageous warrior, and ask how much he'd want to join the company. This time he turns back.%SPEECH_ON%Heh, heh, haha, hahaha! Traveler! This joke, ah. Comedy. Delightful. Truly. But my work will not be stalled until every goblin has been destroyed.%SPEECH_OFF%Fair enough, a man's purpose is his own. But you're curious. You ask how many cities are out there.%SPEECH_ON%Twenty three, oh, sorry, did you ask how many there are in total? Twenty three I've destroyed, but still in existence there are, ah, two, three, hmmm. I wager four thousand. Good travels, traveler.%SPEECH_OFF%This time he departs for good. You look back at the %companyname%. They are in rare agreement: they wish they hadn't heard any of that.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_119.png[/img]{As you count the loot, the stranger who ordained this entire goblin-slaying strategy reappears. You can't even see the color of him for he is utterly drenched in goblin guts and gore. He's got a few scalps in hand and a pouch that has ears and noses poking out the top and blood dripping from the bottom. He nods.%SPEECH_ON%All is well, traveler, all is well. We did good.%SPEECH_OFF%You ask him if he set the fire. He nods.%SPEECH_ON%Goblins stagger their rearguard in mazes of walls and mines. I shuttered their escapes to hem the population between two walls, closed the way out, closed the way in, and set fire to everything. They perished quickly. I see you fared well. You can keep the loot. I've no use for it.%SPEECH_OFF%He turns and walks away. You yell out to him, this outrageous warrior, and ask how much he'd want to join the company. This time he turns back.%SPEECH_ON%Heh, heh, haha, hahaha! Traveler! This joke, ah. Comedy. Delightful. Truly. But my work will not be stalled until every goblin has been destroyed.%SPEECH_OFF%Fair enough, a man's purpose is his own. But you're curious. You ask how many cities are out there.%SPEECH_ON%Twenty three, oh, sorry, did you ask how many there are in total? Twenty three I've destroyed, but still in existence there are, ah, two, three, hmmm. I wager four thousand. Good travels, traveler.%SPEECH_OFF%This time he departs for good. You look back at the %companyname%. They are in rare agreement: they wish they hadn't heard any of that.}\""
  },
  {
    "key": "01c6cbf770e264dc27d4fe69308bbc91c5e8c1c5c8a6b405031b36d23364292d",
    "original": "[img]gfx/ui/events/event_119.png[/img]{The goblin vanguard vanquished, you march on the city to ransack it. Tiny goblins are slain and scalped or beheaded. More yet scurry around you like ants, each carrying something above their heads like human skulls or treasures and one sprints madly about toting a flagpole with its banner aflame and another dances with the decapitated head of a wolf. Your men turn over huts and shanties and kick out leaners and anything found breathing is put to an end.\n\n An ancient fortress the goblins used for a city core is set upon with a pillager's eye. You enter the halls yourself and there find a blind goblin crawling with a wreath of human femurs hanging from its neck. The greenskin chitters and chamfers in your general direction, no doubt sensing your presence, though a pained grimace on its face means it also senses the annihilation of its people. You gut the greenskin and leave it to die on the stone floor. Your mercenaries run on ahead and into a council room full of elders and cut them all down in a murderous frenzy that has limbs flying and fingers scattering and blood shooting up the walls and across the tables.\n\n You head outside to the castle yard. Here you find a pile of dead humans, some mutilated, others charged, one stuffed with a torch as though his ribcage were a brazier. Past the corpses you spot the wolfrider kennels. You have wolf cages burned and their trainers thrown in the fires to die with them. One of the wolves breaks free and sprints further into the city with a cape of flame for fur. It runs from abode to abode barking and howling for relief. You watch as the flames rapidly burn thatched huts and strawroofed shacks. Before you yourself are consumed in the fiery carnage, you order the men back out and watch the whole place burn to the ground. With the savages taken care of, you take inventory of the loot.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_119.png[/img]{The goblin vanguard vanquished, you march on the city to ransack it. Tiny goblins are slain and scalped or beheaded. More yet scurry around you like ants, each carrying something above their heads like human skulls or treasures and one sprints madly about toting a flagpole with its banner aflame and another dances with the decapitated head of a wolf. Your men turn over huts and shanties and kick out leaners and anything found breathing is put to an end.\\n\\n An ancient fortress the goblins used for a city core is set upon with a pillager's eye. You enter the halls yourself and there find a blind goblin crawling with a wreath of human femurs hanging from its neck. The greenskin chitters and chamfers in your general direction, no doubt sensing your presence, though a pained grimace on its face means it also senses the annihilation of its people. You gut the greenskin and leave it to die on the stone floor. Your mercenaries run on ahead and into a council room full of elders and cut them all down in a murderous frenzy that has limbs flying and fingers scattering and blood shooting up the walls and across the tables.\\n\\n You head outside to the castle yard. Here you find a pile of dead humans, some mutilated, others charged, one stuffed with a torch as though his ribcage were a brazier. Past the corpses you spot the wolfrider kennels. You have wolf cages burned and their trainers thrown in the fires to die with them. One of the wolves breaks free and sprints further into the city with a cape of flame for fur. It runs from abode to abode barking and howling for relief. You watch as the flames rapidly burn thatched huts and strawroofed shacks. Before you yourself are consumed in the fiery carnage, you order the men back out and watch the whole place burn to the ground. With the savages taken care of, you take inventory of the loot.}\""
  }
]