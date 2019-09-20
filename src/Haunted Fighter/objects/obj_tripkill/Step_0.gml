/// @description Fade In and Out
fade_time = 1 // In seconds
if (!faded) {
	if (image_alpha < 1) {
			
		image_alpha += 1/(fade_time*room_speed);
				
	}
	else {
	
		faded = true;
		fading = true;
		image_alpha = 1;
	
	}
}
if (faded) {
	if (image_alpha > 0) {
			
		image_alpha -= 1/(fade_time*room_speed);
				
	}
	else {
	
		instance_destroy();
	
	}
}




