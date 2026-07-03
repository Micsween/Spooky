
if (global.item_held == noone) {
	global.item_held = item_sprite;
	
	with(obj_hand){
		visible = true
		sprite_index = global.item_held
	}
} else if (global.item_held == spr_hot_dog){
	global.item_held = spr_hot_dog_and_bun;
}