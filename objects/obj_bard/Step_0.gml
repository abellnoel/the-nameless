/// @description Archer arrow shoot
// Inherit the parent event
event_inherited();

//constantly update max damage and damage range (for potion effects)
baseChargeDamage = attackDamage;
maxChargeDamage = baseChargeDamage * 3; 
rangeChargeDamage = maxChargeDamage - baseChargeDamage;

//basic attack 
if (canAttack) {
	if (mouse_check_button(mb_left)) {
		//half movement speed
		moveSpeed = (spd / 2); 
		if (activePotion == 1) { //if speed potion active
			moveSpeed = (spd / 2) + (speedBoost / 2); //incorporates speed boost into half speed
		}
	
		if (charge < maxCharge) {
			charge += 1;
		}
		percent = charge / maxCharge;
		//gradually increase damage, range, and proj speed by current percentage of charge
		shotDamage = baseChargeDamage + (rangeChargeDamage * percent);
		shotRange = baseChargeRange + (rangeChargeRange * percent);
		shotProjSpeed = baseChargeProjSpeed + (rangeChargeProjSpeed * percent);
		
		//play charge sounds
		switch (charge) {
			case 10:
				audio_play_sound(harp1, 1, false);
				break;
			case 20:
				audio_play_sound(harp2, 1, false);	
				break;
			case 30:
				audio_play_sound(harp3, 1, false);	
				break;
			case 45:
				audio_play_sound(harp4, 1, false);	
				break;
		}
	}
	if (mouse_check_button_released(mb_left)) {
		//shoot projectile
		script_chargeShot(obj_noteShot);
		if (chorus) { //three shot spread when ability is active
			var shotL = script_chargeShot(obj_noteShot);
			var shotR = script_chargeShot(obj_noteShot);
			shotL.direction += shotSpread;
			shotL.image_angle += shotSpread;
			shotR.direction -= shotSpread;
			shotR.image_angle -= shotSpread;
		}
		//play shot sound (only if max charge)
		if (charge == maxCharge) {
			audio_play_sound(harpShot, 1, false);	
		}
		//return shot and movement values to base values
		moveSpeed = spd;
		if (activePotion == 1) {
			moveSpeed = spd + speedBoost;
		}
		charge = 0;
		shotDamage = baseChargeDamage;
		shotRange = baseChargeRange;
		shotProjSpeed = baseChargeProjSpeed;
	
		canAttack = false;
	}
}

//ability activation, only usable at full charge
if (mana == maxMana && mouse_check_button_pressed(mb_right)) {
	chorus = true;
}
//ability bar drain once used
if (chorus) {
	if (mana > 0 && alarm[11] == -1) {
		alarm[11] = room_speed * decayRate;
	}
	if (mana == 0) { //chorus ends when bar is fully drained
		chorus = false; 
	}
}