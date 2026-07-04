  var _cam = view_camera[0];
  var _cam_w = camera_get_view_width(_cam);
  var _cam_h = camera_get_view_height(_cam);
  var _cam_x = camera_get_view_x(_cam);
  var _cam_y = camera_get_view_y(_cam);

  var _dead_zone_w = 700; 

  var _cam_center_x = _cam_x + _cam_w / 2;
  var _dz_left  = _cam_center_x - _dead_zone_w / 2;
  var _dz_right = _cam_center_x + _dead_zone_w / 2;

  var _target_x = _cam_x;

  if (mouse_x < _dz_left) {
      _target_x = _cam_x - (_dz_left - mouse_x);
  } else if (mouse_x > _dz_right) {
      _target_x = _cam_x + (mouse_x - _dz_right);
  }

  _cam_x = lerp(_cam_x, _target_x, 0.05);

  _cam_x = clamp(_cam_x, 0, room_width - _cam_w);

  camera_set_view_pos(_cam, _cam_x, _cam_y);


