/* DESCRIPTION (TO BE IMPLEMENTED): 
	- Talent name: Block
	- Talent is activated by HOLDING right mouse button
	- Warrior takes no damage (or reduced damage) while blocking 
	- Warrior may (or may not) attack while talent is active
	- Balancing points
		+ Amount of damage reduced when blocking
		+ Ability to attack when blocking
		+ IDEA: Attack speed is reduced while blocking 
		+ IDEA: Warrior's movement speed is reduced when talent is active
		+ IDEA: Block will have a usage meter
			- If used up, a cooldown period is activated where block will be unavailble
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE
//hp, lastHp, status, blockColor, maxBlock, blockMeter, decayRate, rechargeRate, broken

//Grant block and gradually reduce block meter
if (mouse_check_button(mb_right) and blockMeter > 0) { //if holding right click
	//give player BLOCKING status effect
	status = STATUS_EFFECT.BLOCKING;	
	image_blend = blockColor; //color overlay on player while blocking
	//drain block meter
	if (alarm[11] == -1) {//if alarm is not currently active
		alarm[11] = room_speed * decayRate; 
	}
}
//or blockMeter == 0 simulates a mouse release 
if (mouse_check_button_released(mb_right) or blockMeter == 0) { //once released
	status = STATUS_EFFECT.NONE; //remove blocking status effect
	image_blend = -1; //returns blend to normal
}
//Block meter regen, won't go above maxBlock
if (blockMeter < maxBlock and alarm[11] == -1) {
	alarm[11] = room_speed * rechargeRate;
}

