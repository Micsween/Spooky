draw_self();

if (hover) {
    draw_set_color(border_color);
    draw_set_alpha(0.8);
    
    draw_rectangle(
        bbox_left - border_thickness,
        bbox_top - border_thickness,
        bbox_right + border_thickness,
        bbox_bottom + border_thickness,
        true
    );
    
    draw_set_alpha(1);
    draw_set_color(c_white);
}