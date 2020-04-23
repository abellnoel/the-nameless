/// @description Draw death message
if (room != rm_menu) {
	display_set_gui_size(1280, 720);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_default);
	if (dead) {
		draw_text(display_get_gui_width() / 2, display_get_gui_height() /2, "You have fallen..." +
																			"\n(Press R to restart)");
	}
	if (room_complete) {
		draw_text(display_get_gui_width() / 2, display_get_gui_height() /2, "You have defeated the hoards!" +
																			"\n(To be continued...)");
	}
}