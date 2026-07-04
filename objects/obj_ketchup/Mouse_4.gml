
if (global.item_held == spr_hot_dog_and_bun) {
	global.item_held = item_sprite;
	audio_play_sound(snd_condiment_use, 100, false)
} else if(global.item_held == spr_hot_dog_mustard){
	global.item_held = spr_hot_dog_ketchup_and_mustard
	audio_play_sound(snd_condiment_use, 100, false)
}

