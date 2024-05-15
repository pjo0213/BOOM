//if (!place_meeting(x, y, obj_player_col) and !hit){
//	attack = false;
//	target_x = obj_player.x;
//	target_y = obj_player.y;
		
//}
//else {
//	attack = true;
//	//target_x = x;
//	//target_y = y;
//}

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

//if (!attack){
//	path = path_add();

//	mp_grid_path(obj_control.grid, path, x, y, target_x, target_y, true);

//	path_start(path, 5, path_action_stop, true);
//}


alarm_set(0, 1);