/// @description Initialization of destructible wall
z = 0;
depth = 0;

wall_health = 2;

uvs = sprite_get_uvs(spr_wall_destructible, 0);

vertex_buffer = vertex_create_buffer();
	
vertex_begin(vertex_buffer, obj_camera.vertex_format);

make_cuboid(vertex_buffer, x, y, z, 0, 0, 1, uvs, c_white, 1, 150, sprite_width, sprite_height);

vertex_end(vertex_buffer);


