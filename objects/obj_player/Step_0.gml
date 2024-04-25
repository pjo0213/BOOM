look_direction -=  window_mouse_get_delta_x() / 10;
look_pitch -= window_mouse_get_delta_y() / 10;
look_pitch = clamp(look_pitch, -85, 85);

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

if (collision_circle(x + dx, y + dy, 10, obj_wall, false, true) == noone){
	x += dx;
	y += dy;
}

if (mouse_check_button_pressed(mb_left)){
	var vector = screen_to_world(window_mouse_get_x(), window_mouse_get_y(), obj_camera.view_matrix, obj_camera.projection_matrix);
	var bullet = instance_create_depth(vector[3], vector[4], vector[5], obj_bullet);
	bullet.xspeed = 50 * vector[0];
	bullet.yspeed = 50 * vector[1];
	bullet.zspeed = 50 * vector[2];
}


show_debug_message("(" + string(x) + ", " + string(y) + ") " + string(collision_circle(x, y, 10, obj_wall, false, true)));