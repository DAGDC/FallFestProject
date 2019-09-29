/// @description Kill ghost and take away lives
if (faded) {
	
	if (!obj_player.invincible) {
		
		lives -= 1;
		instance_destroy();
		
	
	}
	else {
	
		x -= 30*hspd;
		y -= 30*vspd;
		while (place_meeting(x, y, obj_ghost)) {
			
			x -= sign(hspd);	
			y -= sign(vspd);	
			
		}
	
	}

}