/// @description Draw health bar
//HEALTH BAR
hleft = x - sprite_xoffset;
hright = x + sprite_xoffset;
hbot = y - sprite_yoffset - global.healthBarAboveOffset;
htop = hbot - global.healthBarThickness;
draw_healthbar(hleft, htop, hright, hbot, (hp / maxHealth * 100), c_dkgray, c_red, c_lime, 0, true, false);