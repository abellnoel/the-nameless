/// @description PATHING LINE AND SCURRY BOX DEBUG

// Inherit the parent event
event_inherited();

if (global.debugf1) {
	draw_line(x, y, xMove, yMove);
	draw_set_color(c_red); //set color red
	draw_line(x, y, obj_player.x, obj_player.y); //draw line towards player
	draw_set_color(c_white); //reset back to white
	draw_rectangle(originX - scurryBox, originY - scurryBox, originX + scurryBox, originY + scurryBox, true);
}

