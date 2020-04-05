/// @description Movement and attack code

// Inherit the parent event
event_inherited();

//Movement
script_execute(script_movementScurry, scurryBehavior);

//Attack summon
script_execute(script_attackSummon, obj_lowlyRat);