/// @description Draws enemy elements
//DEBUG
draw_self(); //makes sure to keep drawing player sprite
if (global.debugf1) {
	//show health
	draw_text(x, bbox_top - 20, "health = " + string(hp));
}

//HEALTH BAR
hleft = x - sprite_xoffset;
hright = x + sprite_xoffset;
hbot = y - sprite_yoffset - global.healthBarAboveOffset;
htop = hbot - global.healthBarThickness;
draw_healthbar(hleft, htop, hright, hbot, (hp / maxHealth * 100), c_dkgray, c_red, c_lime, 0, true, false);