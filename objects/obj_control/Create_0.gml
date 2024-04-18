/// @description Insert description here
// You can write your code in this editor
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();

vertex_buffer = vertex_create_buffer();
vertex_begin(vertex_buffer, vertex_format);

var x1 = 400;
var y1 = 400;
var x2 = 600;
var y2 = 600;

vertex_position_3d(vertex_buffer, x1, y1, 100);
vertex_normal(vertex_buffer, 0, 0, 1);
vertex_texcoord(vertex_buffer, 0, 0);
vertex_color(vertex_buffer, c_white, 1);

vertex_position_3d(vertex_buffer, x2, y1, 100);
vertex_normal(vertex_buffer, 0, 0, 1);
vertex_texcoord(vertex_buffer, 0, 0);
vertex_color(vertex_buffer, c_white, 1);

vertex_position_3d(vertex_buffer, x2, y2, 100);
vertex_normal(vertex_buffer, 0, 0, 1);
vertex_texcoord(vertex_buffer, 0, 0);
vertex_color(vertex_buffer, c_white, 1);


//vertex_add_point(vertex_buffer, x1, y1, 100, 0, 0, 1, 0, 0, c_white, 1);

vertex_end(vertex_buffer);
//layer_force_draw_depth(true, 0);


//view_enabled = true;
//view_set_visible(0, true);

//camera = camera_create();

//projMat = matrix_build_projection_perspective_fov(-60, -view_get_wport(0)/view_get_hport(0), 32, 32000);

//camera_set_proj_mat(camera, projMat);

//view_set_camera(0, camera);

//camera_set_update_script(view_camera[0], camera_update_script);