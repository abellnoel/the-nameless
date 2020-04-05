var summon = argument0;

if (canAttack) {
	instance_create_layer(x, y, "Instances", summon); 
	canAttack = false;
	alarm[0] = room_speed * attackSpeed;
}