function go_to_rm_sleeping() {
	room_goto_fade(rm_sleeping, 0.025)
	
}

function set_state_cleaning_up() {
		create_textbox(["P: Time to clean up. I'll take out the trash outside."])
		global.current_day_state = DAY_STATE.CLEANING_UP
		global.current_npc_index = -1
}

function set_state_end_day(end_day_dialogue = ["P: Let's head home."]) {
	global.current_day_state = DAY_STATE.END_DAY
	if array_length(end_day_dialogue) != 0 {
		create_textbox(end_day_dialogue)
	}

}

function start_new_day() {
	global.current_game_day +=1 //CHANGE THIS LATER	
	global.current_npc_index = 0
	global.current_day_state = DAY_STATE.WORKING
	room_goto_fade(rm_hot_dog_van, 0.8)
	
}
function handle_finish_cleaning() {
	switch(global.current_game_day) {
		case 1:
			audio_play_sound(snd_stove_sizzle, 100, false)
			instance_create_layer(x-100 ,y+260,"Instances", obj_id_badge)
			break;
		case 2:
			set_state_end_day()
			break;
	}

	
}