/// @description Use dmg potion
// You can write your code in this editor

if(obj_player.dm_pot != 0 and alarm[2] == -1){
	obj_player.attackDamage += 20;
	alarm[2] = (room_speed * 10)
	obj_player.dm_pot -=1
}

