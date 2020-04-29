/// @desc Screen fade
draw_set_alpha(fadeAlpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 1280, 720, false);
if (gateUp) {
	fadeAlpha += fadeRate;
	if (alarm[0] == -1) {
		alarm[0] = room_speed * 5; //return to menu after five seconds
	}
}