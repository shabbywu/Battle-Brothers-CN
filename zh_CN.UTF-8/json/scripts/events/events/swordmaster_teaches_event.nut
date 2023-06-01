[
  {
    "ID": 293416997,
    "key": "[img]gfx/ui/events/event_17.png[/img]An old man's voice is heard quietly issuing orders.%SPEECH_ON%The foot leads, the body follows. Again.%SPEECH_OFF%You find %swordmaster% the swordmaster and %swordstudent% practicing in a field. The elder shakes his he",
    "original": "[img]gfx/ui/events/event_17.png[/img]An old man's voice is heard quietly issuing orders.%SPEECH_ON%The foot leads, the body follows. Again.%SPEECH_OFF%You find %swordmaster% the swordmaster and %swordstudent% practicing in a field. The elder shakes his head at the most recent display of swordsmanship.%SPEECH_ON%The foot leads, the body follows. Again!%SPEECH_OFF%The student practices what he is taught. Nodding, the swordmaster barks another order.%SPEECH_ON%Now do it in reverse. The foot retreats, the body follows. Do not retreat with your mind. Let your feet do the thinking for you. Instinct is survival! Thinking is death! Move as though the world demanded it. If a wind blows are you faster than the leaves which hear its call? I see. Good... you are learning. Now... again.%SPEECH_OFF%",
    "translation": "[img]gfx/ui/events/event_17.png[/img]一位老人的声音静静地发布命令。%SPEECH_ON%脚步为先，身体跟上。再说一遍。%SPEECH_OFF%你发现 %swordmaster% 这个剑术大师和 %swordstudent% 正在旷野中练习。 这个长者正在为最近看到的剑法摇头。%SPEECH_ON%脚步为先，身体跟上。再说一遍！%SPEECH_OFF%这个学生正在练习他所学的东西。 剑术大师点了点头，又吼着下命令。%SPEECH_ON%现在，反过来做。 脚步后退，身体跟上。 不要总想着后退。 让你的脚步跟上你的想法。 果敢才能生存！犹豫就会败北！ 像适者生存要求的那样行动。 如果一阵风吹向你，是不是要快过你听到树叶的声音？ 我看到了。很好…你正在学。现在…再来一次。%SPEECH_OFF%",
    "stage": 1
  },
  {
    "ID": 293416998,
    "key": "Has taught ",
    "original": "Has taught ",
    "translation": "教授了",
    "stage": 1,
    "context": "'Has taught ' + _event.m.Student.getName() + ' something'"
  },
  {
    "ID": 293416999,
    "key": " something",
    "original": " something",
    "translation": "某些东西",
    "stage": 1,
    "context": "'Has taught ' + _event.m.Student.getName() + ' something'"
  },
  {
    "ID": 293417000,
    "key": "Now put it to good use.",
    "original": "Now put it to good use.",
    "translation": "现在好好利用它。",
    "stage": 1
  },
  {
    "ID": 293417001,
    "key": " gains [color=",
    "original": " gains [color=",
    "translation": " 获得了 [color=",
    "stage": 1,
    "context": "_event.m.Student.getName() + ' gains [color=' + this.Const.UI.Color.PositiveEventValue + ']+' + meleeDefense + '[/color] Melee Defense'"
  },
  {
    "ID": 293417002,
    "key": "During camp...",
    "original": "During camp...",
    "translation": "露营时……",
    "stage": 5,
    "context": "this.m.Title = 'During camp...'"
  },
  {
    "ID": 293417003,
    "key": "[/color] Melee Defense",
    "original": "[/color] Melee Defense",
    "translation": "[/color] 近战防御",
    "stage": 1,
    "context": "_event.m.Student.getName() + ' gains [color=' + this.Const.UI.Color.PositiveEventValue + ']+' + meleeDefense + '[/color] Melee Defense'"
  },
  {
    "ID": 293417004,
    "key": "Learned from ",
    "original": "Learned from ",
    "translation": "学习 ",
    "stage": 1,
    "context": "'Learned from ' + _event.m.Teacher.getName()"
  }
]
