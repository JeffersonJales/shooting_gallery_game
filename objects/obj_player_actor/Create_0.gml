/// @description
spr_idle = sprite_index;
is_shooting = false;

__move_limit_left = 0;
__move_limit_right = room_width;

move = function(dir_x){
	if(is_shooting) return;
	
	if(dir_x == 0){
		instance_sprite_set_check(spr_idle);
	}
	else{
		x += dir_x * move_speed;
		
		if(dir_x > 0) 
			instance_sprite_set_check(spr_right_move);
		else 	
			instance_sprite_set_check(spr_left_move);
	}
	
}

shooting_init = function(){ 
	is_shooting = true; 
	instance_sprite_set_check(spr_shooting);
}
shooting_stop = function(){
	is_shooting = false; 
	instance_sprite_set_check(spr_idle);
}

get_gun_position_x = function(){ return x + gun_position_offset_x; }
get_gun_position_y = function(){ return y + gun_position_offset_y; }