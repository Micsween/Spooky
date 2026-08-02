
function print_intro_dialogue()
{	
	global.chatting = true
	create_textbox(global.current_npc.intro_text,0.5, set_state_place_order_and_wait_for_order);
}

function print_outro_dialogue()
{
	global.chatting = true
	create_textbox(global.current_npc.outro_text, 0.5, set_state_exit);
	
}