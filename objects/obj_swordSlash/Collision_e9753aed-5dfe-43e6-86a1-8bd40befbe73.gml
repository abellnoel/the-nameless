/// @description Damage enemy on collision
if (ds_list_find_index(enemiesHit, other) == -1) {
	ds_list_add(enemiesHit, other);
	audio_play_sound(Sword_Hit, 10, false);
	script_execute(script_doDamage, damage, other);
}
