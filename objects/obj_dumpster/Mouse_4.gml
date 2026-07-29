if global.item_held == spr_trash_bag {
	grab_item(noone, snd_complete_order);
	with(obj_day_manager) {
		current_day_state = DAY_STATE.END_DAY
	}
}