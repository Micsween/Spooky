with(obj_order) {
	if array_contains(order, global.item_held) {
		item_index = array_find_index(order, equals);
		array_delete(order, item_index, 1);
		global.item_held = noone;
		audio_play_sound(snd_complete_order, 100, false);
	} else {
		audio_play_sound(snd_wrong_order, 100, false);
	}
}

function equals(value, index) {
	return global.item_held == value
}
