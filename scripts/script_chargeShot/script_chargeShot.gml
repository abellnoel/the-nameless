//similar to shootProjectile but uses special variables defined in obj_archer
var shotType = argument0;

//create shot at player
var shot = instance_create_layer(x, y, "Instances", shotType);

//direction
var shotDir = point_direction(x, y, mouse_x, mouse_y); 

//set variables from archer calss
shot.damage = shotDamage;
shot.range = shotRange;
shot.speed = shotProjSpeed;

//set shot range pointers
shot.travelPointX = x + lengthdir_x(shot.range, shotDir);
shot.travelPointY = y + lengthdir_y(shot.range, shotDir);
//change shot direction to direction of mouse
shot.direction = shotDir;
//change sprite angle to match direction 
shot.image_angle = shotDir;

return shot;