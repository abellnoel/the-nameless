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
spriteLeft = spr_kingRatL;
spriteRight = spr_kingRatR;

//initial delay til first slam attack
alarm[11] = room_speed * slamAttackSpeed;