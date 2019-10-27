/// @description Insert description here
// You can write your code in this editor
depth = -y;
if(instance_exists(obj_papa)) {
	follow = obj_papa;
}
var toF = 0;
if(x > follow.x + radius || x < follow.x - radius) {
	idle = false;
	toF = point_direction(x,y,follow.x,follow.y);
} else {
	idle = true;
	if(idle) {
		hsp = 0;
		vsp = 0;
	}
}
if(!idle) {
	hsp = lengthdir_x(movespeed,toF);
	vsp = lengthdir_y(movespeed,toF);
}

// vertical

if(place_meeting(x, y + vsp, obj_wall)) {
	var xplus = 0;
	while(!place_meeting(x + xplus, y + vsp, obj_wall) && xplus < abs(3*vsp)) {
		xplus++;
	}
	if(place_meeting(x - xplus, y + vsp, obj_wall)) {
		while(!place_meeting(x, y + sign(vsp), obj_wall)) {
			y += sign(hsp);
		} 
		vsp = 0;
	} else {
		x -= xplus;
	}
}
y += vsp;

// horizontal 
if(place_meeting(x + hsp, y, obj_wall)) {
	var yplus = 0;
	while(!place_meeting(x + hsp, y + yplus, obj_wall) && yplus < abs(3*hsp)) {
		yplus++;
	}
	if(place_meeting(x + hsp, y - yplus, obj_wall)) {
		while(!place_meeting(x + sign(hsp), y, obj_wall)) {
			x += sign(hsp);
		} 
		hsp = 0;
	} else {
		y -= yplus;
	}
}
x += hsp;


if(hsp != 0 || vsp != 0) {
	if(hsp != 0) image_xscale = sign(hsp);
	if(sprite_index != spr_son_walk) {
		image_index = 0;
		sprite_index = spr_son_walk;
	}
} else {
	if(sprite_index != spr_son_idle) {
		image_index = 0;
		sprite_index = spr_son_idle;
	}
}