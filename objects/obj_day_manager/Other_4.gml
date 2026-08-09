if room == rm_hot_dog_van and global.current_day_state = DAY_STATE.WORKING {
	if global.current_game_day == 2 {
		shadow_in_window()
	}
	obj_id = instance_create_layer(1602,167,"Instances", obj_order_manager)
	with(obj_id){
		image_xscale = 5.015625
		image_yscale = 4.875
	}
	
}
if room == rm_hot_dog_van and global.current_day_state = DAY_STATE.END_DAY {
	alarm[0] = 60 // GO TO BED
}
if room == rm_sleeping {
	global.current_npc.chat_sprite = Radio
	global.current_npc.name = "Radio"
	//CHANGE THIS DIALOGUE

	 create_textbox(["N: ...locals are to be on the lookout for Annie Shapiro...",
	 "N: ...reported missing just a few hours ago...", "N: ...her description is as follows...",
	 "P: ...Wasn't that the name on the ID badge?" ], function() {
			alarm[1] = 100
	 })


}