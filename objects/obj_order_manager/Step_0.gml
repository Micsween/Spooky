switch(current_state) {
	case NPC_STATE.LOAD_NEW_NPC:
		if (not waiting) {
			waiting = true;
			load_next_npc();
			alarm[0] = 300;
		}
	case NPC_STATE.ENTER:
		//if you're not waiting for the enter seq
		if (not waiting){
			waiting = true;
			sequence_id = layer_sequence_create("Assets_2", x, y, seq_move_npc)
		}
		//this needs to change so that when you left click the dialogue plays.
		break;
	case NPC_STATE.INTRO_DIALOGUE:
		if (not waiting) {
			waiting = true;
			print_intro_dialogue()
		}
		break;
	case NPC_STATE.PLACE_ORDER:
		current_state = NPC_STATE.WAIT_FOR_ORDER
		order = create_order()
		break;
	case NPC_STATE.WAIT_FOR_ORDER:
		if (order_fulfilled){
			complete_order();
			order_fulfilled = false;
			current_state = NPC_STATE.OUTRO_DIALOGUE
		}
		break;
	case NPC_STATE.OUTRO_DIALOGUE:
		if (not waiting) {
			waiting = true;
			print_outro_dialogue()
		}
		break;
	case NPC_STATE.EXIT:
		global.current_npc_index +=1;
		layer_sequence_play(sequence_id)
		current_state = NPC_STATE.LOAD_NEW_NPC
		break;
}


