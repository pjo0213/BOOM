/// @description Player loses if loses all health
if (health <= 0){
	room_goto(rm_lose);
}