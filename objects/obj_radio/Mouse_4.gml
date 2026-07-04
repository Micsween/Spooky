if(playing_music){
	audio_stop_sound(radio_music_1);
}else {
	audio_play_sound(radio_music_1, 100, true)
	playing_music = true;
}
