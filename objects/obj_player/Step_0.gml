look_direction -=  (window_mouse_get_x() - window_get_width() / 2) / 10;
look_pitch -= (window_mouse_get_y() - window_get_height() / 2) / 10;
look_pitch = clamp(look_pitch, -80, 80);

window_mouse_set(window_get_width() / 2, window_get_height() / 2);

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