/// @description Checks for hard enemy
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
			sprite_index = spr_enemy_hard_attack;	
			health -= damage;
		}
	}
	else {
		sprite_index = spr_enemy_hard;	
	}
} 
else {
	sprite_index = spr_enemy_hard_hit;
}