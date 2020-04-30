/* DESCRIPTION: 
	- Destroys instance upon 0 or less hp 
	- Creates specified death animation scaled to current sprite
	- Assumes all sprites are multiples of 16 and square
*/

//VARIABLES REQUIRED FROM CALLING INSTANCE
//hp

//move argument into named variable
deathAnimation = argument0;
objectType = argument1; //player or enemy

if (hp <= 0) {
	if (objectType == obj_enemy) {
		audio_play_sound(Rat_Dying, 10, false);
	}
	deathAnimation = instance_create_layer(x, y, "Instances", deathAnimation);
	scaleFactor = sprite_height / deathAnimation.sprite_height;
	deathAnimation.image_xscale = scaleFactor;
	deathAnimation.image_yscale = scaleFactor;
	instance_destroy();
}