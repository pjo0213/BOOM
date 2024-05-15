/// @description Spawning bounds of powerups
if (irandom_range(0, 1000) == 91){
	instance_create_layer(x + sprite_width / 2, y + sprite_height / 2, "Instances", obj_medkit);
}