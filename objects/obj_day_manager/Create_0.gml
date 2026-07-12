item_sprite = noone;
order_fulfilled = false;
waiting = false;
enum NPC_STATE {
	ENTER,
	INTRO_DIALOGUE,
	PLACE_ORDER,
	WAIT_FOR_ORDER,
	OUTRO_DIALOGUE,
	EXIT
}

current_state = NPC_STATE.ENTER

//THIS IS TEMPORARY, THIS NEEDS TO CHANGE

// get the npc

function load_npcs() {
	var file_name = "npc_data.json"
	if (file_exists(file_name))
	{
		var buffer = buffer_load(file_name);
		var json_string = buffer_read(buffer, buffer_string); 
		buffer_delete(buffer);
		all_data = json_parse(json_string);
		npc_info = all_data[$ "npc_info"];
		day  = all_data[$ "day1"][0];
	} else {
		show_message("uhh.. I couldn't find the npc_data.json file. we're cooked.")
	}
}

load_npcs();



name_and_sprite_info =  npc_info[$ day[$ "id"]]
window_sprite_name = name_and_sprite_info[$ "window_sprite"];
chat_sprite_name = name_and_sprite_info[$ "chat_sprite"];

global.current_npc.name = name_and_sprite_info[$ "name"];
global.current_npc.intro_text = day[$ "intro_text"];
global.current_npc.outro_text = day[$ "outro_text"];
global.current_npc.window_sprite = asset_get_index(window_sprite_name);
global.current_npc.chat_sprite = asset_get_index(chat_sprite_name)




//layer_sequence_create("Assets_2", x, y, seq_npc_enter)
//THIS ALL NEEDS TO BE PLACED SOMEWHERE ELSE

current_npc_index = 0





