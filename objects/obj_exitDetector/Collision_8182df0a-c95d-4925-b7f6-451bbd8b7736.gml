/// @description Event flag triggers
switch (detectId) {
	//detector near closed gate
	case 0:
		if (instance_exists(obj_exitSolid)) {
			instance_destroy(obj_exitSolid);
		}
		//remove bars
		obj_exitController.gateDown = true;
		instance_destroy(); //destroy detector
		break;
	case 1: 
		//add bars to exit
		obj_exitController.playerExit = true;
		instance_destroy(obj_player);
		break;
}