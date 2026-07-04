
if (global.item_held != noone) {
	global.item_held = item_sprite;
	audio_play_sound(sound_complete_order, 100, false)
}