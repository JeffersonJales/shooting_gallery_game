/// @description 
lifetime = 0;

set_target_position = function(_x, _y){
	var _dir = point_direction(x, y, _x, _y);
	var _dist = point_distance(x, y, _x, _y);
	
	hspeed = lengthdir_x(spd_bullet, _dir);
	vspeed = lengthdir_y(spd_bullet, _dir);
	
	lifetime = floor(_dist / spd_bullet);
	scale_loss = 0.5 / lifetime;
}
