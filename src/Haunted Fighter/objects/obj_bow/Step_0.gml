/// @description Bow Operations
if (mouse_check_button(mb_left)) {
	
	if (!pulled) {
		
		image_speed = 2;
	
	}
	
}
else {
	
	if (pulled) {
		
		image_speed = -1;
		if (!shot) {
		
			instance_create_depth(x, y, depth + 1, obj_arrow);
			shot = true;
		
		}
		
	}
	
}

direction = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
image_angle = direction;

xDisp = 50; // Vertical maximum distance from player
yDisp = 50;// Horizontal maximum distance from player

x = obj_player.x + lengthdir_x(xDisp, direction);
y = obj_player.y + lengthdir_y(yDisp, direction);