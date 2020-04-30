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

image_speed = moveSpeed * 0.1; //animation plays faster if player moves faster
//if moving with collision detection when object is marked solid
if (vinput == -1 and !place_meeting(x, y - moveSpeed, obj_solid)) {
	//x += lengthdir_x(moveSpeed, dir);
	y += lengthdir_y(moveSpeed, dir);
	if (object_index == obj_warrior) {
		sprite_index = spriteUp;
	}
}
if (vinput == 1 and !place_meeting(x, y + moveSpeed, obj_solid)) {
	//x += lengthdir_x(moveSpeed, dir);
	y += lengthdir_y(moveSpeed, dir);
	if (object_index == obj_warrior) {
		sprite_index = spriteDown;
	}
}
if (hinput == -1 and !place_meeting(x - moveSpeed, y, obj_solid)) {
	x += lengthdir_x(moveSpeed, dir);
	//y += lengthdir_y(moveSpeed, dir);
	sprite_index = spriteLeft;
}
if (hinput == 1 and !place_meeting(x + moveSpeed, y, obj_solid)) {
	x += lengthdir_x(moveSpeed, dir);
	//y += lengthdir_y(moveSpeed, dir);
	sprite_index = spriteRight;
}
//if not moving, stay on frame with static sprite
if (hinput == 0 and vinput == 0) {
	image_index = 0;
}
//prevent leaving room
//define offsets based on bounding box
if (room != rm_exit) { //allow player to walk out of screen at exit
	var rightOffset = sprite_xoffset - (sprite_xoffset - (bbox_right - x));
	var leftOffset = sprite_xoffset - (sprite_xoffset - (x - bbox_left));
	var topOffset = sprite_yoffset - (sprite_yoffset - (y - bbox_top));
	var botOffset = sprite_yoffset - (sprite_yoffset - (bbox_bottom - y));
	x = clamp(x, 0 + leftOffset, room_width - rightOffset);
	y = clamp(y, 0 + topOffset, room_height - botOffset);
}

//ATTACK SPEED ALARM 
//FOR CHILDREN: Set canAttack to false in basic attack code after basic attack occurs
if (canAttack) { //prevents attacks until canAttack is set to true again
	alarm[0] = room_speed * attackSpeed;	
}

//DEATH AND ANIMATION
script_execute(script_deathAnimation, obj_bloodBurst, obj_player);
