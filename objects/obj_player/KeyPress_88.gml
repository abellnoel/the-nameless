/// @description Use dmg potion
// You can write your code in this editor
var length = 10; //length of spd potion

if(obj_player.dm_pot != 0 and alarm[2] == -1 and activePotion == 4){
	obj_player.attackDamage += 20;
	potTimer = length + 1;
	alarm[4] = 1; //start countdown
	alarm[2] = (room_speed * length)
	obj_player.dm_pot -=1
	activePotion = 2;
}

