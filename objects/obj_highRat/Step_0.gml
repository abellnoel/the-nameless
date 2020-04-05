/// @description Scurry only
// Inherit the parent event
event_inherited();

//Attack
script_execute(script_attackContact);

//Movement
script_execute(script_movementScurry, scurryBehavior);

