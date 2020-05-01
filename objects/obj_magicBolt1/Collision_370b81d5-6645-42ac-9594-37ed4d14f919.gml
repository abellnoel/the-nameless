/// @description Destroy on wall hit
if (!other.projectilePass) {
	if(projectileType == obj_magicBolt1) {
		//magic impact sound need here				
	} else {
		audio_play_sound(arrow_hit, 10, false);		
	} 
	instance_destroy();
}