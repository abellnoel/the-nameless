/// @description Damage enemy on collision
if (ds_list_find_index(enemiesHit, other) == -1) {
	ds_list_add(enemiesHit, other);
	script_execute(script_doDamage, damage, other);
	
	//can penetrate up to three enemies
	if (ds_list_size(enemiesHit) >= 4) {
		instance_destroy();
	}
}