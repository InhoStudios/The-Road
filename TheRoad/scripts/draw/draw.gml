if(!shooting){
	sprite_index = spr_papa_draw;
	if(image_index >= image_number - 1){
		// pause after drawing weapon
		image_speed = 0;
		// if space is pressed, put weapon away
		if(keyDraw) {
			image_speed = -0.3;
		}
		shooting = false;
	}
	// if shooting, shoot
	if(mbShoot && bullets > 0){
		image_speed = 0.3;
		sprite_index = spr_papa_shoot;
		image_index = 0;
		// creating bullet
		var yy = y - 18;
		var bul = instance_create_depth(x,yy,depth,obj_bullet);
		bul.image_xscale = image_xscale;
		bullets--;
		shooting = true;
		// if no bullets, retract
	} else if (mbShoot && bullets <= 0){
		image_speed = -0.3;
	}
}
// if retracting weapon
if(image_speed < 0 && sprite_index == spr_papa_draw) {
	shooting = false;
	if(image_index <= 1){
		image_speed = 0.3;
		sprite_index = spr_papa_idle;
		state = move;
	}
}
// handle animations for after shooting
if(shooting){
	if(image_index >= image_number - 1){
		image_speed = 0;
		sprite_index = spr_papa_draw;
		image_index = image_number - 1;
		shooting = false;
	}
}
	