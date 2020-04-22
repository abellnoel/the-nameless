/// @description Draw mana bar
// Inherit the parent event
event_inherited();

draw_healthbar(hleft, htop - 20, hright, hbot - 20, (mana / maxMana * 100), c_dkgray, c_orange, c_blue, 0, true, false);

