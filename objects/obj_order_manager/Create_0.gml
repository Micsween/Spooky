enum NPC_STATE {
		LOAD_NEW_NPC,
		ENTER,
		INTRO_DIALOGUE,
		PLACE_ORDER,
		WAIT_FOR_ORDER,
		OUTRO_DIALOGUE,
		EXIT
}





function load_next_npc(){
	if out_of_npcs() {
		set_state_cleaning_up()
		instance_destroy()
		return 
	}
	load_global_current_npc()
}


function out_of_npcs() {
	return global.current_npc_index >= array_length(global.npc_json[$ "day" + string(global.current_game_day)])
}

function is_a_construction_worker_id(npc_id){
	return string_length(npc_id) > 1
}

function load_global_current_npc() {
	todays_npcs = global.npc_json[$  "day" + string(global.current_game_day)]
	npc = todays_npcs[global.current_npc_index]
	npc_id = npc[$ "id"];
	sprite_id = "";
	//
	if is_a_construction_worker_id(npc_id) {
		sprite_id = string_lower(npc_id);
		npc_id = string_char_at(npc_id, 0)
	}
	
	npc_info = global.npc_json[$ "npc_info"];
	name_and_sprite_info =  npc_info[$ npc_id]	
	global.current_npc.name = name_and_sprite_info[$ "name"];
	global.current_npc.intro_text = npc[$ "intro_text"];
	global.current_npc.outro_text = npc[$ "outro_text"];
	global.current_npc.window_sprite = asset_get_index( name_and_sprite_info[$ "window_sprite"] + sprite_id);
	global.current_npc.chat_sprite = asset_get_index(name_and_sprite_info[$ "chat_sprite"])
}

function save_state()	{
	global.obj_order_manager_state = {
		current_state : current_state,
		alarm_0_timer : alarm_get(0), 
		sequence_id : sequence_id,
		sequence_frame : sequence_id == noone ? -1 : layer_sequence_get_headpos(sequence_id),	// if the sequence hasnt been started, save as -1. otherwise save the current frame.
		sequence_paused : layer_sequence_is_paused(sequence_id),
		order : order
	}
}

function load_state() {
	if global.obj_order_manager_state == noone {
		sequence_id = noone
		order = noone
		set_state_load_new_npc()
		return
	}
	
	state = global.obj_order_manager_state
	current_state = state.current_state
	sequence_id	= state.sequence_id
	order = state.order
	
	if state.sequence_frame > 0 { 
		sequence_id =  layer_sequence_create("Inside_Window", x, y, seq_move_npc)
		layer_sequence_headpos(sequence_id, state.sequence_frame);
		if state.sequence_paused {
			layer_sequence_pause(sequence_id)
		}
	}
	if order != noone {
		create_existing_order(order)

	}
}


load_state()




