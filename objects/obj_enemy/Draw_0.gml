/// @description Draws enemy elements
//DEBUG
draw_self(); //makes sure to keep drawing player sprite
if (global.debugf1) {
	//show health
	draw_text(x, bbox_top - 20, "health = " + string(hp));
}

//HEALTH BAR
hleft = x - (sprite_width / 2);
hright = x + (sprite_width/ 2);
hbot = y - (sprite_height / 2) - obj_controller.healthBarAboveOffset;
htop = hbot - obj_controller.healthBarThickness;
draw_healthbar(hleft, htop, hright, hbot, (hp / maxHealth * 100), c_dkgray, c_red, c_lime, 0, true, false);