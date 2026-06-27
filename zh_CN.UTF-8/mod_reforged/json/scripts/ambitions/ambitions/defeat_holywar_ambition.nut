[
  {
    "key": "4eb82d7d3e42b17c1c96f2d305d3d9710282ae5bca44e411e4bcdaf330a0a2ab",
    "original": "Almost Over",
    "translation": "",
    "context": "text = \"Almost Over\""
  },
  {
    "key": "d5343ba928b42b4b7d2d044a541cca2a61c2a1f25e330048c4d8e4d7072402da",
    "original": "Dragging On",
    "translation": "",
    "context": "text = \"Dragging On\""
  },
  {
    "key": "560246ecd74326a565301d0e2038f6783b034dfc9cd866de44579235f786d35e",
    "original": "End the war between north and south",
    "translation": "",
    "context": "this.m.UIText = \"End the war between north and south\""
  },
  {
    "key": "432562db2bbc8f0ded7664ab357c1fe6f14eb031864e1bcb5a59934e6eac8112",
    "original": "Just started",
    "translation": "",
    "context": "text = \"Just started\""
  },
  {
    "key": "8ff122e53f9a14dc36b1c2265528347e4a9db9de91326579d897b99f00d7e8e2",
    "original": "Pick either the northern noble houses or the southern city states and work with them to win their holy war. Every army destroyed, and every contract fulfilled, will bring you closer to ending the war.",
    "translation": "",
    "context": "this.m.TooltipText = \"Pick either the northern noble houses or the southern city states and work with them to win their holy war. Every army destroyed, and every contract fulfilled, will bring you closer to ending the war.\""
  },
  {
    "key": "e2b65b23c48e03aa59929e2891da6dcb9db34af7ed4f2d68f24a71736ba0ec55",
    "original": "Raging",
    "translation": "",
    "context": "text = \"Raging\""
  },
  {
    "key": "6cd0ff80d50d56b9e9193cabe4ab6d424ea19ed6fa6d15a01eb3de0c9ad7d74a",
    "original": "The fires of religious turmoil threaten to engulf the lands. Let the company be forged\nstronger than ever by its heat and flames, and earn a fortune by winning the war!",
    "translation": "",
    "context": "this.m.ButtonText = \"The fires of religious turmoil threaten to engulf the lands. Let the company be forged\\nstronger than ever by its heat and flames, and earn a fortune by winning the war!\""
  },
  {
    "key": "addcb23b65e86d7d2a380dccbb74a0ac2f970112f477c0ec03a7b3fb40c13c50",
    "original": "Whether they love or hate us, everyone knows the %companyname% now!",
    "translation": "",
    "context": "this.m.SuccessButtonText = \"Whether they love or hate us, everyone knows the %companyname% now!\""
  },
  {
    "key": "55064e543dffd1a146426f0a881b61d1a5ccfb2e3a168cb7665770d4cf072fb5",
    "original": "[img]gfx/ui/events/event_171.png[/img]{You watch as crowds of the great Gilder's followers stream toward the holy sites, the whole land free from the shackles of religious war, and the holy war settled in the favor of the South. From what you have heard, the Viziers have enforced a rule that while Northerners may visit the holy lands, they must pay a tax to the governors overseeing those territories. It is a miserly result, though not a particularly violent and vengeful one.\n\n As you take stock of your inventory, a dozen old men come up the road and stop before you. They announce themselves as scribes and historians who are undertaking the great recollection of the holy war. Apparently someone had pointed you out to them, but they're not entirely sure who you are. You explain that the Viziers hired you to-%SPEECH_ON%Hired, you say? As in, you are a Crownling?%SPEECH_OFF%One of the old men cuts you off, his quill pen scratching to a sudden stop. He shakes his head.%SPEECH_ON%No no no, we are looking to catalog the successes of those responsible for returning sacred lands to the Gilder's light. You are a shriveling, opportunistic, and no doubt conniving Crownling. Have a nice day.%SPEECH_OFF%They depart before you can retort, though you suspect if you were in the mood for a bit of back and forth you'd probably have given them a bit of steel to deal with. %randombrother% walks up and asks who they were. You shrug.%SPEECH_ON%Just a bunch of nobodies.%SPEECH_OFF%}",
    "translation": "",
    "context": ""
  },
  {
    "key": "55064e543dffd1a146426f0a881b61d1a5ccfb2e3a168cb7665770d4cf072fb5",
    "original": "[img]gfx/ui/events/event_171.png[/img]{You watch as crowds of the great Gilder's followers stream toward the holy sites, the whole land free from the shackles of religious war, and the holy war settled in the favor of the South. From what you have heard, the Viziers have enforced a rule that while Northerners may visit the holy lands, they must pay a tax to the governors overseeing those territories. It is a miserly result, though not a particularly violent and vengeful one.\n\n As you take stock of your inventory, a dozen old men come up the road and stop before you. They announce themselves as scribes and historians who are undertaking the great recollection of the holy war. Apparently someone had pointed you out to them, but they're not entirely sure who you are. You explain that the Viziers hired you to-%SPEECH_ON%Hired, you say? As in, you are a Crownling?%SPEECH_OFF%One of the old men cuts you off, his quill pen scratching to a sudden stop. He shakes his head.%SPEECH_ON%No no no, we are looking to catalog the successes of those responsible for returning sacred lands to the Gilder's light. You are a shriveling, opportunistic, and no doubt conniving Crownling. Have a nice day.%SPEECH_OFF%They depart before you can retort, though you suspect if you were in the mood for a bit of back and forth you'd probably have given them a bit of steel to deal with. %randombrother% walks up and asks who they were. You shrug.%SPEECH_ON%Just a bunch of nobodies.%SPEECH_OFF%}",
    "translation": "",
    "context": "getSuccessText = function getSuccessText(){\n    local north = 0;\n    local south = 0;\n    local sites = [\"location.holy_site.oracle\",\"location.holy_site.meteorite\",\"location.holy_site.vulcano\"];\n    local locations = this.World.EntityManager.getLocations();\n    foreach( v in locations){\n        foreach( i, s in sites){\n            if (v.getTypeID() == s && v.getFaction() != 0) {\n                if (this.World.FactionManager.getFaction(v.getFaction()).getType() == this.Const.FactionType.NobleHouse) {\n                    ++north\n                } else {\n                    ++south\n                }\n            }\n        }\n    };\n    south = north >= south;\n    if (south) {\n        return \"[img]gfx/ui/events/event_92.png[/img]{The air you breathe, the ground beneath your feet, neither feel the least bit different. Yet around you there is the rejoice of the northern throngs as though every soul had been gifted their every wish. You've gotten news that the Southerners have relented and sent the doves, ending the holy war in the favor of the North. In turn, the North will have occupation of the holy sites and permit southern entrance so long as they submit that their 'Gilder' is but one of many in the pantheon of the old gods. A young girl comes to you with a flower.%SPEECH_ON%They speak of knights and heroes, but I seen you myself. You went that way, and good news came, and you went thataway, and more good news came. It was as if you were heaven sent, the right hand of the old gods themselves.%SPEECH_OFF%You thank the girl and she pirouettes and runs off. %randombrother% walks up to you with pursed lips.%SPEECH_ON%Heaven sent and the best they can do is give you a bloody flower?%SPEECH_OFF%}\";\n    } else {\n        return \"[img]gfx/ui/events/event_171.png[/img]{You watch as crowds of the great Gilder's followers stream toward the holy sites, the whole land free from the shackles of religious war, and the holy war settled in the favor of the South. From what you have heard, the Viziers have enforced a rule that while Northerners may visit the holy lands, they must pay a tax to the governors overseeing those territories. It is a miserly result, though not a particularly violent and vengeful one.\\n\\n As you take stock of your inventory, a dozen old men come up the road and stop before you. They announce themselves as scribes and historians who are undertaking the great recollection of the holy war. Apparently someone had pointed you out to them, but they're not entirely sure who you are. You explain that the Viziers hired you to-%SPEECH_ON%Hired, you say? As in, you are a Crownling?%SPEECH_OFF%One of the old men cuts you off, his quill pen scratching to a sudden stop. He shakes his head.%SPEECH_ON%No no no, we are looking to catalog the successes of those responsible for returning sacred lands to the Gilder's light. You are a shriveling, opportunistic, and no doubt conniving Crownling. Have a nice day.%SPEECH_OFF%They depart before you can retort, though you suspect if you were in the mood for a bit of back and forth you'd probably have given them a bit of steel to deal with. %randombrother% walks up and asks who they were. You shrug.%SPEECH_ON%Just a bunch of nobodies.%SPEECH_OFF%}\";\n    };\n    return;\n}"
  },
  {
    "key": "6b1005b2e421b1922e066d6d534b041b7b3812fcf5f3ba2b495f5b554ec0e41f",
    "original": "[img]gfx/ui/events/event_92.png[/img]{The air you breathe, the ground beneath your feet, neither feel the least bit different. Yet around you there is the rejoice of the northern throngs as though every soul had been gifted their every wish. You've gotten news that the Southerners have relented and sent the doves, ending the holy war in the favor of the North. In turn, the North will have occupation of the holy sites and permit southern entrance so long as they submit that their 'Gilder' is but one of many in the pantheon of the old gods. A young girl comes to you with a flower.%SPEECH_ON%They speak of knights and heroes, but I seen you myself. You went that way, and good news came, and you went thataway, and more good news came. It was as if you were heaven sent, the right hand of the old gods themselves.%SPEECH_OFF%You thank the girl and she pirouettes and runs off. %randombrother% walks up to you with pursed lips.%SPEECH_ON%Heaven sent and the best they can do is give you a bloody flower?%SPEECH_OFF%}",
    "translation": "",
    "context": ""
  },
  {
    "key": "6b1005b2e421b1922e066d6d534b041b7b3812fcf5f3ba2b495f5b554ec0e41f",
    "original": "[img]gfx/ui/events/event_92.png[/img]{The air you breathe, the ground beneath your feet, neither feel the least bit different. Yet around you there is the rejoice of the northern throngs as though every soul had been gifted their every wish. You've gotten news that the Southerners have relented and sent the doves, ending the holy war in the favor of the North. In turn, the North will have occupation of the holy sites and permit southern entrance so long as they submit that their 'Gilder' is but one of many in the pantheon of the old gods. A young girl comes to you with a flower.%SPEECH_ON%They speak of knights and heroes, but I seen you myself. You went that way, and good news came, and you went thataway, and more good news came. It was as if you were heaven sent, the right hand of the old gods themselves.%SPEECH_OFF%You thank the girl and she pirouettes and runs off. %randombrother% walks up to you with pursed lips.%SPEECH_ON%Heaven sent and the best they can do is give you a bloody flower?%SPEECH_OFF%}",
    "translation": "",
    "context": "getSuccessText = function getSuccessText(){\n    local north = 0;\n    local south = 0;\n    local sites = [\"location.holy_site.oracle\",\"location.holy_site.meteorite\",\"location.holy_site.vulcano\"];\n    local locations = this.World.EntityManager.getLocations();\n    foreach( v in locations){\n        foreach( i, s in sites){\n            if (v.getTypeID() == s && v.getFaction() != 0) {\n                if (this.World.FactionManager.getFaction(v.getFaction()).getType() == this.Const.FactionType.NobleHouse) {\n                    ++north\n                } else {\n                    ++south\n                }\n            }\n        }\n    };\n    south = north >= south;\n    if (south) {\n        return \"[img]gfx/ui/events/event_92.png[/img]{The air you breathe, the ground beneath your feet, neither feel the least bit different. Yet around you there is the rejoice of the northern throngs as though every soul had been gifted their every wish. You've gotten news that the Southerners have relented and sent the doves, ending the holy war in the favor of the North. In turn, the North will have occupation of the holy sites and permit southern entrance so long as they submit that their 'Gilder' is but one of many in the pantheon of the old gods. A young girl comes to you with a flower.%SPEECH_ON%They speak of knights and heroes, but I seen you myself. You went that way, and good news came, and you went thataway, and more good news came. It was as if you were heaven sent, the right hand of the old gods themselves.%SPEECH_OFF%You thank the girl and she pirouettes and runs off. %randombrother% walks up to you with pursed lips.%SPEECH_ON%Heaven sent and the best they can do is give you a bloody flower?%SPEECH_OFF%}\";\n    } else {\n        return \"[img]gfx/ui/events/event_171.png[/img]{You watch as crowds of the great Gilder's followers stream toward the holy sites, the whole land free from the shackles of religious war, and the holy war settled in the favor of the South. From what you have heard, the Viziers have enforced a rule that while Northerners may visit the holy lands, they must pay a tax to the governors overseeing those territories. It is a miserly result, though not a particularly violent and vengeful one.\\n\\n As you take stock of your inventory, a dozen old men come up the road and stop before you. They announce themselves as scribes and historians who are undertaking the great recollection of the holy war. Apparently someone had pointed you out to them, but they're not entirely sure who you are. You explain that the Viziers hired you to-%SPEECH_ON%Hired, you say? As in, you are a Crownling?%SPEECH_OFF%One of the old men cuts you off, his quill pen scratching to a sudden stop. He shakes his head.%SPEECH_ON%No no no, we are looking to catalog the successes of those responsible for returning sacred lands to the Gilder's light. You are a shriveling, opportunistic, and no doubt conniving Crownling. Have a nice day.%SPEECH_OFF%They depart before you can retort, though you suspect if you were in the mood for a bit of back and forth you'd probably have given them a bit of steel to deal with. %randombrother% walks up and asks who they were. You shrug.%SPEECH_ON%Just a bunch of nobodies.%SPEECH_OFF%}\";\n    };\n    return;\n}"
  }
]