/// @description All checks for easy enemy's states
event_inherited();

if (place_meeting(x, y, obj_player_col)){
	attack = true;
}
else {
	attack = false;
}

if (!hit){
	if (attack){
		if (alarm[2] <= 0){
			alarm[2] = 30;
			sprite_index = spr_enemy_easy_attack;	
			health -= damage;
		}
	}
	else {
		sprite_index = spr_enemy_easy;	
	}
} 
else {
	sprite_index = spr_enemy_easy_hit;
}