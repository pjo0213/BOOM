/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_enemy)){
	instance_destroy(self);

	other.hit = true;

	other.alarm[1] = 30;

	other.enemy_health--;
}