/// @description Insert description here
// Inherit the parent event
event_inherited();

if (global.debugf1) {
	draw_line(x, y, xMove, yMove);
	if (!instance_exists(obj_kingRat)) {
		draw_rectangle(originX - scurryBox, originY - scurryBox, originX + scurryBox, originY + scurryBox, true);
	}
}