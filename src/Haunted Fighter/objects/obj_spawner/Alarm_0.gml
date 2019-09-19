/// @description Spawn Enemy
if (instance_number(obj_ghost) < 10) {
	
	instance_create_layer(x, y, layer_get_id("Enemies"), obj_ghost);
	alarm[0] = irandom_range(0.001*room_speed, 5*room_speed); // Reset Alarm

}