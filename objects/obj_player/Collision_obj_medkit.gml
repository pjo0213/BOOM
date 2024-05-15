/// @description Heal upon standing on top of medkit
instance_destroy(other);

health += 20;

if (health > 100){
	health = 100;
}