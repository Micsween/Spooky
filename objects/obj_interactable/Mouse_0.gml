if (item != noone && item_sprite != noone) {
    
    var pickup = instance_create_depth(mouse_x, mouse_y - 40, depth - 10, obj_hand);
    
    pickup.sprite_index = item_sprite;
    pickup.image_xscale = 1.8;
    pickup.image_yscale = 1.8;
    
    // Add to inventory
   // global.inventory_add(item, item_sprite);
}