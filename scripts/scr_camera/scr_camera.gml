
function camera_get_view_x_center(view = 0){
	var _cam = view_get_camera(view)
	return camera_get_view_x(_cam) + camera_get_view_width(_cam) * 0.5;	
}

function camera_get_view_y_center(view = 0){
	var _cam = view_get_camera(view)
	return camera_get_view_y(_cam) + camera_get_view_height(_cam) * 0.5;	
}

function camera_room_start_config(view = 0, _x = 0, _y = 0, _cam_w = room_width, _cam_h = room_height, _vport_w = 1366, _vport_h = 768){
	view_enabled = true;
	
	var _cam = camera_create_view(_x, _y, _cam_w, _cam_h);
	view_set_camera(view, _cam);
	
	view_set_visible(view, true);
	view_set_wport(view, _vport_w);
	view_set_hport(view, _vport_h);
	
	//window_set_size(_vport_w, _vport_h);
}