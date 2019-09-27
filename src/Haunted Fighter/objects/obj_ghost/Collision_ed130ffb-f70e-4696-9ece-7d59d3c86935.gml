/// @description Kill ghost and take away lives
if (faded) {
	
	if (!obj_player.invincible) {
		
		lives -= 1;
	
	}
	instance_destroy();

}