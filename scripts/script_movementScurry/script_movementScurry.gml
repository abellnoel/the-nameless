/* DESCRIPTION
	- Calling instance will randomly select positions in a box around itself
	- Box size defined by calling instance's scurryRange (half the length/height of the box)
	- Positions selected that are outside of the room boundaries are re-randomized
	- Three modes based on player proximity:
		0: Normal
		1: Avoid player if within proximity
		2: Move towards player if within proximity
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE
//move, xMove, yMove, scurryRange
//move arguments to named variables
var behavior = argument0; //0 normal, 1 avoid, 2 attack
//pick random place to move around a box arounds self defined by scurryRange
if (move) {
	//scurry box centered on self by default
	speed = 0;
	originX = x;
	originY = y;
	scurryBox = scurryRange;
	//avoidance
	if (behavior == 1 or behavior == 2) {
		if (instance_exists(obj_player)) {
			var playerDir = point_direction(x, y, obj_player.x, obj_player.y);
			var opposite = playerDir + 180;
			//shift scurry box away from or towards player
			if (distance_to_object(obj_player) < detectRange) {
				scurryBox = 100;
				if (behavior == 1) {
					var dir = opposite;
				}
				else {
					var dir = playerDir;
				}
				originX = x + lengthdir_x(sprite_width, dir);
				originY = y + lengthdir_y(sprite_height, dir);
			}
		}
	}		
	xMove = irandom_range(originX - scurryBox, originX + scurryBox);
	yMove = irandom_range(originY - scurryBox, originY + scurryBox);
	//choose new point if any solids in line to move
	if (collision_line(x, y, xMove, yMove, obj_solid, true, false)) {
		exit; //start from top
	}
	//point accepted if within bounds of room
	if (point_in_rectangle(xMove, yMove, 0, 0, room_width, room_height)) { 
		//changes sprite based on what direction it is heading
		if (xMove > x) {
			sprite_index = spriteRight;
		} 
		else {
			sprite_index = spriteLeft;
		}
		move = false;
	}
}
else {
	speed = moveSpeed;
	//move towards chosen coordinates
	if (distance_to_point(xMove, yMove) > moveSpeed) {
		move_towards_point(xMove, yMove, moveSpeed);
	}
	else {
		move = true;
	}
}
