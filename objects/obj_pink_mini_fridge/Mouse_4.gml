if (global.item_held == noone) {
	global.item_held = item_sprite;
	audio_play_sound(snd_grab_can, 100, 0)
	with(obj_hand){
		visible = true
		sprite_index = global.item_held
	}
}