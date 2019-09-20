/// @description Fade Ghost And Move Towards Player
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

//pulse_speed = 10;

player_direction = point_direction(x, y, obj_player.x, obj_player.y);

hspd = lengthdir_x(3, player_direction);
vspd = lengthdir_y(3, player_direction);

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
	//move_towards_point(obj_player.x, obj_player.y, 3);
	if (!place_meeting(x + hspd, y, obj_ghost)) {
	
		x += hspd;
	
	}
	else {
	
		while (!place_meeting(x + sign(hspd), y, obj_ghost)) {
		
			x += sign(hspd);	
		
		}
	
	}

	if (!place_meeting(x, y + vspd, obj_ghost)) {
	
		y += vspd;
	
	}
	else {
	
		while (!place_meeting(x, y + sign(vspd), obj_ghost)) {
		
			y += sign(vspd);	
		
		}
	
	}
}

image_xscale = -sign(hspd);



