/// @description Stop Animation When Bow is pulled back or released
if (!pulled) {
	
	image_speed = 0;
	image_index = 2;
	pulled = true;
	if (mouse_check_button(mb_left)) {
		
		shot = false;
		
	}
	
}
else {	
	
		image_speed = 0;
		image_index = 0;
		pulled = false;
	
}