/// @description Fade Ghost And Move Towards Player
fade_time = 1 // In seconds
if (image_alpha < 1) {
	
	if (!faded) {
		
		image_alpha += 1/(fade_time*room_speed);
		
	}
	
}
else {
	
	faded = true;
	fading = true;
	
}

pulse_speed = 1;

if (faded) {
	
	if (fading) {
		
		image_alpha -= 1/(pulse_speed*room_speed);	
		if (image_alpha >= 0.5) {
			
			fading = false;
			
		}
		
	}
	else {
		
		image_alpha += 1/(pulse_speed*room_speed);
		if (image_alpha < 1) {
			
			fading = true;	
			
		}
		
	}
	
}