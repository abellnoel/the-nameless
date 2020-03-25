/// @description Add block bar
// Inherit the parent event
event_inherited();

//Draw block bar
draw_healthbar(hleft, htop - 20, hright, hbot - 20, (blockMeter / maxBlock * 100), c_dkgray, c_orange, c_blue, 0, true, false);
