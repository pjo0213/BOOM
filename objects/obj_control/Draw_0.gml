/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_title_card, 0, window_get_width() / 2, window_get_height() / 2, 4, 4, 0, c_white, 1);

if (room == rm_game){
	mp_grid_draw(grid);
}