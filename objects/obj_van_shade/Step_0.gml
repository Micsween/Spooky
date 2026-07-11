
flicker_delay += delta_time / 1000000


if flicker_delay > 0.02{
	
	flicker_delay -= 0.02
	
	if irandom(1) = 1{
		image_alpha += random_range(0.01,0.015)
	}else{
		image_alpha -= random_range(0.01,0.015)
	}
	
	image_alpha = clamp(image_alpha,0.5,0.52)
}