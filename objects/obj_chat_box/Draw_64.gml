
draw_set_font(fnt_Chat_Box_Font);
draw_set_colour(c_white);
draw_set_halign(fa_left); 
draw_set_valign(fa_top);

draw_sprite_ext(spr_Chat_box, 0, 0, 0, 5, 5, 0, c_white, 1);
var visible_text = string_copy(current_text, 1, floor(current_char));

visible_text = string_replace_all(visible_text, "#", "\n");

draw_text_ext(text_x, text_y, visible_text, -1, max_width);

current_name = "PLACEHOLDER"
draw_text(45 + 25, 405, current_name);

if current_name != "you"{
	current_name = "you"
	draw_sprite_ext(global.current_npc.chat_sprite,0,30,480,2,2,0,c_white,1)
}else {
	draw_sprite_ext(spr_blue_soda,0,30,480,2,2,0,c_white,1)
}

