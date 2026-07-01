// Advance typewriter
if (char_count < string_length(current_text)) {
    char_count += text_speed;
}

// Skip to end of current line on input (e.g. space or mouse click)
if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
    if (char_count < string_length(current_text)) {
        char_count = string_length(current_text);  // Finish line instantly
    } else if (current_line < line_count) {
        // Go to next line
        current_line++;
        current_text = string_wrap(text[current_line], max_width);
        char_count = 0;
    } else {
        // End of dialogue - destroy instance or close box
        instance_destroy();
    }
}