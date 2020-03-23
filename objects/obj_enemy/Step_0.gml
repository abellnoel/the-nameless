//delete object if hp hits 0
if (hp <= 0) {
	instance_create_layer(x, y, "Instances", obj_enemyDeath);
	instance_destroy();
}

//damage taken effect
script_execute(script_damageTakenEffect);