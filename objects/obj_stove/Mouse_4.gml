

if(global.item_held == raw_hot_dog and not has_hot_dog){
	global.item_held = noone;
	has_hot_dog = true;
	audio_play_sound(sound_stove, 100, 0)
	
} else if (global.item_held == noone and has_hot_dog)  {
	global.item_held = spr_hot_dog
	has_hot_dog = false;
	audio_stop_sound(sound_stove)

} else if(global.item_held == spr_bun and has_hot_dog){
	global.item_held = spr_hot_dog_and_bun;
	has_hot_dog = false;
}




//if the held item is a raw_hot dog and grill does not have a hot dog:
// set held item to noone:
//play a sizzle sounds
// count to 3s
//
// 