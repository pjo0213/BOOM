/// @description Draws information to player's GUI
draw_sprite(spr_crosshair, 0, window_get_width() / 2 + obj_player.sway_x, window_get_height() / 2 + obj_player.sway_y);

draw_sprite_ext(spr_bfg, 0, window_get_width() / 2 + obj_player.sway_x, window_get_height() + obj_player.sway_y, 5, 5, 0, c_white, 1);

draw_healthbar(window_get_width()/2 - 150, 10, window_get_width() / 2 + 150, 30, health, c_red, c_maroon, c_green, 0, true, true);

draw_set_halign(fa_left);

draw_text(5, 10, "WAVE: " + string(obj_control.wave));

draw_set_halign(fa_center);



if (obj_player_col.store_prompt){
	draw_text(window_get_width() / 2, 35, "PRESS E TO SHOP");
}
