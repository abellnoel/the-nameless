/// @description Movement and attack code

// Inherit the parent event
event_inherited();

//Attack
script_execute(script_attackContact);

//Special movement code (swarm around rat king) 
if (instance_exists(obj_kingRat)) {
	script_execute(script_movementSwarm, obj_kingRat);
}
//Normal attack (scurry)
else {
	script_execute(script_movementScurry);
}
