/// @description Initialization of generic enemy

z = depth;
depth = 0;

xspeed = 0;
yspeed = 0;

path = path_add();

target_x = obj_player.x;
target_y = obj_player.y;

alarm[0] = 1;

enemy_speed = 5;

enemy_health = 10;

hit = false;

attack = false;