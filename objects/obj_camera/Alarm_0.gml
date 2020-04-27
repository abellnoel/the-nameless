/// @description Enemy switch alarm
if (instance_exists(obj_enemy)) {
	enemyFollow = instance_find(obj_enemy, irandom(instance_number(obj_enemy) - 1));
}
alarm[0] = room_speed * 10;