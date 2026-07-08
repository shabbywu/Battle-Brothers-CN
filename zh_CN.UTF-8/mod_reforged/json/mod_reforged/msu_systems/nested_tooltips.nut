[
  {
    "key": "2b4264195d1118dd5301399c53e4c3b2f391df8236f8072d85db424a4c5bf228",
    "original": "\n\nUsing Wait causes your [turn order|Concept.Turn] in the next [round|Concept.Round] to be calculated with ",
    "translation": "",
    "context": "\"\\n\\nUsing Wait causes your [turn order|Concept.Turn] in the next [round|Concept.Round] to be calculated with \" + getroottable().MSU.Text.colorizeMult(getroottable().Const.CharacterProperties.InitiativeAfterWaitMult) + \" \" + getroottable().Const.CharacterProperties.InitiativeAfterWaitMult > 1.0 ? \"more\" : \"less\" + \" [Initiative|Concept.Initiative].\""
  },
  {
    "key": "07a3e5701970fc169d40e6aed80d3e0b5f21693437924d636e285e861661fbb6",
    "original": " [Initiative|Concept.Initiative].",
    "translation": "",
    "context": "\"\\n\\nUsing Wait causes your [turn order|Concept.Turn] in the next [round|Concept.Round] to be calculated with \" + getroottable().MSU.Text.colorizeMult(getroottable().Const.CharacterProperties.InitiativeAfterWaitMult) + \" \" + getroottable().Const.CharacterProperties.InitiativeAfterWaitMult > 1.0 ? \"more\" : \"less\" + \" [Initiative|Concept.Initiative].\""
  },
  {
    "key": "3ae662ddb445adc0d76f986b09da9b5c2ded7bef108afb19b3dd3716fadde45b",
    "original": " and dropping by 1 to a minimum of 1. It only applies when attacking a target adjacent to you or up to 2 tiles away with nothing between you and the target.\n\nAfter a successful hit, the target's [Reach Advantage|Concept.ReachAdvantage] is lost until the attacker waits or ends their turn.\n\nShields can negate some or all of the target's [Reach Advantage|Concept.ReachAdvantage]. Characters who are rooted have their Reach halved. Those without a melee attack have no Reach.",
    "translation": "",
    "context": "\"Reach is a depiction of how far a character's attacks can reach, making melee combat easier against targets with shorter reach.\\n\\n[Melee skill|Concept.MeleeSkill] is increased when attacking opponents with shorter reach, and reduced against opponents with longer reach. Reach has diminishing returns, starting at \" + getroottable().Reforged.Reach.BonusPerReach + \" and dropping by 1 to a minimum of 1. It only applies when attacking a target adjacent to you or up to 2 tiles away with nothing between you and the target.\\n\\nAfter a successful hit, the target's [Reach Advantage|Concept.ReachAdvantage] is lost until the attacker waits or ends their turn.\\n\\nShields can negate some or all of the target's [Reach Advantage|Concept.ReachAdvantage]. Characters who are rooted have their Reach halved. Those without a melee attack have no Reach.\""
  },
  {
    "key": "430f95b890b2f10886dcca6f409d61e32afbc11d2ec1f67b1e3f79657e9839e3",
    "original": " and is greater than a certain percentage of the maximum [Hitpoints|Concept.Hitpoints], the character receives an [injury|Concept.InjuryTemporary]. This percentage can be modified by certain [perks|Concept.Perk] or traits of both the attacker and the target.\n\nCertain [injuries|Concept.InjuryTemporary] require this percentage to be at least a certain value before they can be inflicted, with heavier [injuries|Concept.InjuryTemporary] requiring a higher percentage.\n\nFor example the threshold for [$ $|Skill+cut_arm_injury] is ",
    "translation": "",
    "context": "\"If the damage received to [Hitpoints|Concept.Hitpoints] is at least \" + getroottable().MSU.Text.colorNegative(getroottable().Const.Combat.InjuryMinDamage) + \" and is greater than a certain percentage of the maximum [Hitpoints|Concept.Hitpoints], the character receives an [injury|Concept.InjuryTemporary]. This percentage can be modified by certain [perks|Concept.Perk] or traits of both the attacker and the target.\\n\\nCertain [injuries|Concept.InjuryTemporary] require this percentage to be at least a certain value before they can be inflicted, with heavier [injuries|Concept.InjuryTemporary] requiring a higher percentage.\\n\\nFor example the threshold for [$ $|Skill+cut_arm_injury] is \" + getroottable().MSU.Text.colorNegative(getThresholdForInjury(\"injury/cut_arm_injury\") + \"%\") + \" and that of [$ $|Skill+split_hand_injury] is \" + getroottable().MSU.Text.colorNegative(getThresholdForInjury(\"injury/split_hand_injury\") + \"%\") + \".\""
  },
  {
    "key": "1a1d7bed30fb7267cfb6c623d9437e6539f931e6eee6248f905216110b70b8e2",
    "original": " and that of [$ $|Skill+split_hand_injury] is ",
    "translation": "",
    "context": "\"If the damage received to [Hitpoints|Concept.Hitpoints] is at least \" + getroottable().MSU.Text.colorNegative(getroottable().Const.Combat.InjuryMinDamage) + \" and is greater than a certain percentage of the maximum [Hitpoints|Concept.Hitpoints], the character receives an [injury|Concept.InjuryTemporary]. This percentage can be modified by certain [perks|Concept.Perk] or traits of both the attacker and the target.\\n\\nCertain [injuries|Concept.InjuryTemporary] require this percentage to be at least a certain value before they can be inflicted, with heavier [injuries|Concept.InjuryTemporary] requiring a higher percentage.\\n\\nFor example the threshold for [$ $|Skill+cut_arm_injury] is \" + getroottable().MSU.Text.colorNegative(getThresholdForInjury(\"injury/cut_arm_injury\") + \"%\") + \" and that of [$ $|Skill+split_hand_injury] is \" + getroottable().MSU.Text.colorNegative(getThresholdForInjury(\"injury/split_hand_injury\") + \"%\") + \".\""
  },
  {
    "key": "74349a771f8517d1421dbd3ef3e3978664a9c66fa910d16019cfaf095388ed03",
    "original": " bag slots by default and can have a maximum of ",
    "translation": "",
    "context": "\"Bag slots can be used to store additional weapons or utility items for use during combat. Every character has \" + getroottable().new(\"scripts/items/item_container\").getUnlockedBagSlots() + \" bag slots by default and can have a maximum of \" + getroottable().Const.ItemSlotSpaces[getroottable().Const.ItemSlot.Bag] + \".\""
  },
  {
    "key": "1bf43f7b8109395cd87098062a3b1216a6c79349e73c0c7fbdc721cc42d13482",
    "original": "A character is considered to have Reach Advantage when their [Reach|Concept.Reach] is greater than that of the other character during an attack. The Reach Advantage in this case refers to the difference in the two characters' [Reach|Concept.Reach] values.\n\nIf a character has a shield equipped, the shield can help negate the Reach Advantage of an attacker, and with the [$ $|Perk+perk_duelist] perk, can also help negate that of a target.",
    "translation": "",
    "context": ""
  },
  {
    "key": "cff7e6f35ecc599fc593058315963f25ba8b5bf06eab795ed19d9ed87cdfc954",
    "original": "A character is considered to have Reach Disadvantage when their [Reach|Concept.Reach] is lower than that of the other character during an attack. The Reach Disadvantage in this case refers to the difference in the two characters' [Reach|Concept.Reach] values.",
    "translation": "",
    "context": ""
  },
  {
    "key": "f41134a58ae6e57be20143e14d667e98e06d1e3bda97e877ae41f9d9d76fbc18",
    "original": "A character's [attributes|Concept.CharacterAttribute] can be modified by various means e.g. perks, traits, status effects, equipment etc. The Base value of the attribute is the one that is before any such modifications. See also: [Current Attribute|Concept.CurrentAttribute].",
    "translation": "",
    "context": ""
  },
  {
    "key": "20919d92e9ade9f0b766ac98c9fe09b02b9b107757df132625e6a773f4d98b8c",
    "original": "A character's [attributes|Concept.CharacterAttribute] can be modified by various means e.g. perks, traits, status effects, equipment etc. The Current value of the attribute is the one that is after any such modifications. See also: [Base Attribute|Concept.BaseAttribute].",
    "translation": "",
    "context": ""
  },
  {
    "key": "0e424c88e25e4e283729162f3daafafc3173f247fc1503fc7255bade1af8da4b",
    "original": "A disabled character is unable to act and will skip their [turn|Concept.Turn].\n\nExamples of [effects|Concept.StatusEffect] which can cause a character to become disabled include [$ $|Skill+stunned_effect] and [$ $|Skill+sleeping_effect].",
    "translation": "",
    "context": ""
  },
  {
    "key": "fe6cb969e0a50ada1b25eed93817520cd2db37e677e9b589929079967384fe53",
    "original": "A rooted character is stuck in place - unable to move or be moved from their position.\n\nExamples of [effects|Concept.StatusEffect] which can cause a character to become rooted include [$ $|Skill+net_effect] and [$ $|Skill+web_effect].",
    "translation": "",
    "context": ""
  },
  {
    "key": "88134f5fe6a4c88c4e1e0fd23d66593e6d50aeba51afc556b46a40c16d9672f5",
    "original": "A weapon requires its wielder to possess just one of its applicable masteries for all its skills to fully benefit from mastery effects.\n\nFor example if a weapon has the [$ $|Skill+slash] and [$ $|Skill+decapitate] skills and its applicable masteries are Sword and Cleaver, then if you have one of these mastery perks, [$ $|Skill+slash] gains the benefits of [$ $|Perk+perk_mastery_sword] and [$ $|Skill+decapitate] gains the benefits of [$ $|Perk+perk_mastery_cleaver].",
    "translation": "",
    "context": ""
  },
  {
    "key": "7779dfe758b885ecfae13ae48ed3bf16149b072f5931c59cd219baecef815535",
    "original": "Applicable Mastery",
    "translation": "",
    "context": ""
  },
  {
    "key": "6d20b9aa621c5a43257f797b5e0fedc787914291d34c2e8721c6f5dbde2b0e43",
    "original": "Area of Effect",
    "translation": "",
    "context": ""
  },
  {
    "key": "1c492b606f89e631943808457025fed55b2a880f43d11a47709127de221cd05b",
    "original": "Area of Effect (AOE) skills target multiple tiles with their effects instead of only a single tile.",
    "translation": "",
    "context": ""
  },
  {
    "key": "61381a3b8723d66cad1dfa18ff9b3bc03ca9f4228aa432aec122e06050f4bed6",
    "original": "As characters gain levels, they unlock perk points which can be spent to unlock powerful perks. Perks grant a character permanent bonuses or unlock new skills for use. The character's current [perk tier|Concept.PerkTier] increases by 1 each time a perk point is spent.",
    "translation": "",
    "context": ""
  },
  {
    "key": "6127bd9631ce0d52d6c0077541d0af73c797ee15eeee27b44b9bc685bf984b18",
    "original": "At the start of every turn the [Fatigue|Concept.Fatigue] of a character is reduced by a certain amount. This is known as Fatigue Recovery.\n\nBy default the Fatigue Recovery of player characters is 15, whereas enemies, depending on the enemy type, may have a much higher Fatigue Recovery.\n\nFatigue Recovery may be affected by [perks|Concept.Perk], [traits|Concept.Trait], [status effects|Concept.StatusEffect] and [injuries|Concept.Injury].",
    "translation": "",
    "context": ""
  },
  {
    "key": "66a4e43875c97c6e6f6abfcb8ce4fa70a68d970fe947ed1eb0f5439f3ecad04b",
    "original": "Bag Slots",
    "translation": "",
    "context": ""
  },
  {
    "key": "9c53fd174e97de86f0ef6072d31082194aca242f0b85a41ed6c5ce16ad8768e2",
    "original": "Bag slots can be used to store additional weapons or utility items for use during combat. Every character has ",
    "translation": "",
    "context": "\"Bag slots can be used to store additional weapons or utility items for use during combat. Every character has \" + getroottable().new(\"scripts/items/item_container\").getUnlockedBagSlots() + \" bag slots by default and can have a maximum of \" + getroottable().Const.ItemSlotSpaces[getroottable().Const.ItemSlot.Bag] + \".\""
  },
  {
    "key": "ab50fa2bfdccde7dec9438df553fe1bb2a4c9617af714af60a3a65cdabd1d616",
    "original": "Base Attribute",
    "translation": "",
    "context": ""
  },
  {
    "key": "a98402bce9ecb9b63c3abf281e69d8f4514ff3842533252fa52e4da45842562b",
    "original": "Character Attribute",
    "translation": "",
    "context": ""
  },
  {
    "key": "b0cab1b83e037ab621e50e6834a15e3046f0d888efb6ed427c24dae1c07885e3",
    "original": "Characters can have several traits that are semi-permanent and represent aspects of their personality. Traits are different from [perks|Concept.Perk] and cannot be learned through [experience|Concept.Experience] or [level-ups|Concept.Level]. Traits can give various bonuses or maluses for example: [$ $|Skill+huge_trait] and [$ $|Skill+tiny_trait].",
    "translation": "",
    "context": ""
  },
  {
    "key": "a2a4e096d64226fb24a660d01a76a21d68b204a7b502d8093302b996c5ec12ac",
    "original": "Characters in Battle Brothers have various attributes that describe the character's skill and/or aptitude in certain areas. Attributes include: [Hitpoints|Concept.Hitpoints], [Fatigue|Concept.Fatigue], [Resolve|Concept.Bravery], [Initiative|Concept.Initiative] [Melee Skill|Concept.MeleeSkill], [Melee Defense|Concept.MeleeDefense], [Ranged Skill|Concept.RangeSkill] and [Ranged Defense|Concept.RangeDefense].\n\nAs characters gain [experience|Concept.Experience] and [level up|Concept.Level] they can increase their attributes and unlock [perks|Concept.Perk].",
    "translation": "",
    "context": ""
  },
  {
    "key": "21a918e24fde44962e84fcbb3896034cd1b30d9ac5afe13891a7998362095e6f",
    "original": "Combat in battle brothers is turn-based. Each combat consists of a series of [rounds|Concept.Round]. During a round, characters act in turns. A character's position in the turn order is determined by the character's [Initiative|Concept.Initiative] relative to other characters.\n\n[Effects|Concept.StatusEffect] that last a certain number of turns last until the character has started or ended their turn that many times, depending on whether the [effect|Concept.StatusEffect] expires at the start or end of the turn respectively.",
    "translation": "",
    "context": ""
  },
  {
    "key": "bcf6df4001c9e5a0baae94dcb1546f78f43ce3654537e065a7c00ccd9cf2cfce",
    "original": "Combat in battle brothers is turn-based. Each combat consists of a series of rounds. During a round, characters act in [turns|Concept.Turn]. A round ends when all characters have ended their [turns|Concept.Turn].",
    "translation": "",
    "context": ""
  },
  {
    "key": "ee9998ba117414e1a7b8c3d776f671efa4280dc0a2fd5db64b70c9bff342691c",
    "original": "Current Attribute",
    "translation": "",
    "context": ""
  },
  {
    "key": "d7d158328e3606fdb05fe057c33d10f4373f1ca5a8398aa3b52e8e74f79503cf",
    "original": "Defensive Reach Ignore",
    "translation": "",
    "context": ""
  },
  {
    "key": "75081b593d15cf6e631971bc6768723f593b88b172477e40ae7d363e4829816d",
    "original": "Disabled",
    "translation": "",
    "context": ""
  },
  {
    "key": "2c6c866bf9772deed0d8c54a7ec798531361fff101ccf2c449c12085528792f7",
    "original": "Fatalities are special forms of death which depict a certain gruesomeness beyond the ordinary. Fatalities include:\n- Decapitation - removing the target's head.\n- Disembowelment - opening up the target's belly to spill the guts.\n- Smashing - smashing the target's head into bits.",
    "translation": "",
    "context": ""
  },
  {
    "key": "0a2e4df833b776ae389ab538b915db9823235f5ce6f7b3f43546f7257bff40d6",
    "original": "Fatality",
    "translation": "",
    "context": ""
  },
  {
    "key": "9b5e6c217003540407d0da983478bc11a1bd8e8865d8f30035c2607ac4c5350c",
    "original": "Fatigue Recovery",
    "translation": "",
    "context": ""
  },
  {
    "key": "6f7431fbcc3402837187f388040363f511e7f117ddda531ecfb558c5b4cbb6e5",
    "original": "Hybrid Weapon",
    "translation": "",
    "context": ""
  },
  {
    "key": "f64b3ed976394a30e6f9acd529d8395d34479536f1afa9367f1a5d90b0eaf329",
    "original": "Hybrid Weapons are weapons with two weapon types. Non-Hybrid Weapons have only one weapon type.",
    "translation": "",
    "context": ""
  },
  {
    "key": "1ce6e1f9b93b5b49c5bc06af80191df9ebf9bf5ae18b655ad5a31bfab94738d5",
    "original": "If sufficient damage is dealt to [Hitpoints|Concept.Hitpoints] during combat, characters can sustain an injury. Injuries are [status effects|Concept.StatusEffect] that confer various maluses.\n\nInjuries sustained during combat are [temporary|Concept.InjuryTemporary], and will heal over time. Such injuries can be treated at a Temple for faster healing.\n\nIf a character is killed during combat, they have a chance to be struck down instead of being killed and survive the battle with a [permanent injury|Concept.InjuryPermanent]",
    "translation": "",
    "context": ""
  },
  {
    "key": "246981aca6959299bd5accf2c803c8719c98d1544f9a08fcd4abc96ac027e305",
    "original": "If the damage received to [Hitpoints|Concept.Hitpoints] is at least ",
    "translation": "",
    "context": "\"If the damage received to [Hitpoints|Concept.Hitpoints] is at least \" + getroottable().MSU.Text.colorNegative(getroottable().Const.Combat.InjuryMinDamage) + \" and is greater than a certain percentage of the maximum [Hitpoints|Concept.Hitpoints], the character receives an [injury|Concept.InjuryTemporary]. This percentage can be modified by certain [perks|Concept.Perk] or traits of both the attacker and the target.\\n\\nCertain [injuries|Concept.InjuryTemporary] require this percentage to be at least a certain value before they can be inflicted, with heavier [injuries|Concept.InjuryTemporary] requiring a higher percentage.\\n\\nFor example the threshold for [$ $|Skill+cut_arm_injury] is \" + getroottable().MSU.Text.colorNegative(getThresholdForInjury(\"injury/cut_arm_injury\") + \"%\") + \" and that of [$ $|Skill+split_hand_injury] is \" + getroottable().MSU.Text.colorNegative(getThresholdForInjury(\"injury/split_hand_injury\") + \"%\") + \".\""
  },
  {
    "key": "e1f76c79ace0fd0a2be413b396a6a9f21e509ffcc7b1fe36857629250a06f4cf",
    "original": "If you are not the last character in the [turn order|Concept.Turn] in a [round|Concept.Round], you may use the Wait action. This moves you to the end of the current [turn order|Concept.Turn], allowing you to act again before the end of the [round|Concept.Round].\n\nYou can only use Wait once per [turn|Concept.Turn].%s",
    "translation": "",
    "context": ""
  },
  {
    "key": "24ecca5096ee98b288db28a2547c8d86a8b43435d8057decb90a669df16ffca7",
    "original": "Injury",
    "translation": "",
    "context": ""
  },
  {
    "key": "5200910bae7419e25a16ea03f919d679bebf890580189946f23cc2f6daf912cd",
    "original": "Injury Threshold",
    "translation": "",
    "context": ""
  },
  {
    "key": "c80afa6992cd2a904af02bf0969557bd80ead8bfcc1cc2cee27f2acbcf239892",
    "original": "Most melee characters exert Zone of Control on their surrounding tiles. Trying to move out of enemy Zone of Control will trigger one free attack from each controlling enemy until the first attack hit or every attack missed. A hit will cancel the movement.",
    "translation": "",
    "context": ""
  },
  {
    "key": "afdfca97823e60b14d5ef7dee361468bffc2572e13952c15398e9c5a9ca735d5",
    "original": "Offensive Reach Ignore",
    "translation": "",
    "context": ""
  },
  {
    "key": "0f850a258a52a1558ba82452dd19726837de77bb5171ea42bd1e7b355d550e45",
    "original": "Perk",
    "translation": "",
    "context": ""
  },
  {
    "key": "2d9026369c7b7e8e59f06646f5f5efab1ae2cc3c9b63037fa2c80687b6b6cd2b",
    "original": "Perk Tier",
    "translation": "",
    "context": ""
  },
  {
    "key": "68f66442b3d3eaa21f15affaf264bed71b5e6ab4ee4a4777edd656645083332b",
    "original": "Permanent Injury",
    "translation": "",
    "context": ""
  },
  {
    "key": "6a38aea9ca53e114e71ea86b1b1e7265c96c29b3a4e1408d73099c362e1a233c",
    "original": "Permanent injuries are received when a character is 'struck down' during combat instead of being killed. These injuries, and the maluses they incur, are forever.",
    "translation": "",
    "context": ""
  },
  {
    "key": "2068b81b75d4b2b1dba07f5d37f972b989b5d265f5469bd0a12d087db49f200b",
    "original": "Reach",
    "translation": "",
    "context": "text = \"Reach\""
  },
  {
    "key": "bbad7134ad0e6c3a496b7af4a5e53fc53ba2d745bfe2bb75c921254d36314158",
    "original": "Reach Advantage",
    "translation": "",
    "context": ""
  },
  {
    "key": "cd4c042f18351cdfddd7f5b6eb65d8b06db059387baf40d71634e411d7a7bb13",
    "original": "Reach Disadvantage",
    "translation": "",
    "context": ""
  },
  {
    "key": "97edac9dba9842c85d561e5e650ae8f9196a8e5503fd9468b15cbebfc5da8287",
    "original": "Reach is a depiction of how far a character's attacks can reach, making melee combat easier against targets with shorter reach.\n\n[Melee skill|Concept.MeleeSkill] is increased when attacking opponents with shorter reach, and reduced against opponents with longer reach. Reach has diminishing returns, starting at ",
    "translation": "",
    "context": "\"Reach is a depiction of how far a character's attacks can reach, making melee combat easier against targets with shorter reach.\\n\\n[Melee skill|Concept.MeleeSkill] is increased when attacking opponents with shorter reach, and reduced against opponents with longer reach. Reach has diminishing returns, starting at \" + getroottable().Reforged.Reach.BonusPerReach + \" and dropping by 1 to a minimum of 1. It only applies when attacking a target adjacent to you or up to 2 tiles away with nothing between you and the target.\\n\\nAfter a successful hit, the target's [Reach Advantage|Concept.ReachAdvantage] is lost until the attacker waits or ends their turn.\\n\\nShields can negate some or all of the target's [Reach Advantage|Concept.ReachAdvantage]. Characters who are rooted have their Reach halved. Those without a melee attack have no Reach.\""
  },
  {
    "key": "160c721fc313838bb05cb4c69faf3f97ec3ad3fa6775d4fb56a72f83c251962e",
    "original": "Rooted",
    "translation": "",
    "context": ""
  },
  {
    "key": "cd9558acfc386bd3e1fb14da5d4ed7e9338f80fa29fc2447c36c94667c406295",
    "original": "Round",
    "translation": "",
    "context": ""
  },
  {
    "key": "06436d4999df3d1b058d37b90206c9c1fbea66d96adea00b9a95229bbe614dc0",
    "original": "Stacking Additively",
    "translation": "",
    "context": ""
  },
  {
    "key": "cfc2b30259f619c1a151a45cf8fd6076efc21f35cc87cb6d551e70054caef993",
    "original": "Stacking Multiplicatively",
    "translation": "",
    "context": ""
  },
  {
    "key": "6779d52e089780717ba941ea81e45271e1c545bf635b30529992a261e830ff1a",
    "original": "Status Effect",
    "translation": "",
    "context": ""
  },
  {
    "key": "66b980561e5f8f714cb5e29953850f05e5bef29de9d6b988b5d2ecc25dd619c2",
    "original": "Status effects are positive or negative effects on a character, which are mostly temporary. A status effect can have various effects ranging from increasing/decreasing [attributes|Concept.CharacterAttribute] to unlocking new abilities.",
    "translation": "",
    "context": ""
  },
  {
    "key": "db06709b2ab94bd76bf87b30d70f9dd6c178238f37df529d8da37fcbe97b01ef",
    "original": "Surrounding",
    "translation": "",
    "context": ""
  },
  {
    "key": "6d44d93e3b9422e8567135b3affdcc54f032707eb61b6b7bd2c55779a4ccafdf",
    "original": "Temporary Injury",
    "translation": "",
    "context": ""
  },
  {
    "key": "4a66708d86e406728fb739879d58f8ebd28942813d64b0c9658a99867794f8c5",
    "original": "Temporary injuries are received during combat when the damage to [Hitpoints|Concept.Hitpoints] received by a character exceeds the injury threshold. These injuries heal over time, but can be treated at a Temple for faster healing.",
    "translation": "",
    "context": ""
  },
  {
    "key": "975efea7ccc7c445d8993b75ebe2fdb9197f74ec409d474ee1efa51e5f17c571",
    "original": "This represents the amount of [Reach Disadvantage|Concept.ReachDisadvantage] that a character can ignore when attacking a target with higher [Reach|Concept.Reach].",
    "translation": "",
    "context": ""
  },
  {
    "key": "a73f5555ab46ba5a8c3e16aa11e8e73dfa8d65d7fc0369a9985744a84039f264",
    "original": "This represents the amount of [Reach Disadvantage|Concept.ReachDisadvantage] that a character can ignore when defending against an attacker who has higher [Reach|Concept.Reach].",
    "translation": "",
    "context": ""
  },
  {
    "key": "28e3e479e087b8b42748d6025513df43d317ad86274ed1b6f647f9c8696a8ddb",
    "original": "Trait",
    "translation": "",
    "context": ""
  },
  {
    "key": "b823d5f9d1ce690c00935e097200405bcf903b6bbd61e4866c3c1fda7fb3238c",
    "original": "Turn",
    "translation": "",
    "context": ""
  },
  {
    "key": "207e1a0619e8025f2d882fc454b4f9bd17ea9e3bdb83fe51db226d373b856727",
    "original": "Values can stack [multiplicatively|Concept.StackMultiplicatively] or additively. Additive stacking means that the values are added.\n\nFor example, imagine a value of 100. Two skills that both increase this by 40% and stack additively increase the value by a total of 1.0 + 0.4 + 0.4 = 1.8 times, so it becomes 100 x 1.8 = 180. Two skills that reduce it by 40% and stack additively reduce it by 1.0 - 0.4 - 0.4 = 0.2 times, so it becomes 100 x 0.2 = 20.\n\nGenerally, additive stacking is stronger when reducing a value or when the value is small and [multiplicative stacking|Concept.StackMultiplicatively] is stronger when increasing a value or when the value is large.",
    "translation": "",
    "context": ""
  },
  {
    "key": "1b63738089dd68cfecde99a4e859d1832a8308d1be7352f3b8c2d01b7652c05f",
    "original": "Values can stack multiplicatively or [additively|Concept.StackAdditively]. Multiplicative stacking means that the values are multiplied.\n\nFor example, imagine a value of 100. Two skills that both increase this by 40% and stack multiplicatively increase the value by a total of 1.4 x 1.4 = 1.96 times, so it becomes 100 x 1.96 = 196. Two skills that reduce it by 40% and stack multiplicatively reduce it by (1.0 - 0.4) x (1.0 - 0.4) = 0.36 times, so it becomes 100 x 0.36 = 36.\n\nGenerally, [additive stacking|Concept.StackAdditively] is stronger when reducing a value or when the value is small and multiplicative stacking is stronger when increasing a value or when the value is large.",
    "translation": "",
    "context": ""
  },
  {
    "key": "26b83994dca8b4b483edc45464ba07a5bde05cb7e6c5c61bb2e66da9d1e15fc7",
    "original": "Wait",
    "translation": "",
    "context": ""
  },
  {
    "key": "efbb17ab4bdb53bce851dd2a9277a95b6697890b79673de0e151e98a7e48c9b7",
    "original": "When a character is in the zone of control of multiple hostile characters, he is considered surrounded. Characters attacking a surrounded target in melee gain additional chance to hit. Several perks such as [$ $|Perk+perk_underdog], [$ $|Perk+perk_backstabber] and [$ $|Perk+perk_rf_long_reach] interact with the surrounding mechanic, reducing or increasing its effectiveness.",
    "translation": "",
    "context": ""
  },
  {
    "key": "24ec0d7651f18c2a3638b2a366f662dbc01773b456a8fa8f2fffa8a9ce3a660d",
    "original": "Zone of Control",
    "translation": "",
    "context": ""
  },
  {
    "key": "e929b04f75e8fe60edb04863fa45204c354751a61adf62a4fd662868a5c6e873",
    "original": "[Perks|Concept.Perk] are distributed in a character's perk tree across 7 rows which are known as tiers. A character must have spent at least as many perk points as the tier-1 to be able to access the perks on that tier.",
    "translation": "",
    "context": ""
  },
  {
    "key": "c9046f7a37ad0ea7cee73355984fa5428982f8b37c8f7bcec91f7ac71a7cd104",
    "original": "description",
    "translation": "",
    "context": "type = \"description\""
  },
  {
    "key": "4fdd3b6201a22c7814d6e67dbb7a17790224ea0fd32ef0a0ccb0a5485eae4c9d",
    "original": "less",
    "translation": "",
    "context": "\"\\n\\nUsing Wait causes your [turn order|Concept.Turn] in the next [round|Concept.Round] to be calculated with \" + getroottable().MSU.Text.colorizeMult(getroottable().Const.CharacterProperties.InitiativeAfterWaitMult) + \" \" + getroottable().Const.CharacterProperties.InitiativeAfterWaitMult > 1.0 ? \"more\" : \"less\" + \" [Initiative|Concept.Initiative].\""
  },
  {
    "key": "187897ce0afcf20b50ba2b37dca84a951b7046f29ed5ab94f010619f69d6e189",
    "original": "more",
    "translation": "",
    "context": "\"\\n\\nUsing Wait causes your [turn order|Concept.Turn] in the next [round|Concept.Round] to be calculated with \" + getroottable().MSU.Text.colorizeMult(getroottable().Const.CharacterProperties.InitiativeAfterWaitMult) + \" \" + getroottable().Const.CharacterProperties.InitiativeAfterWaitMult > 1.0 ? \"more\" : \"less\" + \" [Initiative|Concept.Initiative].\""
  },
  {
    "key": "aaf2320646108059a87ab5017a86aee454f5378ed95003dbb2e12f4ca5266e0e",
    "original": "title",
    "translation": "",
    "context": "type = \"title\""
  }
]