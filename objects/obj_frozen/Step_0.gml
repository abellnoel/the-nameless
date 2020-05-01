/// @desc Destroy once target is no longer frozen
if (instance_exists(target)) {
	if (target.status != STATUS_EFFECT.FROZEN) {
		instance_destroy();
	}
}
//destroy if target is killed
else {
	instance_destroy();
}
