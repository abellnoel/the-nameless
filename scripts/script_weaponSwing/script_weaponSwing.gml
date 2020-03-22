//transfer argument into readable variable
weaponSwing = argument0;

//create specified swing object
swing = instance_create_layer(x, y, "Instances", weaponSwing);

//set swing objects damage to calling instance's attackDamage
swing.damage = attackDamage;

//swing is faced toward mouse
swingDir = point_direction(x, y, mouse_x, mouse_y); 
swing.image_angle = swingDir;
swing.following = id; //set swing to follow calling instance