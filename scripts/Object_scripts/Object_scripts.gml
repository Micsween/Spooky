function room_goto_fade(target_room, fade_spd = 0.025) {
    instance_create_depth(0, 0, -10000, fade, {
        room_destination : target_room,
        fade_speed : fade_spd
    });
}