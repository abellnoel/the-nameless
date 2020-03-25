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
keyList = [vk_numpad1, vk_numpad2, vk_numpad3, vk_numpad4, vk_numpad5, vk_numpad6, vk_numpad7];
enemyList = [obj_lowlyRat, obj_highRat, obj_highRatWarrior, obj_highRatArcher, 
				obj_highRatCrossbowman, obj_highRatShaman, obj_kingRat];

//PLAYER SPAWN (TEMP)
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_warrior);

//LIST ALL TYPES OF STATUS EFFECTS
enum STATUS_EFFECT {
	NONE,
	BLOCKING
}
