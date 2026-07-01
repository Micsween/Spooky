// Advance typewriter

// Typewriter effect
if (char_count < string_length(current_text)) {
    char_count += text_speed;
}

// Advance to next line or close
if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
    if (char_count < string_length(current_text)) {
        // Skip to end of current line
        char_count = string_length(current_text);
    } 
    else if (current_line < array_length(text) - 1) {
        // Go to next line
        current_line++;
        current_text = text[current_line];
        char_count = 0;
    } 
    else {
        // End of dialogue
        instance_destroy();
    }
}


//if (char_count < string_length(current_text)) {
//    char_count += text_speed;
//}

//// Skip to end of current line on input (e.g. space or mouse click)
//if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
//    if (char_count < string_length(current_text)) {
//        char_count = string_length(current_text);  // Finish line instantly
//    } else if (current_line < line_count) {
//        // Go to next line
//        current_line++;
//        current_text = string_wrap(text[current_line], max_width);
//        char_count = 0;
//    } else {
//        // End of dialogue - destroy instance or close box
//        instance_destroy();
//    }
//}

//if (char_count < string_length(current_text)) {
//    char_count += text_speed;
//}

//// When advancing to next line:
//if (keyboard_check_pressed(vk_space)) {
//    if (char_count >= string_length(current_text)) {
//        current_line++;
//        if (current_line <= array_length(text)-1) {
//            current_text = string_wrap(text[current_line], max_width);  // Wrap again
//            char_count = 0;
//        }
//    } else {
//        char_count = string_length(current_text); // skip
//    }
//}