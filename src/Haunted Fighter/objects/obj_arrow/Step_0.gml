/// @description Destroy based on conditions
if (kills > 2 || distance_to_point(initialx, initialy) > range) {
	
	score += kills^2;
	instance_destroy();	
	
}

if (kills == 2) {
		if (!doubcreated) {
			
			instance_create_depth(x, y, -500, obj_doubkill)
			doubcreated = true;
			
		}
		
	}
	else if (kills == 3) {
		
		if (!tripcreated) {
			
			instance_create_depth(x, y, -1000, obj_tripkill)
			tripcreated = true;
			
		}
		
	}
range = 500 - 50*kills;