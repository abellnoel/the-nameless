/// @description Game step control

//Checks each keypress in keyList, changes chosenSpawn with matching index of enemyList
for (var i = 0; i < array_length_1d(keyList); i++) {
	if (keyboard_check(keyList[i])) {
		chosenSpawn = enemyList[i];
	}
}