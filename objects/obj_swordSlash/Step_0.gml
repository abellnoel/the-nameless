/// @desc Destroy and follow

//destroy when animation finishes
if(image_index == image_number - 1) {
	instance_destroy();
}

//follow player position
x = following.x;
y = following.y;