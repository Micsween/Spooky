function grab_item(item, sound) {
	global.item_held = item
	audio_play_sound(sound, 100, 0)
	with(obj_hand){
		visible = true
		sprite_index = global.item_held
	}
	
}

function trash_item(sound) {
	if (global.chatting) {
		return
	}
	grab_item(noone, sound);
}



function interact(item_sprite, sound) {
	if (global.chatting){
		return
	}
	if (global.item_held == noone) {
		grab_item(item_sprite, sound);
	} else if (global.item_held == item_sprite){
		trash_item(sound);
	}
}