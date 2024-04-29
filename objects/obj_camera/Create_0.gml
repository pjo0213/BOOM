/// @description Insert description here
// You can write your code in this editor
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

for (var i = 0; i < room_width * 10; i += 32) {
	for (var j = 0; j < room_height * 10; j += 32){
		if ((i % 64 == 0 && j % 64 == 0) or ( i % 64 > 0 && j % 64 > 0)){
			var color = c_grey;
		}
		else {
			var color = c_white;
		}
		vertex_add_point(vertex_buffer, i, j, 0, 0, 0, 1, 0, 0, color, 1);
		vertex_add_point(vertex_buffer, i + 32, j, 0, 0, 0, 1, 0, 0, color, 1);
		vertex_add_point(vertex_buffer, i + 32, j + 32, 0, 0, 0, 1, 0, 0, color, 1);

		vertex_add_point(vertex_buffer, i + 32, j + 32, 0, 0, 0, 1, 0, 0, color, 1);
		vertex_add_point(vertex_buffer, i, j + 32, 0, 0, 0, 1, 0, 0, color, 1);
		vertex_add_point(vertex_buffer, i, j, 0, 0, 0, 1, 0, 0, color, 1);
	}
}

vertex_end(vertex_buffer);

instance_create_depth(0, 0, 0, obj_player);