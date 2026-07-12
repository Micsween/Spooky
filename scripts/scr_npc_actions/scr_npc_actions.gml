
function print_intro_dialogue()
{
	show_debug_message(global.current_npc.intro_text)
	create_textbox(global.current_npc.intro_text);

	
}

function print_outro_dialogue()
{
	create_textbox(global.current_npc.outro_text);
	
}