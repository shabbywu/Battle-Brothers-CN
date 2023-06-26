[
  {
    "ID": 293417231,
    "key": "[img]gfx/ui/events/event_01.png[/img]You go and see the shop. The wildman truly did a number on the place. And it reeks of his... scent. It would be a bad look for the company to not handle this issue with great care. You agree to pay for the damages, som",
    "original": "[img]gfx/ui/events/event_01.png[/img]You go and see the shop. The wildman truly did a number on the place. And it reeks of his... scent. It would be a bad look for the company to not handle this issue with great care. You agree to pay for the damages, something most mercenary bands would not have done. This act of kindness does not slip the townspeople by.",
    "translation": "[img]gfx/ui/events/event_01.png[/img]你去看了看商店。 The wildman truly did a number on the place. 还有他的味道…气味。 如果队伍不能非常小心地处理这个问题，那将会很糟糕。 你同意赔偿损失，这是大多数雇佣兵团不会做的。 这种善意的行为能稳定城镇秩序，不会让镇上的人因混乱逃离。",
    "stage": 1,
    "context": "'Text' = '[img]gfx/ui/events/event_01.png[/img]You go and see the shop. The wildman truly did a number on the place. And it reeks of his... scent. It would be a bad look for the company to not handle this issue with great care. You agree to pay for the damages, something most mercenary bands would not have done. This act of kindness does not slip the townspeople by.'"
  },
  {
    "ID": 293417232,
    "key": "A shame it had to come to this.",
    "original": "A shame it had to come to this.",
    "translation": "很遗憾，事情竟成了这样。",
    "stage": 1,
    "context": "'Text' = 'A shame it had to come to this.'"
  },
  {
    "ID": 293417233,
    "key": "Got a pay cut",
    "original": "Got a pay cut",
    "translation": "减薪了",
    "stage": 1,
    "context": "_event.m.Wildman.worsenMood(2.0, 'Got a pay cut')"
  },
  {
    "ID": 293417234,
    "key": "[/color] Crowns",
    "original": "[/color] Crowns",
    "translation": "[/color] 克朗",
    "stage": 5,
    "context": "'text' = 'You spend [color=' + this.Const.UI.Color.NegativeEventValue + ']' + _event.m.Compensation + '[/color] Crowns'"
  },
  {
    "ID": 293417235,
    "key": " is now paid [color=",
    "original": " is now paid [color=",
    "translation": "现在支付[color=",
    "stage": 1,
    "context": "'text' = _event.m.Wildman.getName() + ' is now paid [color=' + this.Const.UI.Color.NegativeEventValue + ']' + _event.m.Wildman.getDailyCost() + '[/color] crowns a day'"
  },
  {
    "ID": 293417236,
    "key": "One of your men caused havoc in town",
    "original": "One of your men caused havoc in town",
    "translation": "你的一个手下在城里造成了祸患",
    "stage": 1,
    "context": "this.World.FactionManager.getFaction(_event.m.Town.getFactions()[0]).addPlayerRelation(this.Const.World.Assets.RelationCivilianContractFail, 'One of your men caused havoc in town')"
  },
  {
    "ID": 293417237,
    "key": "%townImage%You push the shop owner away, telling him that you owe nothing. When he jumps forward again, your hand deftly moves to the pommel of your sword, stopping the man in one swift motion. He raises his hands up, nodding as he backs off. A few townsp",
    "original": "%townImage%You push the shop owner away, telling him that you owe nothing. When he jumps forward again, your hand deftly moves to the pommel of your sword, stopping the man in one swift motion. He raises his hands up, nodding as he backs off. A few townspeople see this and skirt by, trying to avoid your gaze. The militiamen notice, but they seem uncertain on whether to take action or not.",
    "translation": "%townImage%你一把推开店主，并告诉他，你什么都不欠他的。 当他再次向前跳的时候，你的手灵巧地摸向你的剑鞘，店主迅速停止了他的挑衅动作。 他举起双手，一边后退一边点头。 有几个镇上的人看到了这个情况，眼神躲闪的避开你的目光。 民兵注意到了这边的情况，但他们似乎不确定是否对此采取行动。",
    "stage": 1,
    "context": "'Text' = '%townImage%You push the shop owner away, telling him that you owe nothing. When he jumps forward again, your hand deftly moves to the pommel of your sword, stopping the man in one swift motion. He raises his hands up, nodding as he backs off. A few townspeople see this and skirt by, trying to avoid your gaze. The militiamen notice, but they seem uncertain on whether to take action or not.'"
  },
  {
    "ID": 293417238,
    "key": "The company backed down from a fight",
    "original": "The company backed down from a fight",
    "translation": "战团在一场战斗中退缩了",
    "stage": 1,
    "context": "bro.worsenMood(1.0, 'The company backed down from a fight')"
  },
  {
    "ID": 293417239,
    "key": "[img]gfx/ui/events/event_141.png[/img]The men before you are weak and frail, a force cobbled together out of the meek and downtrodden. Nowhere in their ranks is the actual businessman you had trouble with. While you admire their tenacity, you can't quite ",
    "original": "[img]gfx/ui/events/event_141.png[/img]The men before you are weak and frail, a force cobbled together out of the meek and downtrodden. Nowhere in their ranks is the actual businessman you had trouble with. While you admire their tenacity, you can't quite bring yourself to slaughter half a town over a rather small affair. You reach to your side, drawing a few gasps from the poorly armed crowd of men, only to return your hand with a purse in its palm. A deal is struck and the compensation is paid. The townspeople are relieved, though a few of the men are not so happy about backing down from a fight.",
    "translation": "[img]gfx/ui/events/event_141.png[/img]在你们面前的，是从镇子中的软弱，谦卑，被欺压的人中拼凑出来的有力量的人矮子中的高个。 在他们的队伍中没有一个是对你有麻烦的大商人。 虽然你钦佩他们的坚韧，但你不能因为一件小事而去杀戮半个城镇。 你伸手摸向你的身后，那群武装不济的人中有几个倒抽一口冷气，结果你手里却提溜一个钱包，你把钱包丢给他们，收回手 一笔交易达成了，赔偿也支付了。 虽然有些人不太愿意放弃战斗，但是大部分镇上的人都松了一口气。",
    "stage": 1,
    "context": "'Text' = \"[img]gfx/ui/events/event_141.png[/img]The men before you are weak and frail, a force cobbled together out of the meek and downtrodden. Nowhere in their ranks is the actual businessman you had trouble with. While you admire their tenacity, you can't quite bring yourself to slaughter half a town over a rather small affair. You reach to your side, drawing a few gasps from the poorly armed crowd of men, only to return your hand with a purse in its palm. A deal is struck and the compensation is paid. The townspeople are relieved, though a few of the men are not so happy about backing down from a fight.\""
  },
  {
    "ID": 293417240,
    "key": "Fine, the company will cover the damages.",
    "original": "Fine, the company will cover the damages.",
    "translation": "好吧，战团会赔偿的。",
    "stage": 1,
    "context": "'Text' = 'Fine, the company will cover the damages.'"
  },
  {
    "ID": 293417241,
    "key": "At %townname%",
    "original": "At %townname%",
    "translation": "在 %townname%",
    "stage": 1,
    "context": "this.m.Title = 'At %townname%'"
  },
  {
    "ID": 293417242,
    "key": "%townImage%Surveying the damage, you agree to compensate the businessman. But this isn't your fault, it's the wildman's. You dock his pay: for some time to come, the mercenary's earnings will be halved. Furthermore, you take what earnings he's made and ha",
    "original": "%townImage%Surveying the damage, you agree to compensate the businessman. But this isn't your fault, it's the wildman's. You dock his pay: for some time to come, the mercenary's earnings will be halved. Furthermore, you take what earnings he's made and hand them over to the shop owner. It doesn't even begin to cover the damages, but it's a start. One man is left happy, and another quite disgruntled.\n\nYou tell the wild cretin that now he'll think twice about smearing shit all over someone else's walls. But the wildman doesn't seem to understand you. He just understands that the gold he once owned has been given to someone else, and he eyes its departure with sadness and bottled anger.",
    "translation": "%townImage%调查损失后，你同意赔偿商人。 但这不是你的错，是野人的错。 你扣他的工资：在将来的一段时间里，这个雇佣兵的收入会减半。 而且，你会把他挣的钱拿去交给店主。 它甚至根本不够赔偿损失，但它是一个开始。 一个人很高兴，而另一个人很不高兴。\n\n如果你问那个白痴，他现在是否会重新考虑在别人的墙上涂上屎。 但是野人似乎无法理解你。 他只知道，他曾经拥有的金子已经给了别人，他看着这些的离去而悲伤和愤怒。",
    "stage": 1,
    "context": "'Text' = \"%townImage%Surveying the damage, you agree to compensate the businessman. But this isn't your fault, it's the wildman's. You dock his pay: for some time to come, the mercenary's earnings will be halved. Furthermore, you take what earnings he's made and hand them over to the shop owner. It doesn't even begin to cover the damages, but it's a start. One man is left happy, and another quite disgruntled.\n\nYou tell the wild cretin that now he'll think twice about smearing shit all over someone else's walls. But the wildman doesn't seem to understand you. He just understands that the gold he once owned has been given to someone else, and he eyes its departure with sadness and bottled anger.\""
  },
  {
    "ID": 293417243,
    "key": "You refused to pay for damages caused by one of your men",
    "original": "You refused to pay for damages caused by one of your men",
    "translation": "你拒绝支付由你的一个战士造成的损害赔偿款。",
    "stage": 1,
    "context": "this.World.FactionManager.getFaction(_event.m.Town.getFactions()[0]).addPlayerRelation(this.Const.World.Assets.RelationCivilianContractFail, 'You refused to pay for damages caused by one of your men')"
  },
  {
    "ID": 293417244,
    "key": "This ain't our problem.",
    "original": "This ain't our problem.",
    "translation": "这不是我们自己的问题。",
    "stage": 1,
    "context": "'Text' = \"This ain't our problem.\""
  },
  {
    "ID": 293417245,
    "key": "[img]gfx/ui/events/event_141.png[/img]While leaving town, you hear a bark over your shoulder. But it is from no dog: you turn 'round to find a number of militiamen converging on the road, fanning out from homes and shops. They say you did that businessman",
    "original": "[img]gfx/ui/events/event_141.png[/img]While leaving town, you hear a bark over your shoulder. But it is from no dog: you turn 'round to find a number of militiamen converging on the road, fanning out from homes and shops. They say you did that businessman wrong and they won't be having your kind in a place like this no more. You can either pay up right now, or they'll take it from you by force.",
    "translation": "[img]gfx/ui/events/event_141.png[/img]当你离开小镇的时候，你听到你身后的吠声。 但这不是狗干的：你转过身去，发现有一群民兵聚集在路上，他们从家里和商店里陆续出来。 他们说商人那件事你做错了，他们不会再让你这样的人住在这个地方了。 你要么现在就把钱付清，要么他们就会用武力把钱拿走。",
    "stage": 1,
    "context": "'Text' = \"[img]gfx/ui/events/event_141.png[/img]While leaving town, you hear a bark over your shoulder. But it is from no dog: you turn 'round to find a number of militiamen converging on the road, fanning out from homes and shops. They say you did that businessman wrong and they won't be having your kind in a place like this no more. You can either pay up right now, or they'll take it from you by force.\""
  },
  {
    "ID": 293417246,
    "key": "Charity through destruction?",
    "original": "Charity through destruction?",
    "translation": "难道要通过破坏表达善意？",
    "stage": 1,
    "context": "'Text' = 'Charity through destruction?'"
  },
  {
    "ID": 293417247,
    "key": "Fine, the company will cover the damages - but %wildman% will work it off.",
    "original": "Fine, the company will cover the damages - but %wildman% will work it off.",
    "translation": "好吧，战团会赔偿－费用由 %wildman% 自己负担。",
    "stage": 1,
    "context": "'Text' = 'Fine, the company will cover the damages - but %wildman% will work it off.'"
  },
  {
    "ID": 293417248,
    "key": "Don't look at me like that, you know what you did.",
    "original": "Don't look at me like that, you know what you did.",
    "translation": "别那样看着我，你知道你做了什么。",
    "stage": 1,
    "context": "'Text' = \"Don't look at me like that, you know what you did.\""
  },
  {
    "ID": 293417249,
    "key": "%townImage%Civilization is no place for a wildman like %wildman% and he quickly proves it.\n\nApparently, the damned man went crazy while in a shop and trashed the whole place. As the story goes, he just walked in and started taking things, not quite unders",
    "original": "%townImage%Civilization is no place for a wildman like %wildman% and he quickly proves it.\n\nApparently, the damned man went crazy while in a shop and trashed the whole place. As the story goes, he just walked in and started taking things, not quite understanding the social norms of paying for goods. The shop owner then came after him with a broom, trying to shoo the man out of his store. Believing the broom a monster, the wildman proceeded to go completely crazy. Judging by the reports, it was quite the commotion, up to and including shite throwing.\n\nNow the shop owner is in your face demanding compensation for the damage done. Apparently he's wanting %compensation% crowns. Behind him, a few town militia stand with very watchful eyes.",
    "translation": "%townImage%城市文明是不适合像 %wildman% 的野人的，他很快就证明了这一点。\n\n显然，那该死的乡巴佬在商店里发疯了，他把整个地方弄得乱七八糟。 正如之前所想的，他只是走进来，开始拿东西，却不太了解购买商品的社会规矩。 店主拿着扫帚追赶他，想把他赶出商店。 野人从没见过像扫帚这样的怪物，于是他完全疯狂了。 从报告来看，当时相当混乱，包括野人把他的屎丢的满天飞。\n\n现在店主当着你的面要求赔偿所造成的损失。 很明显，他想要 %compensation% 的补偿。 在他身后，有几个城镇的民兵站在那里，个个眼里闪着警觉的光芒。",
    "stage": 1,
    "context": "'Text' = \"%townImage%Civilization is no place for a wildman like %wildman% and he quickly proves it.\n\nApparently, the damned man went crazy while in a shop and trashed the whole place. As the story goes, he just walked in and started taking things, not quite understanding the social norms of paying for goods. The shop owner then came after him with a broom, trying to shoo the man out of his store. Believing the broom a monster, the wildman proceeded to go completely crazy. Judging by the reports, it was quite the commotion, up to and including shite throwing.\n\nNow the shop owner is in your face demanding compensation for the damage done. Apparently he's wanting %compensation% crowns. Behind him, a few town militia stand with very watchful eyes.\""
  },
  {
    "ID": 293417250,
    "key": "Fine. I did not wake up this morning looking to slaughter innocents.",
    "original": "Fine. I did not wake up this morning looking to slaughter innocents.",
    "translation": "好吧。我今早醒来不是为了屠杀无辜的人。",
    "stage": 1,
    "context": "'Text' = 'Fine. I did not wake up this morning looking to slaughter innocents.'"
  },
  {
    "ID": 293417251,
    "key": "[/color] crowns a day",
    "original": "[/color] crowns a day",
    "translation": "[/color] 克朗每天",
    "stage": 1,
    "context": "'text' = _event.m.Wildman.getName() + ' is now paid [color=' + this.Const.UI.Color.NegativeEventValue + ']' + _event.m.Wildman.getDailyCost() + '[/color] crowns a day'"
  },
  {
    "ID": 293417252,
    "key": "To hell with your shop.",
    "original": "To hell with your shop.",
    "translation": "去你店里。",
    "stage": 1,
    "context": "'Text' = 'To hell with your shop.'"
  },
  {
    "ID": 293417253,
    "key": "It's better this way.",
    "original": "It's better this way.",
    "translation": "这样更好一点。",
    "stage": 1,
    "context": "'Text' = \"It's better this way.\""
  },
  {
    "ID": 293417254,
    "key": "You killed some of the militia",
    "original": "You killed some of the militia",
    "translation": "你杀了一些民兵",
    "stage": 1,
    "context": "this.World.FactionManager.getFaction(_event.m.Town.getFactions()[0]).addPlayerRelation(this.Const.World.Assets.RelationBetrayal, 'You killed some of the militia')"
  },
  {
    "ID": 293417255,
    "key": "You spend [color=",
    "original": "You spend [color=",
    "translation": "你花费了 [color=",
    "stage": 5,
    "context": "'text' = 'You spend [color=' + this.Const.UI.Color.NegativeEventValue + ']' + _event.m.Compensation + '[/color] Crowns'"
  }
]
