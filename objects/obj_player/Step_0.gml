/// @description Basic player controls

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
	x += lengthdir_x(moveSpeed, dir);
	y += lengthdir_y(moveSpeed, dir);
}
//prevent leaving room
x = clamp(x, 0 + sprite_xoffset, room_width - sprite_width);
y = clamp(y, 0 + sprite_yoffset, room_height - sprite_yoffset);

//ATTACK SPEED ALARM 
//FOR CHILDREN: Set canAttack to false in basic attack code after basic attack occurs
if (canAttack) { //prevents attacks until canAttack is set to true again
	alarm[0] = room_speed * attackSpeed;	
}

//DEATH AND ANIMATION
script_execute(script_deathAnimation, obj_bloodBurst);

//DAMAGE TAKEN EFFECT
script_execute(script_damageTakenEffect);
