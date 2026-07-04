
if (global.item_held == noone) {
	audio_play_sound(snd_bun_bag, 100, 0)
	global.item_held = spr_bun;
	with(obj_hand){
		visible = true
		sprite_index = global.item_held
	}

	
} else if (global.item_held == spr_hot_dog){
	audio_play_sound(snd_bun_bag, 100, 0)
	global.item_held = spr_hot_dog_and_bun;
	with(obj_hand){
		visible = true
		sprite_index = global.item_held
	}
	
}