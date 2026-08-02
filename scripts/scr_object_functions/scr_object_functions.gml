/// room_goto_fade(target_room, fade_spd);
/// fades in and out at the provided rate into the provided room
function room_goto_fade(target_room, fade_spd = 0.025) {
    instance_create_depth(0, 0, -10000, obj_fade, {
        room_destination : target_room,
        fade_speed : fade_spd
    });
}

