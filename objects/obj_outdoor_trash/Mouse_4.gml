if held_item_can_be_thrown_away() {
		trash_item(sound)
}else if global.item_held == spr_trash_bag {
	create_textbox(["P: This is my other trash can. I think the dumpster is at the end of this alley."])
}
else if global.current_day_state == DAY_STATE.CLEANING_UP {
		pickup_trash_bag()
		instance_destroy()
}