/// @desc Follow player
if (instance_exists(obj_player)) {
	x = obj_player.x;
	y = obj_player.y;
}
//camera moves to nearest enemy once player is killed
else {
	enemyFollow = instance_nearest(x, y, obj_enemy);
	x = enemyFollow.x;
	y = enemyFollow.y;
}
//set camera with new coordinates
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(playerCamera, viewMatrix);