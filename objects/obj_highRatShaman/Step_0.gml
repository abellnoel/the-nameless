/// @description Scurry and magic
event_inherited()

//ATTACK SPEED ALARM 
//FOR CHILDREN: Set canAttack to false in basic attack code after basic attack occurs
if (canAttack) { //prevents attacks until canAttack is set to true again
	alarm[0] = room_speed * attackSpeed;	
}

//checks if the player instance exists
if(instance_exists(obj_player)) {
	//behavior of the rat
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, false)) {
		seePlayer = true;
		scurryBehavior = 1;
	} else {
		seePlayer = false;
		scurryBehavior = 0;
	}
	
	//when player is in range of shooting
	if (distance_to_object(obj_player) > detectRange and distance_to_object(obj_player) < 400 and seePlayer == true) {
		speed = 0;
		if (obj_player.x > x) {
				sprite_index = spriteRight;
			} 
			else {
				sprite_index = spriteLeft;
		}
	
		//basic attack 
		if (canAttack) {
			script_execute(script_shootProjectile, obj_magicBolt1);
			canAttack = false;
		}

	} else {
		//Movement
		script_execute(script_movementScurry, scurryBehavior);
	}
}