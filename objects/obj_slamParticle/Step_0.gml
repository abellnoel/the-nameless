/// @description Destroyed when offscreen
if (x > room_width + sprite_xoffset or x < 0 - sprite_xoffset or
	y > room_height - sprite_yoffset or y < 0 + sprite_yoffset) {
	instance_destroy()
}
	