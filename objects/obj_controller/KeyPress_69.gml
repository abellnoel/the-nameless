/// @description Spawn Enemy
xx = irandom(room_width);
yy = irandom(room_height);
instance_create_layer(xx, yy, "Instances", obj_lowlyRat);
instance_create_layer(xx, yy, "Instances", obj_highRat);
instance_create_layer(xx, yy, "Instances", obj_kingRat);