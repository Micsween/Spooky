// Get the total number of sprites currently in the array (works for 1 to 4)
var _total_sprites = array_length(order);

// Loop through the array and draw each sprite
for (var i = 0; i < _total_sprites; i++) {
    var _offset_x = x + (i * 84); 
	draw_sprite_ext(order[i], 1, _offset_x, y, 5, 5, 0,c_white, 1)
}