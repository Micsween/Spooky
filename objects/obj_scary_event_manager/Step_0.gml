if object_in_window {
	if WINDOW_X_LEFT >= mouse_x and WINDOW_X_LEFT + 100 >= mouse_x and WINDOW_Y + 400 >= mouse_y {
		layer_sequence_play(sequence_id)
	}
}
//THINK OF A WAY TO USE SHADOW_CREATED HERE AN REUSE THE VARIABLE

if (global.current_game_day == 1 and global.current_day_state == DAY_STATE.END_DAY and not shadow_created) {
	cam_cx = camera_get_view_x(view_camera) + (camera_get_view_width(view_camera) / 2);
	cam_cy = camera_get_view_y(view_camera) + (camera_get_view_height(view_camera) / 2);
	if (point_distance(cam_cx, cam_cy, 320, 352) < 200) {
        create_shadow_by_van_outside();
        shadow_created = true;
    }
}