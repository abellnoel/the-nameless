/// @description Menu selection
switch (selection) {
	//PLAY
	case 1: 
		//PLAY
		audio_play_sound(gate, 1, false);
		playPressed = true;
		break;
	//SELECT CLASS
	case 2:
		if (!classSelection) {
			classSelection = true
			instance_create_layer(420, 450, "Instances", classes[classIndex]);
		}
		else {
			classSelection = false;
			instance_destroy(obj_player);
		}
		break;
	//CREDITS
	case 3:
		//credits screen
		room_goto(rm_credits);
		break;
	//EXIT
	case 4:
		game_end();
		break;
}