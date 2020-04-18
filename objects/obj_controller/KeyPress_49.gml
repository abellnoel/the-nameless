/// @description Change class to warrior
if (!instance_exists(obj_warrior)) {
	var xx = obj_player.x;
	var yy = obj_player.y;
	instance_destroy(obj_player);
	instance_create_layer(xx, yy, "Instances", obj_warrior);
}

