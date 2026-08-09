global.chatting = false
if audio_is_playing(sound){
	audio_stop_sound(sound)
}

//if the obj order manager is there, and you're not finished with todays orders
//than you were talking to an npc
//and the order manager needs to move on
