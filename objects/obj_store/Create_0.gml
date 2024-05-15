/// @description Initialization of store (TBA)
z = 0;
depth = 0;

uvs = sprite_get_uvs(spr_store, 0)

vertex_buffer = vertex_create_buffer();
	
vertex_begin(vertex_buffer, obj_camera.vertex_format);

make_cuboid(vertex_buffer, x, y, z, 0, 0, 1, uvs, c_white, 1, 64, sprite_width, sprite_height);

vertex_end(vertex_buffer);