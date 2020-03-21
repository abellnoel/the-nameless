/// @description Draws enemy elements
//DEBUG
draw_self(); //makes sure to keep drawing player sprite
if (global.debugf1) {
	//show health
	draw_text(x, bbox_top - 20, "health = " + string(hp));
}