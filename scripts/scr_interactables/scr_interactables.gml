function grab_item(item, sound) {
	global.item_held = item
	audio_play_sound(sound, 100, 0)
	with(obj_hand){
		visible = true
		sprite_index = global.item_held
	}
	
}

function trash_item(sound) {
	if (global.chatting) or global.item_held == spr_trash_bag {
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

function pickup_trash_bag() {
	grab_item(spr_trash_bag, snd_complete_order)
}

function held_item_can_be_thrown_away() {
	return  global.item_held != noone and global.item_held != spr_trash_bag
}
function handle_trash() {
	if held_item_can_be_thrown_away() {
		trash_item(sound)
	} else if global.current_day_state == DAY_STATE.CLEANING_UP {
		pickup_trash_bag()
}
}
