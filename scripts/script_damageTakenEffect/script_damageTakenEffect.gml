/* DESCRIPTION: 
	- Causes a color overlay effect on the calling instances
	- Color and length of effect defined by globals that can be changed in controller's variable definitions
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE
//hp, lastHp, alarm[1] that sets image_blend = -1 (default image_blend)

//if hp decreases from lastHp, update lastHp to current hp and do effect 
if (hp < lastHp) {
	lastHp = hp; 
	image_blend = global.damageTakenColor;
	alarm[1] = room_speed * global.damageTakenDuration;
}