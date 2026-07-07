
    seq_element = layer_sequence_create("Assets_1", x, y, seq_npc);
    show_debug_message("Sequence created. Element ID: " + string(seq_element));
    show_debug_message("Is sequence valid? " + string(layer_sequence_exists("Assets_1", seq_element)));
	show_debug_message("X Scale: " + string(layer_sequence_get_xscale(seq_element)));
    show_debug_message("Y Scale: " + string(layer_sequence_get_yscale(seq_element)));
 
	show_debug_message("Current sequence x: " + string(layer_sequence_get_x(seq_element)));
        show_debug_message("Current sequence y: " + string(layer_sequence_get_y(seq_element)));
	    layer_sequence_play(seq_element);           // THIS is what "calls" it
    layer_sequence_speedscale(seq_element, 1.0);
    // layer_sequence_headpos(seq_element, 0);  // Reset to start if needed
