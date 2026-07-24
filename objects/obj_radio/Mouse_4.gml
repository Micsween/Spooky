if (global.chatting) {
	return
}
if(playing_music){
	audio_stop_sound(music);
	playing_music = false;
}else {
	audio_play_sound(music, 100, true)
	playing_music = true;
}
