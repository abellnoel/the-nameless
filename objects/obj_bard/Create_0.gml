/// @description Add charge shot variables
// Inherit the parent event
event_inherited();

//FOR BASIC ATTACK
//base values
charge = 0;
baseChargeDamage = attackDamage; //base damage with quick clicks
baseChargeRange = 100; //base range with quick clicks
baseChargeProjSpeed = 5; //base projectile speed with quick clicks

//maximum values
maxCharge = 50;
maxChargeDamage = dmg * 6; 
maxChargeRange = 800; 
maxChargeProjSpeed = 15;

//range values
rangeChargeDamage = maxChargeDamage - baseChargeDamage;
rangeChargeRange = maxChargeRange - baseChargeRange;
rangeChargeProjSpeed = maxChargeProjSpeed - baseChargeProjSpeed;

//for shot
shotDamage = baseChargeDamage;
shotRange = baseChargeRange;
shotProjSpeed = baseChargeProjSpeed;

//FOR ABILITY
mana = 0; //starts at 0, charges up based on shots hit
chorus = false;
