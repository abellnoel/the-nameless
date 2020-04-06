var particleCount = argument0;
var particleSpeed = argument1;

var dir = 0;
var spacing = 360 / particleCount;
for (var i = 0; i < particleCount; i++) {
	var particle = instance_create_layer(x, y, "Instances", obj_slamParticle); 
	particle.speed = particleSpeed;
	particle.direction = dir;
	particle.damage = attackDamage;
	particle.image_angle = dir;
	dir += spacing;
}
