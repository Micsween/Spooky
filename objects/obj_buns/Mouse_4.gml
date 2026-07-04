
if (global.item_held == noone) {
	audio_play_sound(sound_bun_bag, 100, 0)
	global.item_held = spr_bun;

	
} else if (global.item_held == spr_hot_dog){
	audio_play_sound(sound_bun_bag, 100, 0)
	global.item_held = spr_hot_dog_and_bun;
	
}