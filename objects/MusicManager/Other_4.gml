
switch(room){
	case menu:
		audio_stop_all();
		audio_play_sound(menu_music, 100, true);
		break;
	case hot_dog_van:
		audio_stop_all();
		audio_play_sound(sound_fridge_hum, 70, true)
		audio_play_sound(sound_van_ambience, 100, true);
		break;
	
}