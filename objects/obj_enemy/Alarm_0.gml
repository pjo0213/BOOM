/// @description Each enemy's pathfinding
if (path_exists(path)){
	path_delete(path);
}

if (!attack and !hit){
	target_x = obj_player.x;
	target_y = obj_player.y;

	path = path_add();

	if (mp_grid_path(obj_control.grid, path, x, y, target_x, target_y, true)){
		path_start(path, enemy_speed, path_action_stop, true);
	}
}
else {
	path_end();
}

alarm_set(0, 1);