/// @description Resets timer for spawning accordingly
if (obj_control.ticks > 0 and alarm[0] <= 0){
	alarm_set(0, 600);
}