/// @description Insert description here
// You can write your code in this editor
getInput();

if(instance_exists(obj_gas)) {
	var gas = instance_nearest(x,y,obj_gas);
	if(place_meeting(x,y,gas) && gas.gas > 0 && keyInteract){
		stats.gas += gas.gas;
		with(gas) instance_destroy();
	}
}

if(instance_exists(obj_ammo)) {
	var bullet = instance_nearest(x,y,obj_ammo);
	if(place_meeting(x,y,bullet) && bullet.rounds > 0 && keyInteract){
		stats.bullets += bullet.rounds;
		with(bullet) instance_destroy();
	}
}