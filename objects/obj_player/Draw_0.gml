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