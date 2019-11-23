/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_papa)){
	showInteract = true;
	contact = obj_papa;
} else if(place_meeting(x,y,obj_son)){
	contact = obj_son;
} else {
	contact = noone;
}

if(contact != noone){
	hsp = sign(contact.hsp);
} else {
	hsp = 0;
	showInteract = false;
}

if(hsp != 0) {
	image_angle -= scale * sign(hsp);
}
