/// @description Initialization of 3D camera
gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

view_matrix = [];
projection_matrix = [];

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();

vertex_buffer = vertex_create_buffer();
vertex_begin(vertex_buffer, vertex_format);

var uvs = sprite_get_uvs(spr_floor, 0);
tex_left = uvs[0];
tex_top = uvs[1];
tex_right = uvs[2];
tex_bottom = uvs[3];

for (var i = 0; i < room_width; i += 64) {
	for (var j = 0; j < room_height; j += 64){
		vertex_add_point(vertex_buffer, i, j, 0, 0, 0, 1, tex_left, tex_top, c_white, 1);
		vertex_add_point(vertex_buffer, i + 64, j, 0, 0, 0, 1, tex_right, tex_top, c_white, 1);
		vertex_add_point(vertex_buffer, i + 64, j + 64, 0, 0, 0, 1, tex_right, tex_bottom, c_white, 1);

		vertex_add_point(vertex_buffer, i + 64, j + 64, 0, 0, 0, 1, tex_right, tex_bottom, c_white, 1);
		vertex_add_point(vertex_buffer, i, j + 64, 0, 0, 0, 1, tex_left, tex_bottom, c_white, 1);
		vertex_add_point(vertex_buffer, i, j, 0, 0, 0, 1, tex_left, tex_top, c_white, 1);
	}
}

vertex_end(vertex_buffer);

instance_create_depth(0, 0, 0, obj_player);