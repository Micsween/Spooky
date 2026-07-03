show_debug_message("=== STOVE CLICK ===");
show_debug_message("item_held = " + string(global.item_held));
show_debug_message("has_hot_dog = " + string(has_hot_dog));
if(global.item_held == raw_hot_dog and not has_hot_dog){
	global.item_held = noone;
	has_hot_dog = true;
} else if (global.item_held == noone and has_hot_dog)  {

	global.item_held = spr_hot_dog
	has_hot_dog = false;

}
else if(global.item_held == spr_bun and has_hot_dog){
	global.item_held = spr_hot_dog_and_bun;
	has_hot_dog = false;
}




//if (global.item_held == spr_bun and has_hot_dog) {
	
//	global.item_held = item_sprite;
//	has_hot_dog = false;
	
//} else 
// if the held item is a bun and the grill has a hot dog, 
// replace the global.item_held with spr_hot_dog_and_bun

//if the held item is a raw_hot dog and grill does not have a hot dog:
// set held item to noone:
//play a sizzle sounds
// count to 3s
//
// 