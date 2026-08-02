if global.item_held == spr_trash_bag and global.current_state == DAY_STATE.CLEANING_UP {
	grab_item(noone, snd_complete_order);
	set_state_end_day()
}