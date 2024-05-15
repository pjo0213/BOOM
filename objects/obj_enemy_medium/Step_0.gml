/// @description Checks for medium enemy's states
event_inherited();

if (collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, true) == noone){
	attack = true;
}
else {
	attack = false;
}

if (!hit){
	if (attack){
		if (alarm[2] <= 0){
			alarm[2] = 30;
			sprite_index = spr_enemy_medium_attack;	
			
			//Fireball
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy_medium);
			bullet.xspeed = 10 * dcos(point_direction(x, y, obj_player.x, obj_player.y));
			bullet.yspeed = -10 * dsin(point_direction(x, y, obj_player.x, obj_player.y));
		}
	}
	else {
		sprite_index = spr_enemy_medium;	
	}
} 
else {
	sprite_index = spr_enemy_medium_hit;
}