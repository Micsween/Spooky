item_sprite = noone;
order_fulfilled = false;
waiting = false;
enum NPC_STATE {
	LOAD_NEW_NPC,
	ENTER,
	INTRO_DIALOGUE,
	PLACE_ORDER,
	WAIT_FOR_ORDER,
	OUTRO_DIALOGUE,
	EXIT
}
current_npc_index =0;
current_state = NPC_STATE.LOAD_NEW_NPC

function load_npcs() {
	var file_name = "npc_data.json"
	if (file_exists(file_name))
	{
		var buffer = buffer_load(file_name);
		var json_string = buffer_read(buffer, buffer_string); 
		buffer_delete(buffer);
		all_data = json_parse(json_string);
		npc_info = all_data[$ "npc_info"];
		
		day = "day" + string(global.current_game_day)
		day = all_data[$ day];
	} else {
		show_message("uhh.. I couldn't find the npc_data.json file. we're cooked.")
	}
}

load_npcs();


function get_next_npc(current_npc_index){
	// update this to checl if the index changed

	if current_npc_index >= array_length(day){
		//CHANGE THIS LATER TO UPDATE GLOBAL GAME STATE
		instance_destroy();
		return;
	}
	
	npc = day[current_npc_index]
	npc_id = npc[$ "id"];
	sprite_id = "";
	//if the npc is a construction worker, concatenate a lowercase version of the id to the given window sprite
	if string_length(npc_id) > 1 {
		sprite_id = string_lower(npc_id);
		npc_id = string_char_at(npc_id, 0) //get the first letter

	}
	name_and_sprite_info =  npc_info[$ npc_id]	
	window_sprite_name = name_and_sprite_info[$ "window_sprite"];
	chat_sprite_name = name_and_sprite_info[$ "chat_sprite"];

	global.current_npc.name = name_and_sprite_info[$ "name"];
	global.current_npc.intro_text = npc[$ "intro_text"];
	global.current_npc.outro_text = npc[$ "outro_text"];
	global.current_npc.window_sprite = asset_get_index(window_sprite_name + sprite_id);
	global.current_npc.chat_sprite = asset_get_index(chat_sprite_name)
}






