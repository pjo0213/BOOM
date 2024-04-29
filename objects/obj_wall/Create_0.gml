/// @description Insert description here
// You can write your code in this editor
z = depth;
depth = 0;

uvs = sprite_get_uvs(spr_wall, 0);

vertex_buffer = vertex_create_buffer();
	
vertex_begin(vertex_buffer, obj_camera.vertex_format);

make_cuboid(vertex_buffer, x, y, z, 0, 0, 1, uvs[0], uvs[3], c_white, 1, sprite_height, sprite_width);

vertex_end(vertex_buffer);