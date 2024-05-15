/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_escape)){
	game_end();
}

if (keyboard_check_pressed(vk_enter)){
	switch (room){
		case (rm_title):
			room_goto(rm_game);
			break;
		
		case (rm_lose):
			game_restart();
			break;
			
	}
}

if (room == rm_game and ticks == 0 and instance_number(obj_enemy) == 0){
	wave++;
	ticks = wave;
}

//if (room == rm_game){
//	mp_grid_clear_all(grid);
	
//	mp_grid_add_instances(grid, obj_wall_type, true);
//}