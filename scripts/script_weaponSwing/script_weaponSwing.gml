//transfer argument into readable variable
weaponSwing = argument0;

//create specified swing object
swing = instance_create_layer(x, y, "Instances", weaponSwing);
swing.damage = attackDamage;
swing.image_angle = point_direction(x, y, mouse_x, mouse_y);
swing.alarm[0] = room_speed * swing.swingDuration;
