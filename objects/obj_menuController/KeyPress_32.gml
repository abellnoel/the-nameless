/// @description Change classes
if (classSelection) {
	if (classIndex < array_length_1d(classes) - 1) {
		classIndex++;
	}
	else {
		classIndex = 0;
	}
	//change class
	instance_destroy(obj_player);
	instance_create_layer(420, 450, "Instances", classes[classIndex]);
	//update class selected
	global.classSelected = classes[classIndex];
}