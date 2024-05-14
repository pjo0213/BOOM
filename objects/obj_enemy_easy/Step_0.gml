/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if (!hit){
	if (target_x == x and target_y == y){
		sprite_index = spr_enemy_easy_attack;	
	}
	else {
		sprite_index = spr_enemy_easy;	
	}
} 
else {
	sprite_index = spr_enemy_easy_hit;
}