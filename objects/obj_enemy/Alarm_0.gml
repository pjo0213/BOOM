path_delete(path);
path = path_add();

target_x = obj_player.x;
target_y = obj_player.y;

mp_grid_path(obj_control.grid, path, x, y, target_x, target_y, true);

path_start(path, 5, path_action_stop, true);

alarm_set(0, 1);
