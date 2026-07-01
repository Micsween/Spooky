if (item_sprite != noone && item_sprite != noone) {
    
	 if (instance_exists(global.held_hand)) {	
          instance_destroy(global.held_hand);
      }
  
	var pickup = instance_create_depth(mouse_x, mouse_y - 40, depth - 10, obj_hand);

	global.held_hand = pickup;
    pickup.sprite_index = item_sprite;
    pickup.image_xscale = 6;
    pickup.image_yscale = 6;
 
    // Add to inventory
   // global.inventory_add(item, item_sprite);
}