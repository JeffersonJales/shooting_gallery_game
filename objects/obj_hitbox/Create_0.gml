/// @description Position

on_collision = do_nothing;

collision_check = function(inst){
	return instance_place(x, y, inst);	
}

update_position = function(_x, _y){
	x = _x + offset_x;
	y = _y + offset_y;
}

update_position(x, y);