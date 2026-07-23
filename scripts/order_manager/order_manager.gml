function create_order(){
	randomize();
	soda_options = [spr_blue_soda, spr_pink_soda]
	hot_dog_options = [spr_hot_dog_and_bun, spr_hot_dog_ketchup, spr_hot_dog_mustard, spr_hot_dog_ketchup_and_mustard]
	chip_options = [spr_blue_sun_chips, spr_yellow_sun_chips]
	cookie_options = [spr_chocolate_chip_cookie, spr_brownie_cookie]


	soda_i = irandom(1)
	hd_i = irandom(3)
	chip_i = irandom(1)
	cookie_i = irandom(1)


	instance_create_layer(1965, 192, "Instances", obj_order, {
		soda: soda_options[soda_i],
		hot_dog: hot_dog_options[hd_i],
		chips: chip_options[chip_i], 
		cookie: cookie_options[cookie_i]} )
}


function complete_order() {
	instance_destroy(obj_order)
}

