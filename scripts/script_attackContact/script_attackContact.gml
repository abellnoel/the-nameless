/* DESCRIPTION
	- Calling instances damages the player on collision
	- The frequency of this damage is defined by attackSpeed
	- The amount of damage is defined by attackDamage
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE
//canAttack, attackDamage, attackSpeed, alarm[0] -> sets canAttack back to true

//establishes attack intervals
if (canAttack) {
	player = instance_place(x, y, obj_player);
	if (instance_exists(player)) { //only executes attack code when there is a collision
		player.hp -= attackDamage;
		canAttack = false;
		alarm[0] = room_speed * attackSpeed;
	}
}