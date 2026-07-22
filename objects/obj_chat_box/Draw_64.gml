
draw_set_font(fnt_Chat_Box_Font);
draw_set_colour(c_white);
draw_set_halign(fa_left); 
draw_set_valign(fa_top);

draw_sprite_ext(spr_Chat_box, 0, 0, 0, 5, 5, 0, c_white, 1);
var visible_text = string_copy(current_text, 1, floor(current_char));

visible_text = string_replace_all(visible_text, "#", "\n");

draw_text_ext(text_x, text_y, visible_text, -1, max_width);


draw_text(70, 405, current_name);

if current_name != "You" {
	draw_sprite_ext(global.current_npc.chat_sprite,0,15,485,2,2,0,c_white,1)
}else {
	draw_sprite_ext(spr_player_boy,0,15,485,2,2,0,c_white,1)
}

