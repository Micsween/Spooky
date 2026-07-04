

//change this so you can only get a hot dog if the hot dog is done
if(can_place_dog()){
	global.item_held = noone;
	has_hot_dog = true;
	audio_play_sound(sound_stove, 100, 0)
	alarm[0] = 240
	with(obj_sizzle) {
		part_system_automatic_draw(partSys, true);
		}
} else if (can_grab_from_stove())  {
	if(global.item_held == noone){
		global.item_held = spr_hot_dog
	}else if(global.item_held == spr_bun){
		global.item_held = spr_hot_dog_and_bun
	}
	hot_dog_done = false;
	has_hot_dog = false;
	audio_stop_sound(sound_stove);

} 



//if the held item is a raw_hot dog and grill does not have a hot dog:
// set held item to noone:
//play a sizzle sounds
// count to 3s
//
// 