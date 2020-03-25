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

//DAMAGE MODIFICATIONS BASED ON STATUS EFFECTS, CAN BE EXPANDED
switch (target.status) {
	case STATUS_EFFECT.BLOCKING:
		dmg /= 2; 
		break;
}

//do damage, modified or not
target.hp -= dmg;
