var shotType = argument0;

//create shot at player
var shot = instance_create_layer(x, y, "Instances", shotType);

//direction of mouse from player or enemy shoots projectile towards the player
if(object_index == obj_highRatShaman) {
	var shotDir = point_direction(x, y, obj_player.x, obj_player.y); 
} else if(object_index == obj_highRatArcher) {
	var shotDir = point_direction(x, y, obj_player.x, obj_player.y); 
} else if(object_index == obj_highRatCrossbowman) {
	var shotDir = point_direction(x, y, obj_player.x, obj_player.y); 
} else {
	var shotDir = point_direction(x, y, mouse_x, mouse_y); 
}
//set shot range pointers
shot.travelPointX = x + lengthdir_x(shot.range, shotDir);
shot.travelPointY = y + lengthdir_y(shot.range, shotDir);
//change shot direction to direction of mouse
shot.direction = shotDir;
//change sprite angle to match direction 
shot.image_angle = shotDir;
//change shot damage to attack damage
shot.damage = attackDamage;

