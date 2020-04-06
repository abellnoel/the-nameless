//DEATH AND ANIMATION
script_execute(script_deathAnimation, obj_bloodBurst);

/*
inst = instance_place(x, y, obj_solid);
//if moving with collision detection when object is marked solid
if(inst != noone) {
	if (y < (inst.y - 32) and place_free(x, y - moveSpeed)) {
		y -= moveSpeed;
	}

	if (y > (inst.y + 32) and place_free(x, y + moveSpeed)) {
		y += moveSpeed;
	}
	if (x < (inst.x - 32) and place_free(x - moveSpeed, y)) {
		x -= moveSpeed;
	}

	if (x > (inst.x + 32) and place_free(x + moveSpeed, y)) {
		x += moveSpeed;
	}
}
*/