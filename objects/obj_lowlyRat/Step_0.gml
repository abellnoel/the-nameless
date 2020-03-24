/// @description Movement and attack code

// Inherit the parent event
event_inherited();

//Attack
script_execute(script_attackContact);

//Special movement code (swarm around rat king) 
if (instance_exists(obj_kingRat)) {
	closestKing = instance_nearest(x, y, obj_kingRat);
	script_execute(script_movementSwarm, closestKing);
}
//Normal movement (scurry)
else {
	script_execute(script_movementScurry);
}
