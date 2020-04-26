/// @description Archer arrow shoot
// Inherit the parent event
event_inherited();

//basic attack 
if (canAttack) {
	if (mouse_check_button(mb_left)) {
		//halve movement speed
		moveSpeed = spd / 2;
		
		if (charge < maxCharge) {
			charge += 1;
		}
		percent = charge / maxCharge;
		//gradually increase damage, range, and proj speed by current percentage of charge
		shotDamage = baseChargeDamage + (rangeChargeDamage * percent);
		shotRange = baseChargeRange + (rangeChargeRange * percent);
		shotProjSpeed = baseChargeProjSpeed + (rangeChargeProjSpeed * percent);
	}
	if (mouse_check_button_released(mb_left)) {
		script_chargeShot(obj_archerArrow);
		//return shot and movement values to base values
		moveSpeed = spd;
		charge = 0;
		shotDamage = baseChargeDamage;
		shotRange = baseChargeRange;
		shotProjSpeed = baseChargeProjSpeed;
	}
}

