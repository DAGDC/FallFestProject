/// @description Define player movement, collisions, along with lives and death

spd = 5; // Movement speed

// Movement Variables
hspd = max(keyboard_check(vk_right), keyboard_check(ord("D"))) - max(keyboard_check(vk_left), keyboard_check(ord("A")))
vspd = max(keyboard_check(vk_down), keyboard_check(ord("S"))) - max(keyboard_check(vk_up), keyboard_check(ord("W")))

// Move based on above defined speeds above if no collisions

if (!place_meeting(obj_collision, x + sign(hspd)*spd, y)) {
	
	x += hspd*spd;
	
}
else {
	
	while (!place_meeting(obj_collision, x + sign(hspd), y)) {
		
		x += sign(hspd);	
		
	}
	
}

if (!place_meeting(obj_collision, x, y + sign(vspd)*spd)) {
	
	y += vspd*spd;
	
}
else {
	
	while (!place_meeting(obj_collision, x, y + sign(vspd))) {
		
		y += sign(vspd);	
		
	}
	
}
/* Shooting now handled in obj_bow

// Shoot if mouse pressed and if canshoot = true
cooldown = 0.5; // Time in seconds of cooldown before being able to shoot again

if (mouse_check_button(mb_left)) {
	
	if (canshoot) {
		
		instance_create_depth(x, y, depth + 1, obj_bullet);	
		canshoot = false;
		alarm[0] = cooldown*room_speed;
		
	}
	
}*/