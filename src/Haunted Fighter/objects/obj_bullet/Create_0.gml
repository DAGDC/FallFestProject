/// @description Define Bullet Properties
range = 500; // How far the bullet can travel before falling to the ground (disappearing)
speed = 10;
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;