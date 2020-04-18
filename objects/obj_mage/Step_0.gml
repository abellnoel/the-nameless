/// @description Add splash magic bolts and ---- ability
// Inherit the parent event
event_inherited();

//basic attack 
if (canAttack) {
	if (mouse_check_button(mb_left)) {
		script_execute(script_shootProjectile, obj_magicBolt);
		canAttack = false;
	}
}

