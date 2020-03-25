/// @description Lowly rat scurries to random locations within a box around itself
// Inherit the parent event
event_inherited();

//movement (required for scurry)
move = true;
xMove = x;
yMove = y;

//attack (required for attackContact)
canAttack = true;

//sprite change (direction that it is moving or facing)
spriteLeft = spr_highRatL;
spriteRight = spr_highRatR;

