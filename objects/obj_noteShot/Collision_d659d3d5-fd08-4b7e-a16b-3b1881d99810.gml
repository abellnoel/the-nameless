/// @description Damage enemy on collision
if (ds_list_find_index(enemiesHit, other) == -1) {
	ds_list_add(enemiesHit, other);
	script_execute(script_doDamage, damage, other);
	
	//add to bard's mana bar when enemies are hit 
	if (instance_exists(obj_bard)) {
		if (obj_bard.mana < obj_bard.maxMana && !obj_bard.chorus) {
			obj_bard.mana++;
		}
	}
	
	//can penetrate up to three enemies
	if (ds_list_size(enemiesHit) >= 4) {
		instance_destroy();
	}
}