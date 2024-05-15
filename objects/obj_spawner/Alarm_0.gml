/// @description Insert description here
// You can write your code in this editor
//instance_create_layer(x, y, "Instances", choose(obj_enemy_easy, obj_enemy_medium, obj_enemy_hard, obj_boss));

obj_control.ticks -= 1/instance_number(obj_spawner);

instance_create_layer(x, y, "Instances", choose(obj_enemy_easy, obj_enemy_medium, obj_enemy_hard, obj_enemy_hardest));

