/* DESCRIPTION:
	- Spawns specified weapon swing object at calling instance
	- Rotates weapon swing towards mouse position at the time of attack
	- Links calling instances with weapon swing's following variable
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE
//attackDamage
//VARIABLES REQUIRED FROM CALLED WEAPON SWING
//following

//transfer argument into readable variable
weaponSwing = argument0;

//create specified swing object
swing = instance_create_layer(x, y, "Instances", weaponSwing);

//set swing objects damage to calling instance's attackDamage
swing.damage = attackDamage;

//swing is faced toward mouse
if(object_index == obj_highRatWarrior) {
	if(instance_exists(obj_player)) {
		audio_play_sound(Sword_Swing, 10, false);
		swingDir = point_direction(x, y, obj_player.x, obj_player.y); 
	}
} else {
	audio_play_sound(Sword_Swing, 10, false);
	swingDir = point_direction(x, y, mouse_x, mouse_y); 
}
swing.image_angle = swingDir;
swing.following = id; //set swing to follow calling instance