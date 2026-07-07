if (state == "all_done") {
	exit
}

var _npc = npc_queue[current_npc_index]

if (state == "waiting_for_intro_dialogue") {
	if (instance_exists(obj_chat_box) && obj_chat_box.dialogue_finished) {
		layer_sequence_play(current_seq)
		state = "playing"
	}
}

if (state == "place_order") {
	create_order()
	state = "waiting_for_order"
}

if (state == "waiting_for_order") {
	if (obj_order_manager.order_fulfilled) {
		complete_order()
		obj_order_manager.order_fulfilled = false
		layer_sequence_play(current_seq)
		state = "playing"
	}
}

if (state == "waiting_for_outro_dialogue") {
	if (instance_exists(obj_chat_box) && obj_chat_box.dialogue_finished) {
		layer_sequence_play(current_seq)
		state = "playing"
	}
}
