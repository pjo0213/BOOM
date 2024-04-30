//look_direction -=  window_mouse_get_delta_x() / 10;
//look_pitch -= window_mouse_get_delta_y() / 10;
//look_pitch = clamp(look_pitch, -85, 85);

var move_speed = 7;

var dx = 0;
var dy = 0;

if (keyboard_check(ord("W"))){
	dx += dcos(look_direction) * move_speed;
	dy -= dsin(look_direction) * move_speed;
}

if (keyboard_check(ord("A"))){
	dx -= dsin(look_direction) * move_speed;
	dy -= dcos(look_direction) * move_speed;
}

if (keyboard_check(ord("S"))){
	dx -= dcos(look_direction) * move_speed;
	dy += dsin(look_direction) * move_speed;
}

if (keyboard_check(ord("D"))){
	dx += dsin(look_direction) * move_speed;
	dy += dcos(look_direction) * move_speed;
}

move.xSpdYSpd(dx, dy);

if (keyboard_check_pressed(vk_space)){
	var vector = screen_to_world(window_mouse_get_x(), window_mouse_get_y(), obj_camera.view_matrix, obj_camera.projection_matrix);
	var bullet = instance_create_depth(vector[3], vector[4], vector[5], obj_bullet);
	bullet.xspeed = 5 * vector[0];
	bullet.yspeed = 5 * vector[1];
	//bullet.zspeed = 5 * vector[2];
}

look_direction %= 360;

//show_debug_message(string(look_direction % 360));