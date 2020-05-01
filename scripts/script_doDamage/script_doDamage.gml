/* DESCRIPTION: 
	- Script to do damage to an instance
	- Used so damage numbers can be modified depending on target instance's status
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE

//ARGUMENTS
//argument0, dmg, damage amount
//argument1, target, target instance

//move arguments into named variables
dmg = argument0;
target = argument1; 

if (object_index == obj_highRatWarrior) {
	script_execute(script_weaponSwing, obj_enemySwordSlash);
} 

if (object_index == obj_lowlyRat) {
	audio_play_sound(Bite, 10, false);
	
} else if (object_index == obj_highRat) {
	audio_play_sound(punch, 10, false);
	
} else if (object_index == obj_highRatWarrior) {
	if(target.status == STATUS_EFFECT.BLOCKING) {
			audio_play_sound(Sword_Hit_Sheild, 10, false);
	} else {
			audio_play_sound(Sword_Hit, 10, false);
	}
}


//DAMAGE MODIFICATIONS BASED ON STATUS EFFECTS, CAN BE EXPANDED
switch (target.status) {
	case STATUS_EFFECT.BLOCKING:
		dmg /= 2; 
		break;
	case STATUS_EFFECT.INVINCIBLE:
		dmg = 0;
		break;
}

//do damage, modified or not
target.hp -= dmg;
if (target.image_blend == c_white) { //prevents overwriting existing color change effects
	target.image_blend = global.damageTakenColor;
	target.alarm[1] = room_speed * global.damageTakenDuration;
}