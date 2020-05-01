/// @description Start game if play pressed and sound 
//start game after gate sound finished playing
if (playPressed) {
	if (!audio_is_playing(gate)) {
		room_goto_next();
	}
}