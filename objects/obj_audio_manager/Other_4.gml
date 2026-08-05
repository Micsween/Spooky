	audio_stop_all();
switch(room){
	case rm_starting_menu:
		//audio_play_sound(snd_menu_music, 100, true);
		break;
	case rm_starting_cutscene:
		//audio_play_sound(sound,100, true);
		break;
	case rm_hot_dog_van:
		audio_play_sound(snd_fridge_hum, 70, true)

		break;
	case rm_outside_van:
		audio_play_sound(snd_van_ambience, 100, true);
		//pick some outdoor noises
		break;
	
}