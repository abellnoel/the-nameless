/// @description Godmode
if (!godmode and instance_exists(obj_player)) {
	obj_player.maxHealth = 100000;
	obj_player.hp = obj_player.maxHealth;
	obj_player.attackSpeed = .1;
	obj_player.attackDamage = 1000;
	obj_player.moveSpeed = 10;
	godmode = true;
}
else if (instance_exists(obj_player)) {
	obj_player.maxHealth = obj_player.maxHp;
	obj_player.hp = obj_player.maxHp;
	obj_player.attackSpeed = obj_player.aspd;
	obj_player.attackDamage = obj_player.dmg;
	obj_player.moveSpeed = obj_player.spd;
	godmode = false;
}
