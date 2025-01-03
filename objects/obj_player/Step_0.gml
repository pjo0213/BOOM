/// @description Player's movement and shooting
var move_speed = 7;

dx = 0;
dy = 0;

if (keyboard_check(ord("W"))){
	dx += dcos(look_direction) * move_speed;
	dy -= dsin(look_direction) * move_speed;
	sway_y = lerp(sway_y, sway_y_max, .15)
}

if (keyboard_check(ord("A"))){
	dx -= dsin(look_direction) * move_speed;
	dy -= dcos(look_direction) * move_speed;
	sway_x = lerp(sway_x, sway_x_max, .15);
}

if (keyboard_check(ord("S"))){
	dx -= dcos(look_direction) * move_speed;
	dy += dsin(look_direction) * move_speed;
	sway_y = lerp(sway_y, -sway_y_max, .15)
}

if (keyboard_check(ord("D"))){
	dx += dsin(look_direction) * move_speed;
	dy += dcos(look_direction) * move_speed;
	sway_x = lerp(sway_x, -sway_x_max, .15);
}

if (!dx and !dy){
	sway_x = lerp(sway_x, 0, .15);
	sway_y = lerp(sway_y, 0, .15);
}

move.xSpdYSpd(dx, dy);

if (obj_camera.view_matrix != undefined and obj_camera.projection_matrix != undefined){
	if (keyboard_check_pressed(vk_space)){
		var vector = screen_to_world(window_get_width() / 2 + obj_player.sway_x, window_get_height() / 2 + sway_y, obj_camera.view_matrix, obj_camera.projection_matrix);
		var bullet = instance_create_depth(vector[3] + lengthdir_x(5, look_direction), vector[4] + lengthdir_y(5, look_direction), vector[5], obj_bullet);
		bullet.xspeed = 25 * vector[0];
		bullet.yspeed = 25 * vector[1];
		//bullet.zspeed = 5 * vector[2];
	}
}