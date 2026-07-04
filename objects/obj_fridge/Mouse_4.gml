
if (global.item_held == noone) {
	global.item_held = item_sprite;
	audio_play_sound(snd_open_fridge, 100, false);
	with(obj_hand){
		visible = true
		sprite_index = global.item_held
	}
}

