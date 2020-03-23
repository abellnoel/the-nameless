/// @description For general control of gameplay
//GLOBALS
global.debugf1 = false; //used to invoke debug elements linked to f1
//damage taken effect
global.damageTakenDuration = damageTakenDuration;
global.damageTakenColor = damageTakenColor;
//health bar
global.healthBarAboveOffset = healthBarAboveOffset;
global.healthBarThickness = healthBarThickness;

//ENEMY SPAWN
chosenSpawn = obj_lowlyRat //default
//BOTH LISTS MUST BE SAME LENGTH, SAME INDEX CORRESPONDS TO SPAWN KEY
keyList = [vk_numpad1, vk_numpad2, vk_numpad3];
enemyList = [obj_lowlyRat, obj_highRat, obj_kingRat];

//PLAYER SPAWN (TEMP)
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_warrior);
