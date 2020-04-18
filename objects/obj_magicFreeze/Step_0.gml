/// @description Increase size and slowly spin

//scale up
if (image_xscale < maxScale && !maxReached) { 
	image_xscale += scaleSpeed;
	image_yscale += scaleSpeed;
}
//scale back down once max is reached
else {
	maxReached = true;
	image_xscale -= scaleSpeed;
	image_yscale -= scaleSpeed;
}
//destroy once scale down is complete
if (image_xscale == 0) {
	instance_destroy();
}
//spin sprite
image_angle += spinSpeed;