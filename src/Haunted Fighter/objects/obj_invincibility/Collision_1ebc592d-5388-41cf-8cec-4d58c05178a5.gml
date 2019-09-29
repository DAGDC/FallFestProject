/// @description Give invincibility when collided with star
invtime = 10; // Time in seconds before power up is disabled
obj_player.invincible = true;
instance_destroy();

obj_player.alarm[0] = invtime*room_speed;
