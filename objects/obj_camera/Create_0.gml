/// @desc Create camera with matrix parameters
playerCamera = view_camera[0];
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projectionMatrix = matrix_build_projection_ortho(1280, 720, 1, 5000);
camera_set_view_mat(playerCamera, viewMatrix);
camera_set_proj_mat(playerCamera, projectionMatrix);