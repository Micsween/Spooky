if held_item_can_be_thrown_away() {
		trash_item(sound)
} else if global.current_day_state == DAY_STATE.CLEANING_UP {
		create_textbox(["P: I should grab the garbage bag thats outside and throw it in the dumpster."])
}