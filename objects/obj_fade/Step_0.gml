

if (state == "fade_in") {
    fade_alpha += fade_speed;
    
    if (fade_alpha >= 1) {
        fade_alpha = 1;
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
