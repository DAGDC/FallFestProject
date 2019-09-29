/// @description Toggle full screen

if (room = roo_credits) {
	
	room = roo_menu;	
	
}
else {
	if (window_get_fullscreen()) {
	
		window_set_fullscreen(false);	
	
	} else {
	
		window_set_fullscreen(true);	
	
	}
}