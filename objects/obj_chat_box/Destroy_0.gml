global.chatting = false

//if the obj order manager is there, and you're not finished with todays orders
//than you were talking to an npc
//and the order manager needs to move on
if instance_exists(obj_order_manager) and not global.finished_todays_orders {
	with(obj_order_manager){
		// when you die, tell the order manager to move on
		if current_state == NPC_STATE.INTRO_DIALOGUE {
			alarm[NPC_CREATE_AND_WAIT_FOR_ORDER_ALARM] = 10
		}else if current_state == NPC_STATE.OUTRO_DIALOGUE {
			alarm[NPC_EXIT_ALARM] = 10
		}
	}
}