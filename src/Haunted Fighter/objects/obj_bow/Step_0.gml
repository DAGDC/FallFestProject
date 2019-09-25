/// @description Bow Operations
if (mouse_check_button(mb_left)) {
	
	if (!pulled) {
		
		image_speed = 1.5;
	
	}
	
}
else {
	
	if (pulled) {
		
		image_speed = -1;
		if (!shot) {
		
			instance_create_depth(x, y, depth + 1, obj_arrow);
			
			// Tri-shot stuff I was messing around with
			
			if (false) {
				
				arrow_1 = instance_create_depth(x, y, depth + 1, obj_arrow);
				
				with (arrow_1) {
					
					direction += 30;
					image_angle = direction;
					
				}
				arrow_2 = instance_create_depth(x, y, depth + 1, obj_arrow);
				
				with (arrow_2) {
					
					direction -= 30;
					image_angle = direction;
					
				}
				
			}
			
			shot = true;
		
		}
		
	}
	
}

player_relative_direction = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;

xDisp = 25; // Vertical maximum distance from player
yDisp = 50;// Horizontal maximum distance from player

//x = obj_player.x + lengthdir_x(xDisp, direction);
if ((player_relative_direction > 0 && player_relative_direction < 90) || player_relative_direction > 270) {
	
	x = obj_player.x + xDisp;
	
}
else {
	
	x = obj_player.x - xDisp;	
	
}
//y = obj_player.y + lengthdir_y(yDisp, direction);
y = obj_player.y;
depth = obj_player.depth - 1;