
  if (held_item == noone && mouse_check_button_pressed(mb_left)) {
      var _fridge = instance_position(mouse_x, mouse_y, obj_fridge);
      if (_fridge != noone && point_distance(x, y, _fridge.x, _fridge.y) <= 32) {
          held_item = spr_can; // separate single-can sprite, not the fridge sprite
      }
  }

  // Use
  if (held_item != noone && keyboard_check_pressed(ord("F"))) {
      // TODO: actual use effect goes here later
      held_item = noone;
  }

  if (held_item != noone) {
      var _gui_w = display_get_gui_width();
      var _gui_h = display_get_gui_height();
      draw_sprite(held_item, 0, _gui_w - 64, _gui_h - 64);
  }