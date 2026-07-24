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

global.current_game_day = 3
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
global.finished_todays_orders = false