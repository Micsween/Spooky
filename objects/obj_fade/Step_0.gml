

if (state == "fade_in") {
    fade_alpha += fade_speed;
    
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        state = "fade_wait";
    }
} 
else if (state == "fade_out") {
    fade_alpha -= fade_speed;
    
    if (fade_alpha <= 0) {
        fade_alpha = 0;
        instance_destroy();
    }
}else if (state == "fade_wait") {
	current_wait += delta_time / 1000000
	if (current_wait > wait){
		state = "fade_out"
		room_goto(target_room);
	}

}
