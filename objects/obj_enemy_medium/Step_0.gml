/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!hit){
	if (target_x == x and target_y == y){
		sprite_index = spr_enemy_medium_attack;	
	}
	else {
		sprite_index = spr_enemy_medium;	
	}
} 
else {
	sprite_index = spr_enemy_medium_hit;
}