/// @description Insert description here
// You can write your code in this editor
camera = camera_create();

viewWidth = 228;
viewHeight = 128;

var vm = matrix_build_lookat(x,y,-1080,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,1,100000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

follow = obj_papa;
xTo = x;
yTo = y;