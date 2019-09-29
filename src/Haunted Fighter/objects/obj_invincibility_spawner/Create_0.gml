/// @description Define initial movement and spawning timers
randomize();
alarm[0] = irandom_range(3*room_speed, 10*room_speed); // Enemy Generation
x = irandom_range(0, room_width);
y = irandom_range(0, room_height);