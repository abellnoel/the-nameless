/// @damage
// You can write your code in this editor

if(obj_player.spikedmg = true){
	audio_play_sound(Sword_Hit, 10, false);
	script_doDamage(10, obj_player);
	alarm[0] = room_speed * 2
	obj_player.spikedmg = false
}


