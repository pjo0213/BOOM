path_delete(path);
path = path_add();


if (!place_meeting(x, y, obj_player_col) and !hit){
	target_x = obj_player.x;
	target_y = obj_player.y;
		
}
else {
	target_x = x;
	target_y = y;
}


mp_grid_path(obj_control.grid, path, x, y, target_x, target_y, true);

path_start(path, 5, path_action_stop, true);

alarm_set(0, 1);
