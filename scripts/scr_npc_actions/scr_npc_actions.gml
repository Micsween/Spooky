
/// ["Hey.", "this is", "padding", "so I can test", "if this works"]
function print_intro_dialogue()
{
	create_textbox(global.current_npc.intro_text, [global.current_npc.name,"a", "b", "c", 
	"eee"], 0.6);
	
}

function print_outro_dialogue()
{
	var len = array_length(global.current_npc.outro_text);
	
	var names = []
	current_name = global.current_npc.name
	for (i = 0; i < len; i++){
	
		array_push(names, current_name)
		current_name = (current_name == global.current_npc.name) ? "You" : global.current_npc.name;
	}
	create_textbox(global.current_npc.outro_text, names, 0.6)
	
}