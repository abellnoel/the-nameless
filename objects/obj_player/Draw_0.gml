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
	//show position
	draw_text(x, bbox_top - 100, "x = " + string(x));
	draw_text(x, bbox_top - 120, "y = " + string(y));
	//show potion inventory
	/*
	draw_text(x, bbox_bottom + 40, "Health pots: " + string(hp_pot)) 
	draw_text(x, bbox_bottom + 60, "Damage pots: " + string(dm_pot)) 
	draw_text(x, bbox_bottom + 80, "Speed pots: " + string(sp_pot)) 
	*/
	//show current stats
	draw_text(bbox_right + 40, y - 20, "Admg: " + string(attackDamage));
	draw_text(bbox_right + 40, y, "Spd: " + string(moveSpeed));
	draw_text(bbox_right + 40, y + 20, "Aspd: " + string(attackSpeed));
	
}

//HEALTH BAR
hleft = x - sprite_xoffset;
hright = x + sprite_xoffset;
hbot = y - sprite_yoffset - global.healthBarAboveOffset;
htop = hbot - global.healthBarThickness;
draw_healthbar(hleft, htop, hright, hbot, (hp / maxHealth * 100), c_dkgray, c_red, c_lime, 0, true, false);