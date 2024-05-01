/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_crosshair, 0, window_get_width() / 2 + obj_player.sway_x, window_get_height() / 2 + obj_player.sway_y);

draw_sprite_ext(spr_bfg, 0, window_get_width() / 2 + obj_player.sway_x, window_get_height() + obj_player.sway_y, 5, 5, 0, c_white, 1);