/// @description Spawn Enemy

unspawned = true;

if (instance_number(obj_invincibility) < 1) {
			
	instance_create_depth(x, y, depth, obj_invincibility);
								
			
}

x = irandom_range(0, room_width);
y = irandom_range(0, room_height);
