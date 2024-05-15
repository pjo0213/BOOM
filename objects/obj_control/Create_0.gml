/// @description Initialization of control object
randomize();

health = 100;

if (room == rm_game){
	grid = mp_grid_create(0, 0, room_width/128, room_height/128,  128, 128);

	mp_grid_add_instances(grid, obj_wall, true);
}

wave = 1;

ticks = wave;