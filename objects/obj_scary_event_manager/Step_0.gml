if object_in_window {
	if WINDOW_X_LEFT >= mouse_x and WINDOW_X_LEFT + 100 >= mouse_x and WINDOW_Y + 400 >= mouse_y {
		layer_sequence_play(sequence_id)
	}
}
//THINK OF A WAY TO USE SHADOW_CREATED HERE AN REUSE THE VARIABLE

if can_show_object_behind_van() {
	cam_cx = camera_get_view_x(view_camera) + (camera_get_view_width(view_camera) / 2);
	show_debug_message(cam_cx)
	if (cam_cx < 1200) { //previously 1380
        //play the current sequence  thats paused
		layer_sequence_play(global.current_sequence)
		show_debug_message("I created the guy!")
        shadow_created = true;
    }
}

function can_show_object_behind_van(){
	//basically
	//if the player is outside
	//its the first day
	//the player is ending the day
	// and you haven't played this animation yet
	//then you can play the animation.
	return room == rm_outside_van and global.current_game_day == 1 and global.current_day_state == DAY_STATE.END_DAY and not shadow_created
}