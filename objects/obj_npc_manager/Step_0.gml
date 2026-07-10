if (state == "all_done") {
	exit
}

var _npc = npc_queue[current_npc_index]

if (state == "playing" && current_seq != noone) {
	var _head = layer_sequence_get_headpos(current_seq)

	if (_head >= 15 && !intro_triggered) {
		intro_triggered = true
		create_textbox(_npc.intro_dialogue, _npc.intro_names, 0.35)
		layer_sequence_pause(current_seq)
		state = "waiting_for_intro_dialogue"
	}

	if (_head >= 55) {
		layer_sequence_destroy(current_seq)
		current_seq = noone
		current_npc_index++
		start_next_npc()
	}
}

if (state == "waiting_for_intro_dialogue") {
	if (instance_exists(obj_chat_box) && obj_chat_box.dialogue_finished) {
		layer_sequence_play(current_seq)
		state = "place_order"
	}
}

if (state == "place_order") {
	create_order()
	layer_sequence_pause(current_seq)
	state = "waiting_for_order"
}

if (state == "waiting_for_order") {
	if (obj_order_manager.order_fulfilled) {
		complete_order()
		obj_order_manager.order_fulfilled = false
		create_textbox(_npc.outro_dialogue, _npc.outro_names, 0.35)
		state = "waiting_for_outro_dialogue"
	}
}

if (state == "waiting_for_outro_dialogue") {
	if (instance_exists(obj_chat_box) && obj_chat_box.dialogue_finished) {
		layer_sequence_play(current_seq)
		state = "playing"
	}
}
