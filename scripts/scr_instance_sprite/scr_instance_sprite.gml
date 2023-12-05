function instance_sprite_set(sprite, img_index = 0, img_spd = 1){
	sprite_index = sprite;
	image_index = img_index;
	image_speed = img_spd;
}

function instance_sprite_set_check(sprite, img_index = 0, img_spd = 1){
	if(sprite_index != sprite) 
		instance_sprite_set(sprite, img_index, img_spd);
}