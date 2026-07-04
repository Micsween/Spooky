
if (global.item_held != noone) {
	global.item_held = item_sprite;
	audio_play_sound(snd_garbage_use, 100, false)
}