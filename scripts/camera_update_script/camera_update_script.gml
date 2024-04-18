// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_update_script(){
	var zz = -640;
	var xx = lengthdir_x(720, -current_time/10) + (room_width * .5);
	var yy = lengthdir_y(720, -current_time/10) + (room_height * .5);
	
	mLookat = matrix_build_lookat(xx, yy, zz, (room_width * .5), (room_height * .5), 0, 0, 0, -1);
	
	camera_set_view_mat(view_camera[0], mLookat);
}