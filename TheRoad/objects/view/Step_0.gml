/// @description Insert description here
// You can write your code in this editor
x += (xTo - x) / 10;
y += (yTo - y) / 10;

if(follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

yTo = clamp(yTo,viewHeight/2,room_height - (viewHeight/2));
xTo = clamp(xTo,viewWidth/2,room_width - (viewWidth/2));

var vm = matrix_build_lookat(x,y,-1080,x,y,0,0,1,0);

camera_set_view_mat(camera,vm);