/// @desc Follow player
view_camera[0] = playerCamera;
if (instance_exists(obj_player)) {
	x = obj_player.x;
	y = obj_player.y;
	var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
	camera_set_view_mat(playerCamera, viewMatrix);
}