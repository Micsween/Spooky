if global.chatting {
	exit
}
if current_state == NPC_STATE.INTRO_DIALOGUE {
	print_intro_dialogue()

} else if(current_state == NPC_STATE.WAIT_FOR_ORDER) {
	order = accept_order_item();
}
