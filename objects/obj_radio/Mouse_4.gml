if(playing_music){
	audio_stop_sound(snd_radio_music_1);
	playing_music = false;
}else {
	audio_play_sound(snd_radio_music_1, 100, true)
	playing_music = true;
}
