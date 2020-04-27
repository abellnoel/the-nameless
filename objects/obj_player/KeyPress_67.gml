/// @description use spd potion
// You can write your code in this editor
var length = 10; //length of spd potion

if(obj_player.sp_pot != 0 and alarm[3] == -1 and activePotion == 4){
	obj_player.moveSpeed += speedBoost;
	potTimer = length + 1;
	alarm[4] = 1; //start countdown
	alarm[3] = room_speed * length;
	obj_player.sp_pot -=1
	activePotion = 1;
}

