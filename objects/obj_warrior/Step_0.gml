/// @description Partial inheritance of obj_player

//MOVEMENT
//NONE or BOTH = 0, stops directions movement if pressing left AND right or up AND down
//UP or RIGHT = 1
//DOWN or LEFT = -1
hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")); 
vinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//calculate direction based on direction from (0,0) to (hinput, vinput) 
//			 (0, -1)
//				|	
//(-1, 0) <- (0, 0) -> (1, 0)
//				|
//			 (0, 1)
dir = point_direction(0, 0, hinput, vinput)
//if moving
if (hinput != 0 or vinput != 0) {
	speed = moveSpeed;
	direction = dir;
	lastDir = dir;
}
//if not moving
else {
	direction = lastDir;
	speed = 0;
}

//ATTACK SPEED ALARM 
//FOR CHILDREN: Set canAttack to false in basic attack code after basic attack occurs
if (canAttack) { //prevents attacks until canAttack is set to true again
	alarm[0] = room_speed * attackSpeed;	
}

//DEATH
if (hp <= 0) {
	instance_create_layer(x, y, "Instances", obj_enemyDeath);
	instance_destroy();
}

//Basic attack
if (canAttack) {
	if (mouse_check_button(mb_left)) {
		script_execute(script_weaponSwing, obj_swordSlash);
		canAttack = false;
	}
}

if (!blocking) { //no damage taken when blocking
	//DAMAGE TAKEN EFFECT
	script_execute(script_damageTakenEffect);
}

//Talent (Blocking)
script_execute(script_talentBlock);
