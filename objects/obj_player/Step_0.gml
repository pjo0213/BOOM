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