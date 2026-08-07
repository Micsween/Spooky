if object_in_window {
	if WINDOW_X_LEFT >= mouse_x and WINDOW_X_LEFT + 100 >= mouse_x and WINDOW_Y + 400 >= mouse_y {
		layer_sequence_play(sequence_id)
	}
}