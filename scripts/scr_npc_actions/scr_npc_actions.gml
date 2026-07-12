
function print_intro_dialogue()
{
	create_textbox(global.current_npc.intro_text[global.current_game_day], 0.6);
	show_debug_message(global.current_npc.intro_text[global.current_game_day])
	
}

function print_outro_dialogue()
{

	create_textbox(global.current_npc.outro_text[global.current_game_day], 0.6)
	
}