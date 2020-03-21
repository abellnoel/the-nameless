/// @description For general control of gameplay
//GLOBALS
global.spriteScale = 4;
global.debugf1 = false; //used to invoke debug elements linked to f1

//PLAYER SPAWN (TEMP)
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_warrior);
