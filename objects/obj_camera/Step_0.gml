/// @desc Follow player
if (instance_exists(obj_player)) {
	x = obj_player.x;
	y = obj_player.y;
}
//camera moves to nearest enemy once player is killed
else {
	enemyFollow = instance_nearest(x, y, obj_enemy);
	if (instance_exists(enemyFollow)) {
		x = enemyFollow.x;
		y = enemyFollow.y;
	}
}
x = clamp(x, viewWidth / 2, room_width - viewWidth / 2); 
y = clamp(y, viewHeight / 2, room_width - viewHeight / 2); 
//set camera with new coordinates
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(playerCamera, viewMatrix);
