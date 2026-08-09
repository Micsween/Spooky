draw_set_color(c_black);
draw_set_alpha(fade_alpha);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

if display_message != "" and show_text {
		draw_set_font(fnt_Chat_Box_Font);
		draw_set_color(c_white);
	
		draw_set_alpha(fade_alpha);	

		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(display_get_gui_width() / 2,  display_get_gui_height() / 2, display_message);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_alpha(1)

}