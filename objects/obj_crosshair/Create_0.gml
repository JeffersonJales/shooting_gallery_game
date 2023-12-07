/// @description 

/*
	This object will move with acceleration
	It cannot move out of bounds of the camera
*/

camera_ind = view_get_camera(view_camera_index);
x = camera_get_view_x_center(view_camera_index);
y = camera_get_view_y_center(view_camera_index);



move = function(spd_init, spd_hor = 0, spd_ver = 0){
	x += spd_hor * spd_init;	
	y += spd_ver * spd_init;
	
	var _x = camera_get_view_x(camera_ind);
	var _y = camera_get_view_y(camera_ind);
	var _xx = _x + camera_get_view_width(camera_ind);
	var _yy = _y + camera_get_view_height(camera_ind);
	
	_x += camera_offset_general;
	_y += camera_offset_general;
	_xx -= camera_offset_general;
	_yy -= camera_offset_general + camera_offset_y_down;
	
	if(x < _x) x = _x;
	else if(x > _xx) x = _xx;
	
	if(y < _y) y = _y;
	else if(y > _yy) y = _yy;
}

set_sprite_idle = function(){ instance_sprite_set_check(spr_crosshair_idle); }
set_sprite_shooting = function(){ instance_sprite_set_check(spr_crosshair_shooting); }

