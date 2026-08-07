
if global.item_held == spr_trash_bag and global.current_day_state == DAY_STATE.CLEANING_UP and not global.chatting {
	grab_item(noone, snd_complete_order);
	trash_bags_dumped +=1
	if trash_bags_dumped == 2 {
		handle_finish_cleaning()
	}
}
