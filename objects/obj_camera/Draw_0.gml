draw_clear(c_black);

var camera = camera_get_active();

var xfrom = obj_player.x;
var yfrom = obj_player.y;
var zfrom = obj_player.z;
var xto = xfrom + dcos(obj_player.look_direction) * dcos(obj_player.look_pitch);
var yto = yfrom - dsin(obj_player.look_direction) * dcos(obj_player.look_pitch);
var zto = zfrom - dsin(obj_player.look_pitch);

view_matrix = matrix_build_lookat(xfrom, yfrom, zfrom, xto, yto, zto, 0, 0, 1);
projection_matrix = matrix_build_projection_perspective_fov(60, window_get_width() / window_get_height(), 1, 32000);
camera_set_view_mat(camera, view_matrix);
camera_set_proj_mat(camera, projection_matrix);
camera_apply(camera);

vertex_submit(vertex_buffer, pr_trianglelist, -1);


with (obj_wall) {
	event_perform(ev_draw, 0);
}

with (obj_bullet) {
	event_perform(ev_draw, 0);
}