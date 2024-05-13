z = depth;
depth = 0;

move = use_tdmc();

xspeed = 0;
yspeed = 0;

path = path_add();

target_x = obj_player.x;
target_y = obj_player.y;

alarm[0] = 1;
