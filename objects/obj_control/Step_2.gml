/// @description Checks for each room
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

//Wave system implementation
if (room == rm_game and ticks == 0 and instance_number(obj_enemy) == 0){
	wave++;
	ticks = wave;
}
