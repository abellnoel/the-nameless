/// @desc Create camera with matrix parameters
playerCamera = camera_create();
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projectionMatrix = matrix_build_projection_ortho(viewWidth, viewHeight, 1.0, 32000.0);
camera_set_view_mat(playerCamera, viewMatrix);
camera_set_proj_mat(playerCamera, projectionMatrix);
//set view's camera to newly created camera
view_camera[0] = playerCamera;
//for enemy following when dead
enemyFollow = noone;
alarmInit = false;