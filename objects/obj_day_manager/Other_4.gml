if room == rm_hot_dog_van and not global.finished_todays_orders {
	
	obj_id = instance_create_layer(1602,167,"Instances", obj_order_manager)
	with(obj_id){
		image_xscale = 5.015625
		image_yscale = 4.875
	}
} else if room  == rm_outside_van {
	if current_day_state == DAY_STATE.CLEANING_UP {
		alarm[1] = 100
	}
	
}
