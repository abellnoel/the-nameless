/// @description Damage player on collision
if (ds_list_find_index(enemiesHit, other) == -1) {
	if(projectileType == obj_arrow || projectileType == obj_crossbow_bolt) {
		audio_play_sound(arrow_hit, 10, false);
	}
	ds_list_add(enemiesHit, other);
	script_execute(script_doDamage, damage, other);
	instance_destroy();
}