// Create Event of obj_fade

fade_alpha = 0;
state = "fade_in";
target_room = room;

// Apply passed values safely
if (variable_struct_exists(self, "room_destination")) {
    target_room = room_destination;
}

if (variable_struct_exists(self, "fade_speed")) {
    fade_speed = fade_speed;   // use the passed value
} else {
    fade_speed = 0.025;        // default speed
}