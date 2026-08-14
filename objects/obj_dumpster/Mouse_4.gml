
if can_toss_garbage_bag() {
	grab_item(noone, snd_complete_order);
	trash_bags_dumped +=1
	if trash_bags_dumped == 2 {
		handle_finish_cleaning()
		instance_destroy()
	}

}

function can_toss_garbage_bag(){
	return global.item_held == spr_trash_bag and not global.chatting
}