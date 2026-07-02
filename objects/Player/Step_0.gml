
  if (held_item != noone) {
      var _gui_w = display_get_gui_width();
      var _gui_h = display_get_gui_height();
      draw_sprite(held_item, 0, _gui_w - 64, _gui_h - 64);
  }