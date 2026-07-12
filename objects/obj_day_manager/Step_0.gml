switch(current_state) {
	case NPC_STATE.ENTER:
		//if you're not waiting for the enter seq
		if (not waiting){
			waiting = true;
			layer_sequence_create("Assets_2", x, y, seq_npc_enter)
			// play the enter sequence
			//enter sequence will switch to next state intro_dialogue
			// it will also set waiting to false
		}
		break;
	case NPC_STATE.INTRO_DIALOGUE:
		if (not waiting) {
			waiting = true;
			print_intro_dialogue()
			//calls print dialogue on current npc_intro
			//print dialogue
			//when dialogue  is finished, set waiting to false.
			// sends broadcast message
			// broadcast message sets state to place_orde
	
		}
		break;
	case NPC_STATE.PLACE_ORDER:
		current_state = NPC_STATE.WAIT_FOR_ORDER
		create_order()
		break;
	case NPC_STATE.WAIT_FOR_ORDER:
		if (order_fulfilled and order_created){
			complete_order();
			order_fulfilled = false;
			order_created = false;
		}
		break;
	case NPC_STATE.OUTRO_DIALOGUE:
		break;
}


