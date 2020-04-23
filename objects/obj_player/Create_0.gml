/// @description Generic player class
// Inherit the parent event
event_inherited();

//for basic attacks
canAttack = true;

//change placed obj_player into selected class
if (room != rm_menu) {//prevent class selection menu interference
	instance_change(global.classSelected, true);
}
