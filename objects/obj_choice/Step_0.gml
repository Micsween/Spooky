if (mouse_check_button_pressed(mb_left)) {
	show_debug_message("left pressed")
	var total_width = btn_w * 2 + gap;


	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	show_debug_message(mx)
	show_debug_message(my)


	if (point_in_rectangle(mx, my, yes_x, btn_y, yes_x + btn_w, btn_y + btn_h)) {
		
		create_textbox(global.npc_json[$  "day" + string(global.current_game_day)][global.current_npc_index][$ "YES"], function(){
			 set_state_exit()
			show_debug_message("This is showing that YES worked")
			//set the flag for day 3 because endings vary depending on what choice you pick here
		})
	    show_debug_message("YES clicked");
		instance_destroy()
	} else if (point_in_rectangle(mx, my, no_x, btn_y, no_x + btn_w, btn_y + btn_h)) {
	    show_debug_message("NO clicked");
		create_textbox(global.npc_json[$  "day" + string(global.current_game_day)][global.current_npc_index][$ "NO"], function() {
			 set_state_exit()
			show_debug_message("This is showing that NO worked")
		})
		instance_destroy()
	}
    
}