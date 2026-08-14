total_width = btn_w * 2 + gap;
start_x = (display_get_gui_width() - total_width) / 2;
btn_y = display_get_gui_height() * 0.75 - btn_h / 2;

yes_x = start_x;
no_x = start_x + btn_w + gap;

draw_set_color(c_black);
draw_roundrect_ext(yes_x, btn_y, yes_x + btn_w, btn_y + btn_h, btn_radius, btn_radius, false);
draw_roundrect_ext(no_x, btn_y, no_x + btn_w, btn_y + btn_h, btn_radius, btn_radius, false);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(fnt_options);
draw_text(yes_x + btn_w / 2, btn_y + btn_h / 2, "YES");
draw_text(no_x + btn_w / 2, btn_y + btn_h / 2, "NO");

draw_set_halign(fa_left);
draw_set_valign(fa_top);