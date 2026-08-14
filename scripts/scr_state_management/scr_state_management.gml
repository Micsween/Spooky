function go_to_rm_sleeping() {
	room_goto_fade(rm_sleeping, 0.025,8,"Heading home....") //previously 8.5e
	
}

function set_state_cleaning_up() {
	with(obj_order_manager) {
		instance_destroy()
	}
	global.obj_order_manager_state = noone
	create_textbox(["P: Time to clean up. I'll take the trash bag outside to the dumpster."])
	global.current_day_state = DAY_STATE.CLEANING_UP
	global.current_npc_index = -1
}

function set_state_end_day(end_day_dialogue = ["P: Let's head home."]) {
	global.current_day_state = DAY_STATE.END_DAY
	if array_length(end_day_dialogue) != 0 {
		create_textbox(end_day_dialogue)
	}

}
//function room_goto_fade(target_room, fade_spd = 0.025,fade_wait = 0){
//    instance_create_depth(0, 0, -10000, obj_fade, {
//        room_destination : target_room,
//        fade_speed : fade_spd,
//		fade_delay : fade_wait
//    });
//}
function start_new_day() {
	global.current_game_day +=1 //CHANGE THIS LATER	
	global.current_npc_index = 0
	global.current_day_state = DAY_STATE.WORKING
	room_goto_fade(rm_hot_dog_van)
	
}
function handle_finish_cleaning() {
	switch(global.current_game_day) {
		case 1:
			audio_play_sound(snd_id_falling, 100, false)
			instance_create_layer(x-100 ,y+260,"Instances", obj_id_badge)
			create_shadow_by_van_outside()
			break;
		case 2:
			set_state_end_day()
			break;
	}

	
}


function create_choice() {
	
	instance_create_layer(352, 352, "Instances", obj_choice)
	
}