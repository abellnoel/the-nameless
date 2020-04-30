/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(instance_exists(obj_player)) {
	//Array list that stores different music note color
	musicNoteArr[0]= spr_noteShotYellow;
	musicNoteArr[1]= spr_noteShotPurple;
	musicNoteArr[2]= spr_noteShotGreen;
	musicNoteArr[3]= spr_noteShotBlue;
	musicNoteArr[4]= spr_noteShotLime;
	musicNoteArr[5]= spr_noteShotPink;
	musicNoteArr[6]= spr_noteShotOrange;
	musicNoteArr[7]= spr_noteShotAqua;

	musicNoteCounter++;//increments
	if(musicNoteCounter == 8) {
		 musicNoteCounter = 0;//resets counter
	} 
	//sets a different music note srpite
	object_set_sprite(obj_noteShot, musicNoteArr[musicNoteCounter]);
}