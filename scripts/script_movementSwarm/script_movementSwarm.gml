/* DESCRIPTION:
	- Calling instance will randomly select positions in a box around the closest instance of master
	- Box size defined by calling instance's swarmRange (half the length/height of the box)
	- Positions selected that are outside of the room boundaries are re-randomized
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE
//move, xMove, yMove, swarmRange
//ARGUMENTS
//argument0, master, instance that will be swarmed around

//move argument into named variable
master = argument0;
scurryBox = swarmRange;

//pick random place to move around master
if (move) {
	if (!collision_line(x, y, master.x, master.y, obj_solid, true, true)) {
		xMove = irandom_range(master.x - swarmRange, master.x + swarmRange);
		yMove = irandom_range(master.y - swarmRange, master.y + swarmRange);
		//chooses new point if point chosen was offscreen or on a solid
		if (point_in_rectangle(xMove, yMove, 0, 0, room_width, room_height) and !place_meeting(xMove, yMove, obj_solid)) { 
				move = false;
		}
	}
	//if no direct line to master do regular scurry
	else {
		script_movementScurry(0);
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
