/// @description Status effects
switch (status) {
	//Instance cannot move
	case STATUS_EFFECT.FROZEN: 
		moveSpeed = 0;
		image_blend = frozenColor;
		image_index = 0; //freeze animation
		if (alarm[7] == -1) {//if alarm not set
			alarm[7] = room_speed * 3; //resets effects after time
		}
}
