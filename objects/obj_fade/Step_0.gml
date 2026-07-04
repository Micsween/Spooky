
show_debug_message("Fade State: " + state + " | Alpha: " + string(fade_alpha));

if (state == "fade_in") {
    fade_alpha += fade_speed;
    
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        show_debug_message("Fading in complete - Going to room: " + room_get_name(target_room));
        room_goto(target_room);
        state = "fade_out";
    }
} 
else if (state == "fade_out") {
    fade_alpha -= fade_speed;
    
    if (fade_alpha <= 0) {
        fade_alpha = 0;
        instance_destroy();
    }
}

show_debug_message(fade_speed)