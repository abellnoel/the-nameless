/// @description Add shot charge bar
// Inherit the parent event
event_inherited();

if (global.debugf1) {
	draw_text(x, y + 50, "Shot charge: " + string(charge));
	draw_text(x, y + 100, "Shot damage: " + string(shotDamage));
	draw_text(x, y + 150, "Shot range: " + string(shotRange));
	draw_text(x, y + 200, "Shot speed: " + string(shotProjSpeed));
}

//mana bar
draw_healthbar(hleft, htop - 20, hright, hbot - 20, (mana / maxMana * 100), c_dkgray, c_orange, c_blue, 0, true, false);

//shot charge bar 
//positioning coordinates
var sLeft = x + sprite_xoffset + global.healthBarAboveOffset;
var sTop = y - sprite_yoffset;
var sRight = sLeft + global.healthBarThickness;
var sBot = y + sprite_yoffset;
draw_healthbar(sLeft, sTop, sRight, sBot, (charge / maxCharge * 100), c_dkgray, c_yellow, c_red, 3, true, false); 


