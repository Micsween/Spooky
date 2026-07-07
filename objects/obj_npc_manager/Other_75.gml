var _event_type = async_load[? "event_type"]

if (_event_type == "sequence broadcast message") {
	var _msg = async_load[? "message"]
	var _npc = npc_queue[current_npc_index]

	if (_msg == "npc_intro") {
		create_textbox(_npc.intro_dialogue, _npc.intro_names, 0.35)
		layer_sequence_pause(current_seq)
		state = "waiting_for_intro_dialogue"
	}

	if (_msg == "npc_order") {
		layer_sequence_pause(current_seq)
		state = "place_order"
	}

	if (_msg == "npc_accept") {
		layer_sequence_play(current_seq)
	}

	if (_msg == "npc_outro") {
		create_textbox(_npc.outro_dialogue, _npc.outro_names, 0.35)
		layer_sequence_pause(current_seq)
		state = "waiting_for_outro_dialogue"
	}

	if (_msg == "npc_done") {
		layer_sequence_destroy(current_seq)
		current_seq = noone
		current_npc_index++
		start_next_npc()
	}
}
