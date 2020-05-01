/// @description Damage player on collison
if (ds_list_find_index(enemiesHit, other) == -1) {
	audio_play_sound(Sword_Hit, 10, false);
	ds_list_add(enemiesHit, other);
	script_execute(script_doDamage, damage, other);
}
