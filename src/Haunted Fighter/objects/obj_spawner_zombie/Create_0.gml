/// @description Define initial movement and spawning timers
randomize();
alarm[0] = irandom_range(0.001*room_speed, 5*room_speed); // Enemy Generation
//alarm[1] = irandom_range(10*room_speed, 30*room_speed); // Replacement of spawner
/*x = irandom_range(0, room_width);
y = irandom_range(0, room_height);