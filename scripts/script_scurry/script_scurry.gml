//pick random place to move within room boundaries
if (move) {
	xMove = irandom_range(x - scurryRange, x + scurryRange);
	yMove = irandom_range(y - scurryRange, y + scurryRange);
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
