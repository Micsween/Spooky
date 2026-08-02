function go_to_rm_sleeping() {
	room_goto_fade(rm_sleeping, 0.025)
	
}

function set_state_cleaning_up() {
		create_textbox(["P: Time to clean up. I'll take out the trash outside."])
		global.current_day_state = DAY_STATE.CLEANING_UP
		global.current_npc_index = -1
}

function set_state_end_day() {
	global.current_day_state = DAY_STATE.END_DAY
	create_textbox(["P: Let's head home."])
}

function start_new_day() {
	global.current_game_day +=1 //CHANGE THIS LATER	
	global.current_npc_index = 0
	global.current_day_state = DAY_STATE.WORKING
	room_goto_fade(rm_hot_dog_van, 0.8)
	
}