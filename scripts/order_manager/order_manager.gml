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
	order_object = instance_find(obj_order, 0); 
	if global.item_held == noone{
		return order_object.order
	}
	
	with(obj_order) {
		if array_length(order) == 0 {
			instance_destroy()
		}
		if array_contains(order, global.item_held) {
			item_index = array_get_index(order, global.item_held);
			array_delete(order, item_index, 1);
			global.item_held = noone;
			audio_play_sound(snd_complete_order, 100, false);

			if array_length(order) == 0 {
				with(obj_order_manager) {
					//move on to print the outro dialogue
					alarm[NPC_OUTRO_DIALOGUE_ALARM] = 10
				}
			}
		} else {
			audio_play_sound(snd_wrong_order, 100, false);
		}		
	}

	return order_object.order
}

