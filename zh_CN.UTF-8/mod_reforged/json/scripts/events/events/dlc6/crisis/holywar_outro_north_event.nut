[
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "onDetermineStartScreen = function onDetermineStartScreen(){\n    local north = 0;\n    local south = 0;\n    local sites = [\"location.holy_site.oracle\",\"location.holy_site.meteorite\",\"location.holy_site.vulcano\"];\n    local locations = this.World.EntityManager.getLocations();\n    foreach( v in locations){\n        foreach( i, s in sites){\n            if (v.getTypeID() == s && v.getFaction() != 0) {\n                if (this.World.FactionManager.getFaction(v.getFaction()).getType() == this.Const.FactionType.NobleHouse) {\n                    ++north\n                } else {\n                    ++south\n                }\n            }\n        }\n    };\n    south = north >= south;\n    if (south) {\n        return \"A\";\n    } else {\n        return \"B\";\n    };\n    return;\n}"
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
    "context": "ID = \"A\""
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
    "context": "onDetermineStartScreen = function onDetermineStartScreen(){\n    local north = 0;\n    local south = 0;\n    local sites = [\"location.holy_site.oracle\",\"location.holy_site.meteorite\",\"location.holy_site.vulcano\"];\n    local locations = this.World.EntityManager.getLocations();\n    foreach( v in locations){\n        foreach( i, s in sites){\n            if (v.getTypeID() == s && v.getFaction() != 0) {\n                if (this.World.FactionManager.getFaction(v.getFaction()).getType() == this.Const.FactionType.NobleHouse) {\n                    ++north\n                } else {\n                    ++south\n                }\n            }\n        }\n    };\n    south = north >= south;\n    if (south) {\n        return \"A\";\n    } else {\n        return \"B\";\n    };\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "ID = \"B\""
  },
  {
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "63c712bece606725efacc33849bca4dee51c48e62a495f8d3ef6622414c0d134",
    "original": "It's time to retire from mercenary life. (End Campaign)",
    "translation": "",
    "context": "Text = \"It's time to retire from mercenary life. (End Campaign)\""
  },
  {
    "key": "2413a68c9d78c66bd56d47330582fe8a1d4651f737aff6203662e75c333e966f",
    "original": "Savior",
    "translation": "",
    "context": ""
  },
  {
    "key": "c15287e4118d73a365b233d1397d0ca63989dce93116ba8195ef9230a5c41fca",
    "original": "The %companyname% needs their commander!",
    "translation": "",
    "context": "Text = \"The %companyname% needs their commander!\""
  },
  {
    "key": "4a3d2f4e7552032efafb407e9519f0fc4a0b05243820f672b61d44ba94642d5a",
    "original": "[img]gfx/ui/events/event_84.png[/img]{Faith placed in the old gods has been rewarded: the holy war is over, and the northerners stand victorious. Songs fill the air as crowds move as a mob, fists pumping, flags flying, becoming briefly uniform in a shared sense of piety. You stand by the wayside, your shoulders already wreathed in adornments, beads, necklaces, things of no material value, and yet they bear some weight which the wearer can only find by looking into the eyes of those who hand them out.\n\n Of course, certain dignities go unrealized in the celebration: the bodies of the defeated are put on display, thrashed in ways meant to satisfy the old gods that are watching, and holy totems of the Gilder are mocked, desecrated, and ultimately burned. And it is indeed certain that not a joyful soul will recognize you as a force in this cheerful culmination. You've merely slipped right into the background once more, sellsword, crownling, interloper. But the %companyname% made a small fortune in the religious endeavors. Despite the smiles and laughs, you know that strife such as this is buried in the mind, not in the earth, and someday someone or something will come and resurrect it, and there the company will await another glorious payday. Or perhaps now would be a good time to put up the sword and enjoy your crowns?\n\n%OOC%You've won! Battle Brothers is designed for replayability and for campaigns to be played until you've beaten one or two late game crises. Starting a new campaign will allow you to try out different things in a different world.\n\nYou can also choose to continue your campaign for as long as you want. Just be aware that campaigns are not intended to last forever and you're likely to run out of challenges eventually.%OOC_OFF%}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_84.png[/img]{Faith placed in the old gods has been rewarded: the holy war is over, and the northerners stand victorious. Songs fill the air as crowds move as a mob, fists pumping, flags flying, becoming briefly uniform in a shared sense of piety. You stand by the wayside, your shoulders already wreathed in adornments, beads, necklaces, things of no material value, and yet they bear some weight which the wearer can only find by looking into the eyes of those who hand them out.\\n\\n Of course, certain dignities go unrealized in the celebration: the bodies of the defeated are put on display, thrashed in ways meant to satisfy the old gods that are watching, and holy totems of the Gilder are mocked, desecrated, and ultimately burned. And it is indeed certain that not a joyful soul will recognize you as a force in this cheerful culmination. You've merely slipped right into the background once more, sellsword, crownling, interloper. But the %companyname% made a small fortune in the religious endeavors. Despite the smiles and laughs, you know that strife such as this is buried in the mind, not in the earth, and someday someone or something will come and resurrect it, and there the company will await another glorious payday. Or perhaps now would be a good time to put up the sword and enjoy your crowns?\\n\\n%OOC%You've won! Battle Brothers is designed for replayability and for campaigns to be played until you've beaten one or two late game crises. Starting a new campaign will allow you to try out different things in a different world.\\n\\nYou can also choose to continue your campaign for as long as you want. Just be aware that campaigns are not intended to last forever and you're likely to run out of challenges eventually.%OOC_OFF%}\""
  },
  {
    "key": "539ebe18331243e7b0260ecf06e28dff24a1264ca1d5273e9e6e8cb23b3236f0",
    "original": "[img]gfx/ui/events/event_84.png[/img]{Uttering their name is to draw words from tongue to intemporal: the old gods. They are beyond time, and their vast number invoke awe over specificity. Endearing as this is to any listener familiar or not with the faith, it also brings greater weight to any defeat of those who follow these unbranded beings. The crusades are over, and the northerners have lost.\n\n You watch as the northerners try and explain it to one another how it came to pass. It was not a terrestrial defeat here, nor even a victory by the southerners - no, this was punishment. Northerners have grazed far from the holy lands, they have meadowed in the material world, priories and churches dot the realm, empty and hollow for far too long. Naturally, inquiries about the nature of this southern 'Gilder' have also come, but they quickly pass. To even dwell on Him is to invite doubt, and right now doubt is as dangerous as any poison. Of course, the %companyname% stays at a distance. Sellswords that you are, you put faith in your sword and in the purse, and both got their dues in this war. The only philosophizing you'll be doing in the days to come is pondering just how soon the north and south will resume stating their differences. Perhaps now would be a good time to put up the sword and enjoy your crowns?\n\n%OOC%You've won! Battle Brothers is designed for replayability and for campaigns to be played until you've beaten one or two late game crises. Starting a new campaign will allow you to try out different things in a different world.\n\nYou can also choose to continue your campaign for as long as you want. Just be aware that campaigns are not intended to last forever and you're likely to run out of challenges eventually.%OOC_OFF%}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_84.png[/img]{Uttering their name is to draw words from tongue to intemporal: the old gods. They are beyond time, and their vast number invoke awe over specificity. Endearing as this is to any listener familiar or not with the faith, it also brings greater weight to any defeat of those who follow these unbranded beings. The crusades are over, and the northerners have lost.\\n\\n You watch as the northerners try and explain it to one another how it came to pass. It was not a terrestrial defeat here, nor even a victory by the southerners - no, this was punishment. Northerners have grazed far from the holy lands, they have meadowed in the material world, priories and churches dot the realm, empty and hollow for far too long. Naturally, inquiries about the nature of this southern 'Gilder' have also come, but they quickly pass. To even dwell on Him is to invite doubt, and right now doubt is as dangerous as any poison. Of course, the %companyname% stays at a distance. Sellswords that you are, you put faith in your sword and in the purse, and both got their dues in this war. The only philosophizing you'll be doing in the days to come is pondering just how soon the north and south will resume stating their differences. Perhaps now would be a good time to put up the sword and enjoy your crowns?\\n\\n%OOC%You've won! Battle Brothers is designed for replayability and for campaigns to be played until you've beaten one or two late game crises. Starting a new campaign will allow you to try out different things in a different world.\\n\\nYou can also choose to continue your campaign for as long as you want. Just be aware that campaigns are not intended to last forever and you're likely to run out of challenges eventually.%OOC_OFF%}\""
  }
]