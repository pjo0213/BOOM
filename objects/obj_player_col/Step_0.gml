/// @description Initialization of store collision (TBA)

x = obj_player.x;
y = obj_player.y

if (place_meeting(x, y, obj_store)){
	store_prompt = true;
	
}
else {
	store_prompt = false;
}