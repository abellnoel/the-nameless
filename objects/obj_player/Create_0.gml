/// @description Generic player class

//For movement
lastDir = direction;

//For combat, values stored in different variables so original values can be referenced
maxHealth = maxHp;
hp = maxHealth;
attackDamage = dmg;
moveSpeed = spd;
attackSpeed = aspd;
canAttack = true;

//For damageTakenEffect script
lastHp = maxHealth; //initial value, updated in script

//For status effect checks
status = STATUS_EFFECT.NONE