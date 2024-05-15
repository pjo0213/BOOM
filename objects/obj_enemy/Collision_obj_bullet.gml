/// @description Deducts enemy health if player bullet hits enemy
instance_destroy(other);

enemy_health -= .5;

hit = true;

alarm[1] = 30;