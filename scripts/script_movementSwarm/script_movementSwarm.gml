//VARIABLES REQUIRED FROM CALLING INSTANCE
//move, xMove, yMove, swarmRange

//move argument into named variable
master = argument0;

//pick random place to move within room boundaries
if (move) {
	xMove = irandom_range(master.x - swarmRange, master.x + swarmRange);
	yMove = irandom_range(master.y - swarmRange, master.y + swarmRange);
	//chooses new point if point chose was offscreen
	if (point_in_rectangle(xMove, yMove, 0, 0, room_width, room_height)) { 
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
