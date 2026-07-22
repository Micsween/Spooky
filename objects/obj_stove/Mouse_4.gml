
if(global.chatting){
	return;
}

if(can_place_dog()){
	global.item_held = noone;
	has_hot_dog = true;
	audio_play_sound(snd_stove_sizzle, 100, 0)
	alarm[0] = 240
	with(obj_sizzle_paticle_effect) {
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
	audio_stop_sound(snd_stove_sizzle);

} 


