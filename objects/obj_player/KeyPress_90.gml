/// @description Use Health potion
// You can write your code in this editor


if(obj_player.hp_pot != 0){ //do they have a hp potion?
if((obj_player.hp +30) < obj_player.maxHp){ //will using it surpass max hp?
obj_player.hp += 30 //add 30 to hp
}else{
obj_player.hp = obj_player.maxHp	//set hp to max value
}

obj_player.hp_pot -= 1
}
