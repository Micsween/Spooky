// Draw GUI Event

draw_set_font(fnt_Chat_Box_Font);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw the textbox background
draw_sprite_ext(spr_Chat_box, 0, 0, 0, 5, 5, 0, c_white, 1);

// Get only the typed portion
var visible_text = string_copy(current_text, 1, floor(char_count));
show_debug_message(visible_text)
// Draw the text with proper wrapping

visible_text = string_replace_all(visible_text, "#", "\n");

draw_text_ext(text_x, text_y, visible_text, -1, max_width);

draw_text(text_x + 25, 465,name[current_line]);
//draw_set_font(Chat_Box_Font);
//draw_set_colour(c_white);
//draw_set_halign(fa_left);
//draw_set_valign(fa_top);

//draw_sprite_ext(spr_Chat_box, 0, 0, 0, 5, 5, 0, c_white, 1);

//var visible_text = string_copy(current_text, 1, floor(char_count));

//visible_text = string_replace_all(visible_text, "#", "\n");

//draw_text_ext(50, 420, visible_text, -1, 600);   // Hardcoded for testing