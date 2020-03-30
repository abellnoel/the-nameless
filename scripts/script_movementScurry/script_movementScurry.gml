/* DESCRIPTION
	- Calling instance will randomly select positions in a box around itself
	- Box size defined by calling instance's scurryRange (half the length/height of the box)
	- Positions selected that are outside of the room boundaries are re-randomized
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE
//move, xMove, yMove, scurryRange

//pick random place to move around a box arounds self defined by scurryRange
if (move) {
	xMove = irandom_range(x - scurryRange, x + scurryRange);
	yMove = irandom_range(y - scurryRange, y + scurryRange);
	//chooses new point if point chosen was offscreen
	if (point_in_rectangle(xMove, yMove, 0, 0, room_width, room_height)) { 

		//changes sprite based on what direction it is heading
		if (xMove > x) {
			sprite_index = spriteRight;
		} else {
			sprite_index = spriteLeft;
		}
		
		move = false;
	}
}
else {
	//move towards chosen coordinates
	if (distance_to_point(xMove, yMove) > speed) {
		move_towards_point(xMove, yMove, moveSpeed);
	}
	else {
		move = true;
	}
}
