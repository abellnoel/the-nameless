/// @description Debug position and fade effect
//show credits controller position
if (drawPosition) {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(639, 0, string(y));
}

//Fade position
draw_set_alpha(fadeAlpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 1280, 720, false);
if (fade) {
	fadeAlpha += fadeRate;
	if (alarm[0] == -1) {
		alarm[0] = room_speed * 5; //return to menu after five seconds
	}
}