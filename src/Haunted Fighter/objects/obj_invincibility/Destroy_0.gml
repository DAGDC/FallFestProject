/// @description Reset Spawn Alarm
obj_invincibility_spawner.alarm[0] = irandom_range((8*room_speed)*(floor(score/50000) + 1), (20*room_speed)*(floor(score/50000) + 1)); // Reset Alarm
