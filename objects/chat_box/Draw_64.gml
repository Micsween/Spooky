draw_set_font(Chat_Box_Font);  // Your font
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw the text box background first (sprite or rectangle)
draw_sprite_ext(spr_Chat_box, 0, 0, 0,5,5,0,c_white,1);

// Draw the current visible portion of text
var visible_text = string_copy(current_text, 1, floor(char_count));
draw_text_ext(text_x, text_y, visible_text, -1, max_width);