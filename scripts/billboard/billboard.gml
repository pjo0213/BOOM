// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function billboard(sprite, sub_index, x, y, z, is_cylinder){
	if (is_cylinder){
		shader_set(sh_billboard_cylinder);
		matrix_set(matrix_world, matrix_build(x, y, z, 0, 0, 0, 1, 1, 1));
		draw_sprite(sprite, sub_index, 0, 0);
		matrix_set(matrix_world, matrix_build_identity());
		shader_reset();
	}
	else {
		shader_set(sh_billboard);
		matrix_set(matrix_world, matrix_build(x, y, z, 0, 0, 0, 1, 1, 1));
		draw_sprite(sprite, sub_index, 0, 0);
		matrix_set(matrix_world, matrix_build_identity());
		shader_reset();
	}
}