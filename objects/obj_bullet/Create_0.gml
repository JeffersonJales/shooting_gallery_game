/// @description 

lifetime = 0;
scale_loss = 0;

get_damage = function(){
	return damage;	
}

set_target_position = function(_x, _y){
	var _dir = point_direction(x, y, _x, _y);
	var _dist = point_distance(x, y, _x, _y);
	
	var _len_x = lengthdir_x(_dist, _dir);
	var _len_y = lengthdir_y(_dist, _dir);
	
	lifetime = ceil(_dist / spd_bullet);
	
	hspeed = _len_x / lifetime;
	vspeed = _len_y / lifetime;
	scale_loss = size_loss / lifetime;
}

collision_check = function(){
	var _inst = instance_place(x, y, obj_target_search)
	if(_inst != noone) _inst.on_bullet_hit(id);	
}
