/// @description Generic player class
// Inherit the parent event
event_inherited();

//for basic attacks
canAttack = true;

hp_pot =0
dm_pot =0
sp_pot =0
activePotion = 4; //index of empty potion sprite
potTimer = 0;
alarm[4] = 0;

//change placed obj_player into selected class
if (room != rm_menu) {//prevent class selection menu interference
	instance_change(global.classSelected, true);
}

