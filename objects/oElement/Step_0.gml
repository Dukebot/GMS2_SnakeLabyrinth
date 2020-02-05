if (sprite_index = sMovablePosition) {
	image_alpha += alphaInc;
	
	if (image_alpha > imageAlphaMax) {
		image_alpha = imageAlphaMax;
		alphaInc = -alphaInc;
	} else if (image_alpha < 0) {
		image_alpha = 0;
		alphaInc = -alphaInc;
	}
} else {
	image_alpha = 1;	
}