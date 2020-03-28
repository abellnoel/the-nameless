/// @description Draws player elements
//DEBUG
draw_self(); //makes sure to keep drawing player sprite
if (global.debugf1) {
	//show movement values
	draw_set_halign(fa_center);
	draw_text(x, bbox_top - 20, "hinput = " + string(hinput));
	draw_text(x, bbox_top - 40, "vinput = " + string(vinput));
	draw_text(x, bbox_top - 60, "direction = " + string(direction));
	//show health
	draw_text(x, bbox_top - 80, "health = " + string(hp));
}

//HEALTH BAR
hleft = x - sprite_xoffset;
hright = x + sprite_xoffset;
hbot = y - sprite_yoffset - global.healthBarAboveOffset;
htop = hbot - global.healthBarThickness;
draw_healthbar(hleft, htop, hright, hbot, (hp / maxHealth * 100), c_dkgray, c_red, c_lime, 0, true, false);