function load_npcs() {
	var file_name = "npc_data.json"
	if (file_exists(file_name))
	{
		// ignore this fancy jargon its just loading a file :D
		var buffer = buffer_load(file_name);
		var json_string = buffer_read(buffer, buffer_string); 
		buffer_delete(buffer);
		npc_json = json_parse(json_string);
		return npc_json
		
	} else {
		show_message("uhh.. I couldn't find the npc_data.json file. we're cooked.")
	}
}

global.current_game_day = 1
global.chatting = false
global.current_npc = {
	name : noone,
	intro_text: noone,
	outro_text: noone,
	chat_sprite: noone,
	window_sprite: noone
}
global.npc_json = load_npcs();
global.obj_order_manager_state = noone
global.current_npc_index = 0
global.item_held = noone

#macro LOAD_NEW_NPC_ALARM 0
#macro NPC_ENTER_ALARM 1
#macro NPC_INTRO_DIALOGUE_ALARM 2
#macro NPC_CREATE_AND_WAIT_FOR_ORDER_ALARM 3
#macro NPC_OUTRO_DIALOGUE_ALARM 4
#macro NPC_EXIT_ALARM 5

#macro SET_STATE_WORKING_ALARM 0
#macro SET_STATE_CLEANING_UP_ALARM 1
#macro SET_STATE_END_DAY_ALARM 2

enum DAY_STATE {
	INTRO,
	WORKING,
	CLEANING_UP,
	END_DAY
}

global.current_day_state = DAY_STATE.WORKING // CHANGE THIS TO INTRO LATER
