/// @description Destroy When Outside Room
score += power(kills, 2)*100;
instance_destroy();
if (kills == 2) {
	if (!doubcreated) {
			
		instance_create_depth(x, y, -500, obj_doubkill)
		doubcreated = true;
			
	}
		
}
else if (kills >= 3) {
		
	if (!tripcreated) {
			
		instance_create_depth(x, y, -1000, obj_tripkill)
		tripcreated = true;
			
	}
		
}
instance_destroy();