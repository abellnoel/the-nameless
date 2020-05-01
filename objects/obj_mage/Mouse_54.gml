/// @description Spawn magicFreeze at mouse if enough mana
if (mana >= freezeManaCost) {
	mana -= freezeManaCost;
	audio_play_sound(Freeze_Twinkle, 10, false);
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_magicFreeze);
}