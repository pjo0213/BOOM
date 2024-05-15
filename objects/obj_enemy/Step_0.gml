/// @description Destroy enemy if all health depleted by player

if (enemy_health <= 0){
	instance_destroy(self);
}