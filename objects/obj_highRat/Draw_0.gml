/// @description PATHING LINE AND SCURRY BOX DEBUG

// Inherit the parent event
event_inherited();

if (global.debugf1) {
	draw_line(x, y, xMove, yMove);
	draw_rectangle(originX - scurryBox, originY - scurryBox, originX + scurryBox, originY + scurryBox, true);
}

