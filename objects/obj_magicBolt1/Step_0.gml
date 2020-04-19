/// @description Track travel distance and move
if (distance_to_point(travelPointX, travelPointY) < speed) {
	//destroy on reaching max range
	instance_destroy();
}