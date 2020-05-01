/// @description Draw gate
draw_set_alpha(1);
if (!gateDown ) {
	draw_sprite(spr_gate, 0, 192, 1024);
}

if (playerExit) {
	draw_sprite(spr_gate, 0, 1728, gatePos);
	if (gatePos > 1792) {
		gatePos--;
	}
	else {
		gateUp = true;
	}
	
	//play gate sound
	if (!gateSound) {
		audio_play_sound(gate, 1, false);
		gateSound = true;
	}
}
