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
	}
}