/// @description Insert description here
// You can write your code in this editor
z = depth;
depth = 0;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format = vertex_format_end();

vertex_buffer = vertex_create_buffer();
vertex_begin(vertex_buffer, vertex_format);

vertex_position_3d(vertex_buffer, x, y, 0);
vertex_position_3d(vertex_buffer, x + sprite_width, y, 0);
vertex_position_3d(vertex_buffer, x + sprite_width, y, -sprite_height);

vertex_position_3d(vertex_buffer, x + sprite_width, y, -sprite_height);
vertex_position_3d(vertex_buffer, x, y, -sprite_height);
vertex_position_3d(vertex_buffer, x, y, 0);

vertex_normal(vertex_buffer, 0, 0, 1);

vertex_texcoord(vertex_buffer, 0, 0)

vertex_end(vertex_buffer);