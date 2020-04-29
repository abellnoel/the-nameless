/// @description Detect player
if (instance_exists(obj_exitDetector)) {
if (obj_exitDetector.detected) {
if (instance_exists(obj_exitSolid)) {
if (instance_exists(obj_player)) {
	var detector = instance_nearest(obj_player.x, obj_player.y, obj_exitDetector);
	switch (detector.detectId) {
		//detector near closed gate
		case 0:
			instance_destroy(obj_exitSolid);
			//remove bars
			gateDown = true;
			instance_destroy(detector); //destroy detector
	}
}
}
}
}

