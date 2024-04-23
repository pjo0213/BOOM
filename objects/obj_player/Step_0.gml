look_direction -=  window_mouse_get_delta_x() / 10;
look_pitch -= window_mouse_get_delta_y() / 10;
look_pitch = clamp(look_pitch, -85, 85);

var move_speed = 7;

if (keyboard_check(ord("W"))){
	x += dcos(look_direction) * move_speed;
	y -= dsin(look_direction) * move_speed;
}

if (keyboard_check(ord("A"))){
	x -= dsin(look_direction) * move_speed;
	y -= dcos(look_direction) * move_speed;
}

if (keyboard_check(ord("S"))){
	x -= dcos(look_direction) * move_speed;
	y += dsin(look_direction) * move_speed;
}

if (keyboard_check(ord("D"))){
	x += dsin(look_direction) * move_speed;
	y += dcos(look_direction) * move_speed;
}

if (mouse_check_button_pressed(mb_left)){
	if (obj_camera.view_matrix != undefined and obj_camera.projection_matrix != undefined){
		var vector = screen_to_world(window_mouse_get_x(), window_mouse_get_y(), obj_camera.view_matrix, obj_camera.projection_matrix);
		var bullet = instance_create_depth(vector[3], vector[4], vector[5], obj_bullet);
		bullet.xspeed = 4 * vector[0];
		bullet.yspeed = 4 * vector[1];
		bullet.zspeed = 4 * vector[2];
	}
}