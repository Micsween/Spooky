//gets next object it needs to create, right now its just lue

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

npc = {
	name: "Lu", 
	window_sprite: spr_window_lu,
	chat_sprite: spr_chat_lu_talking, //there are multiple chat sprites. brainstorm what to do about this.
	intro_text: ["Hey."],
	outro_text: outro,
	order: noone,
}

instance_create_layer(1184,352, "Instances", obj_npc, npc)