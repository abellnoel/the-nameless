/// @description Add basic attack and blocking mechanics 
// Inherit the parent event
event_inherited();

//Basic attack
if (canAttack) {
	if (mouse_check_button(mb_left)) {
		script_execute(script_weaponSwing, obj_swordSlash);
		canAttack = false;
	}
}

//Talent (Blocking)
script_execute(script_talentBlock);
