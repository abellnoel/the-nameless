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
//hp, lastHp, blocking, blockColor

if (mouse_check_button(mb_right)) { //if holding right click
	//prevent all damage
	blocking = true;
	image_blend = blockColor; //color overlay on player while blocking
	if (hp < lastHp) { //if hp is decreased, using same variables as damageTakenEffect
		hp = lastHp; //restore hp to state before it decreased
	}
}
if (mouse_check_button_released(mb_right)) { //once released
	image_blend = -1; //returns blend to normal
	blocking = false;
}