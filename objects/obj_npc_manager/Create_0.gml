

npc = instance_create_layer(1344, 220, "Instances", obj_npc, get_next_npc() )
npc.image_xscale = 2
npc.image_yscale = 2
npc.sprite_index = spr_window_lu



global.player_name = "You"

//name
//name
//chat_sprite
//wiindow_sprite
//dialogues


//NPC
// Has:
// chat sprite
// window sprite
// name
// introduction text
// an order
// outro text // basic npcs say thank you. special npcs say other things.
// Does:
// enters scene : moves from wherever it is to the window
// places an order : calls create_order script and says the order out loud.
// accepts an order : 
//
// Does an npc manager do anything else? I think it should just create an instance 
// of an npc and let the npc do the rest.


npc = {
	name: "Lu", 
	chat_sprite: spr_chat_lu_talking, //there are multiple chat sprites. brainstorm what to do about this.
	window_sprite: spr_window_lu,
	introduction_text: "Hey.",
	order: noone,
}
//animation?: enter scene
// fi

var npc_name = "Lu"
var text_list = [
  "Hey.",
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


//dialogue at 0 is always the intro text
//dialogue is { name, text }
dialogue_list = []

//DELETE LATER
names = []
dialogues = []
//THIS IS FOR TESTING PURPOSES ONLY
var intro = array_shift(text_list);
current_name = ""
for (var i = 0; i < array_length(text_list); i++) {
	current_name = (current_name == npc_name) ? global.player_name : npc_name //set name. if the name is the npc's name, switch it to player name.
	dialogue = {name : current_name, text : text_list[i]}
	
	array_push(dialogue_list, dialogue)	
	
	//DELETE LATER
	array_push(names, current_name);
	array_push(dialogues, text_list[i]);
	//THIS IS FOR TESTING PURPOSES ONLY
}

//greeting 
//place/receive order
//additional dialogue
//EDIT LATER
create_textbox(dialogues,names, 0.35)