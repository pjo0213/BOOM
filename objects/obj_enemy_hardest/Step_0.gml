/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
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
			sprite_index = spr_boss_attack;	
			health -= damage;
		}
		//else {
		//	sprite_index = spr_boss;
		//}
	}
	else {
		sprite_index = spr_boss;	
	}
} 
else {
	sprite_index = spr_boss_hit;
}