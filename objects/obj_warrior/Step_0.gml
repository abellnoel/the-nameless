/// @description Inherited from player
// Inherit the parent event
event_inherited();

//Basic attack
if (canAttack) {
	if (mouse_check_button(mb_left)) {
		script_execute(script_weaponSwing, obj_swordSwing);
		canAttack = false;
	}
}
