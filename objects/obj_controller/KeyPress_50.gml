/// @description Change class to mage
if (!instance_exists(obj_mage)) {
	var xx = obj_player.x;
	var yy = obj_player.y;
	instance_destroy(obj_player);
	instance_create_layer(xx, yy, "Instances", obj_mage);
}

