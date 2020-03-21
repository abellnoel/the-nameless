/// @description Draws player elements
//DEBUG
draw_self(); //makes sure to keep drawing player sprite
if (global.debugf1) {
	draw_set_halign(fa_center);
	draw_text(x, bbox_top - 20, "hinput = " + string(hinput));
	draw_text(x, bbox_top - 30, "vinput = " + string(vinput));
	draw_text(x, bbox_top - 40, "dir = " + string(dir));
}
