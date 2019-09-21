/// @description Define Arrow Properties
range = 500; // How far the arrow can travel before falling to the ground (disappearing)
speed = power(power((lengthdir_x(10, direction) + obj_player.hspd), 2) +  power((lengthdir_y(10, direction) + obj_player.vspd), 2), 0.5);
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;
//speed = 10;
kills = 0;
initialx = x;
initialy = y;
doubcreated = false;
tripcreated = false;