item_sprite = spr_hot_dog;
has_hot_dog = false;
click_cooldown = 0;
hot_dog_done = false

function can_place_dog(){
	return global.item_held == raw_hot_dog and not has_hot_dog
}

function can_grab_from_stove() {
	return (global.item_held == noone or global.item_held == spr_bun) and has_hot_dog and hot_dog_done
}
