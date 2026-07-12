item_sprite = noone;
order_created = false;
order_fulfilled = false;
waiting = false;
enum NPC_STATE {
	ENTER,
	INTRO_DIALOGUE,
	PLACE_ORDER,
	WAIT_FOR_ORDER,
	OUTRO_DIALOGUE,
	EXIT
}

current_state = NPC_STATE.ENTER

//THIS IS TEMPORARY, THIS NEEDS TO CHANGE
var outro = [
  "Thanks, man.",
  "You working as a security guard for the excavation site?",
  "Yeah. You think they wouldn't have anyone here at night, but... no. They have people here almost 24 hours.",
  "24 hours? Must be a big project.",
  "Bigger than big. People are saying this is the largest discovery in thousands of years.",
  "Really? What is it?",
  "That's the thing. That's all they'll say. As soon as I try to ask them for more information, they clam up.",
  "....",
  "Yeah. kinda feels like I'm working at area 51. But the pay is good, so I'm not asking any more questions. Anyway. Thanks for the meal. I gotta get back to work."
]

var lu = {
	name: "Lu", 
	window_sprite: spr_window_lu,
	chat_sprite: spr_chat_lu_talking, //there are multiple chat sprites. brainstorm what to do about this.
	intro_text: ["Hey.", "this is", "padding", "so I can test", "if this works"],
	outro_text: outro,
	order: noone,
}

global.current_npc = lu



//layer_sequence_create("Assets_2", x, y, seq_npc_enter)
//THIS ALL NEEDS TO BE PLACED SOMEWHERE ELSE

current_day_list = [lu]	
current_npc_index = 0





