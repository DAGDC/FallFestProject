/// @description Fade Ghost And Move Towards Player
fade_time = 1 // In seconds
if (!faded) {
	if (image_alpha < 1) {
			
		image_alpha += 1/(fade_time*room_speed);
				
	}
	else {
	
		faded = true;
		fading = true;
		image_alpha = 0.5;
	
	}
}

//pulse_speed = 10;

if (faded) {
	
	/*if (fading) {
		
		image_alpha -= 1/(pulse_speed*room_speed);	
		if (image_alpha <= 0.5) {
			
			fading = false;
			
		}
		
	}
	else {
		
		image_alpha += 1/(pulse_speed*room_speed);
		if (image_alpha >= 1) {
			
			fading = true;	
			
		}
		
	}*/
	move_towards_point(obj_player.x, obj_player.y, 3);
}




