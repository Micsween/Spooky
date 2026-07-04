
if (global.item_held == noone) {
	audio_play_sound(snd_cookies, 100, false);
	global.item_held = item_sprite;
	with(obj_hand){
		visible = true
		sprite_index = global.item_held
	}

}