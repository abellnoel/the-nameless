/// @description Generic enemy class

//for damage taken effect
lastHp = maxHealth; //starts as maxHealth

//for status effect checks
status = STATUS_EFFECT.NONE;

//For combat, values stored in different variables so original values can be referenced
hp = maxHealth;
attackDamage = dmg;
moveSpeed = spd;
attackSpeed = aspd;
