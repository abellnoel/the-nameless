//VARIABLES REQUIRED FROM CALLING INSTANCE
//hp, lastHp, alarm[1] that sets image_blend = -1 (default image_blend)
//ARGUMENTS
//[0]effectDuration, [1]effectColor

//move arguments into named variables
effectDuration = argument0;
effectColor = argument1;

//if hp decreases from lastHp, update lastHp to current hp and do effect 
if (hp < lastHp) {
	lastHp = hp; 
	image_blend = effectColor;
	alarm[1] = room_speed * effectDuration
}