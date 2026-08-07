if held_item_can_be_thrown_away() {
		trash_item(sound)
} else if global.current_day_state == DAY_STATE.CLEANING_UP {
		pickup_trash_bag()
		instance_destroy()
}