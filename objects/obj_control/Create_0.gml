/// @description Insert description here
// You can write your code in this editor

grid = mp_grid_create(0, 0, room_width/64, room_height/128,  16, 16);

mp_grid_add_instances(grid, obj_wall, false);
