/// @description Drawn data according to room
if (room == rm_title){
	draw_sprite_ext(spr_title_card, 0, window_get_width() / 2, window_get_height() / 3, 4, 4, 0, c_white, 1);

	draw_set_halign(fa_center);

	draw_text(window_get_width() / 2, window_get_height() * 5/7, "ENTER TO PLAY\nWASD TO MOVE\nLEFT AND RIGHT ARROW KEYS TO LOOK LEFT AND RIGHT RESPECTIVELY\nSPACE TO SHOOT\nSURVIVE AS MANY WAVES AS YOU CAN!");
}

if (room == rm_lose){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(window_get_width() / 2, window_get_height() / 2, "YOU LOSE!!!\nPRESS ENTER TO PLAY AGAIN");
}
