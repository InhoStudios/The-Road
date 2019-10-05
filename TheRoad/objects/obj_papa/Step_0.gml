/// @description Insert description here
// You can write your code in this editor
getInput();

hsp = movespeed * (keyRight - keyLeft);

// vertical
if(vsp < 10){
	vsp += grav;
}

if(place_meeting(x,y + vsp, obj_wall)){
	while(!place_meeting(x,y + sign(vsp), obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

// horizontal 
if(place_meeting(x + hsp, y, obj_wall)){
	var yplus = 0;
	while(!place_meeting(x + hsp, y + yplus, obj_wall) && yplus < abs(3*hsp)){
		yplus++;
	}
	if(place_meeting(x + hsp, y - yplus, obj_wall)){
		while(!place_meeting(x + sign(hsp), y, obj_wall)){
			x += sign(hsp);
		} 
		hsp = 0;
	} else {
		y -= yplus;
	}
}
x += hsp;

// animation
if(hsp != 0){
	image_xscale = sign(hsp);
	if(sprite_index != spr_papa_walk){
		image_index = 0;
		sprite_index = spr_papa_walk;
	}
} else {
	if(sprite_index != spr_papa_idle){
		image_index = 0;
		sprite_index = spr_papa_idle;
	}
}