/// @description Game step control

//Checks each keypress in keyList, changes chosenSpawn with matching index of enemyList
for (var i = 0; i < array_length_1d(keyList); i++) {
	if (keyboard_check(keyList[i])) {
		chosenSpawn = enemyList[i];
	}
}

//Room completion checks
if(instance_number(obj_enemy) == 0){
	room_complete = true;
}
if(room_complete) {	
	alarm_set(0,1)
}
//Player dies
if (!instance_exists(obj_player)) { 
	dead = true;
}