/// @description Status effects
switch (status) {
	//Instance cannot move
	case STATUS_EFFECT.FROZEN: 
		moveSpeed = 0;
		image_index = 0; //freeze animation
		if (alarm[7] == -1) {//if alarm not set
			var frozenEffect = instance_create_layer(x, y, "Effects", obj_frozen);
			var scaleFactor = sprite_width / 16;
			frozenEffect.image_xscale = scaleFactor;
			frozenEffect.image_yscale = scaleFactor;
			frozenEffect.target = id;
			alarm[7] = room_speed * frozenDuration; //resets effects after time
		}
}
