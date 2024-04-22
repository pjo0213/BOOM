draw_clear(c_black);

var camera = camera_get_active();

camera_set_view_mat(camera, matrix_build_lookat(obj_player.x, obj_player.y, obj_player.z, obj_player.x + dcos(obj_player.look_direction), obj_player.y - dsin(obj_player.look_direction), obj_player.z - dsin(obj_player.look_pitch), 0, 0, 1));
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, window_get_width() / window_get_height(), 1, 32000));
camera_apply(camera);

vertex_submit(vertex_buffer, pr_trianglelist, -1);