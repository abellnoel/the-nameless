/// @description use spd potion
// You can write your code in this editor

if(obj_player.sp_pot != 0 and alarm[3] == -1){
	obj_player.moveSpeed += 5;
	alarm[3] = (room_speed * 10)
	obj_player.sp_pot -=1
}

