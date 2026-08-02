if room == rm_hot_dog_van and global.current_day_state = DAY_STATE.WORKING {
	
	obj_id = instance_create_layer(1602,167,"Instances", obj_order_manager)
	with(obj_id){
		image_xscale = 5.015625
		image_yscale = 4.875
	}
	
}
if room == rm_hot_dog_van and global.current_day_state = DAY_STATE.END_DAY {
	alarm[0] = 130 // GO TO BED
}