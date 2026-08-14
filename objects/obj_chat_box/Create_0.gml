dialogue_finished = false      
global.chatting = true
current_line = 0; 
current_char = 0;
max_width = 1000;
text_x = 300;
text_y = 500;
current_name = "You"

current_text = text[0]; 	
function update_name_and_sound() {
	
	first_char = string_copy(current_text, 0, 2);
	if (first_char == "N:") {
		current_text = string_delete(current_text, 0, 3);
		current_name  = global.current_npc.name
		audio_play_sound(sound, 100, repeats)
	} else if first_char == "P:" {
		current_text = string_delete(current_text, 0, 3);
		current_name = "You"
		audio_play_sound(snd_default_dialogue, 100, repeats)
	} else if first_char == "CH" {
		on_complete = create_choice()
		instance_destroy()
	}
	
}
//update_name_and_sound()