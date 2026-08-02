function create_order(){
	
	randomize();
	soda_options = [spr_blue_soda, spr_pink_soda]
	hot_dog_options = [spr_hot_dog_and_bun, spr_hot_dog_ketchup, spr_hot_dog_mustard, spr_hot_dog_ketchup_and_mustard]
	chip_options = [spr_blue_sun_chips, spr_yellow_sun_chips]
	cookie_options = [spr_chocolate_chip_cookie, spr_brownie_cookie]


	soda_i = irandom(1)
	hd_i = irandom(3)
	chip_i = irandom(1)
	cookie_i = irandom(1)
	
	obj = instance_create_layer(1965, 192, "Instances", obj_order )
	order = [soda_options[soda_i], hot_dog_options[hd_i], chip_options[chip_i], cookie_options[cookie_i]]
	order = [soda_options[soda_i]]
	obj_order.order = order
	return order
}

function create_existing_order(existing_order){
	order_obj = instance_create_layer(1965, 192, "Instances", obj_order)
	with(order_obj) {
		order = existing_order
	}
}

function complete_order() {
	instance_destroy(obj_order)
}


function accept_order_item(){
	var order_object = instance_find(obj_order, 0);

	if (order_object == noone) {
	    return [];
	}
	if global.item_held == noone{
		return order_object.order
	}
	
	with(obj_order) {
		
		if array_contains(order, global.item_held) {
			item_index = array_get_index(order, global.item_held);
			array_delete(order, item_index, 1);
			global.item_held = noone;
			audio_play_sound(snd_complete_order, 100, false);

			if array_length(order) == 0 {
				set_state_outro_dialogue()
			}
		} else {
			audio_play_sound(snd_wrong_order, 100, false);
		}	
		if array_length(order) == 0 {
			instance_destroy()
		}
	}
	return instance_exists(obj_order) ? order_object.order : []
}


function set_state_load_new_npc(){
	with(obj_order_manager) {
		load_next_npc();
		current_state = NPC_STATE.LOAD_NEW_NPC
		global.current_npc_index +=1;
		alarm[0] = 600; 
	}
}

function set_state_enter() {
	with(obj_order_manager) {
		current_state = NPC_STATE.ENTER
		sequence_id = layer_sequence_create("Assets_2", x, y, seq_move_npc)
	}
}
	

function set_state_intro_dialogue(){
	with(obj_order_manager) {
		current_state = NPC_STATE.INTRO_DIALOGUE
	}	
}

function set_state_place_order_and_wait_for_order() {
	with(obj_order_manager) {
		current_state = NPC_STATE.PLACE_ORDER 
		order = create_order()
		current_state = NPC_STATE.WAIT_FOR_ORDER
	}
}	

function set_state_outro_dialogue() {
	with(obj_order_manager) {
		current_state = NPC_STATE.OUTRO_DIALOGUE
		global.chatting = true
		print_outro_dialogue()
	}
}

function set_state_exit() {
	with(obj_order_manager) {
		current_state = NPC_STATE.EXIT
		layer_sequence_play(sequence_id)
	}
}




