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
current_day_list = ["me"]
function load_npcs() {
	var file_name = "npc_data.json"
	if (file_exists(file_name))
	{
		var buffer = buffer_load(file_name);
		var json_string = buffer_read(buffer, buffer_string); 
		buffer_delete(buffer);
		current_day_list = json_parse(json_string);
	} else {
		show_message("uhh.. I couldn't find the npc_data.json file. we're cooked.")
	}
}
load_npcs();
global.current_npc = current_day_list[0]



//layer_sequence_create("Assets_2", x, y, seq_npc_enter)
//THIS ALL NEEDS TO BE PLACED SOMEWHERE ELSE

current_npc_index = 0





