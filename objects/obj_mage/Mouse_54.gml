/// @description Spawn magicFreeze at mouse if enough mana
if (mana >= freezeManaCost) {
	mana -= freezeManaCost;
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_magicFreeze);
}