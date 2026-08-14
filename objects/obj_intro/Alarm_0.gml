
global.current_npc.name = "James"
global.current_npc.chat_sprite  = spr_phone
var dialogue = [
"P: Hey James, what's up?",

"N: Hey man, you hear about the new excavation site downtown?",

"P: Yeah.",

"N: I met someone who works at the site.",

"N: They said most restuarants downtown don't stay open that late.",
"N: and they need a food truck out there during the evenings.",

"N: They're willing to pay a generous fee,",

"N: and reserve you a parking spot outside the site.",

"N: I recommended you. Are you up for it?",

"P: Thanks, man! I'm down. When do I start?",

"N: Tonight, if you can.",

"P: Great, I'm already in the truck.",

"P: Tell them I'm on my way."]

function set_alarm_1() {
    alarm[1] = 100;
}
//create textbox
create_textbox(dialogue, set_alarm_1);