

if current_char == 0 {

	update_name_and_sound();
}

if not_done_printing_line() {
    current_char += text_speed;
} else{
	audio_stop_sound(sound)
	audio_stop_sound(snd_default_dialogue)
}

if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
   if not_done_printing_line() {
		end_line();
	
    } 
    else if out_of_text() {
		move_to_next_line();
    } 
    else {
		dialogue_finished = true
		audio_stop_sound(sound)
		audio_stop_sound(snd_default_dialogue)
        alarm[0] = 1 //wait a frame, and then die
		
    }
}




function not_done_printing_line(){
	return current_char < string_length(current_text)
}

function out_of_text(){
	return current_line < array_length(text) - 1
}

function move_to_next_line(){
	    current_line++;
        current_text = text[current_line];
        current_char = 0;
		audio_stop_sound(sound)
		audio_stop_sound(snd_default_dialogue)
}

function end_line() {
	 current_char = string_length(current_text);
	 audio_stop_sound(sound)
}