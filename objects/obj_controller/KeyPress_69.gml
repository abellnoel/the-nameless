/// @description Spawn enemy randomly in room
if (room != rm_menu) {
	xx = irandom(room_width);
	yy = irandom(room_height);
	instance_create_layer(xx, yy, "Instances", chosenSpawn);
}
