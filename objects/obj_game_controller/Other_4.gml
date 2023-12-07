/// @description 
camera_room_start_config();

var _crosshair = instance_create_depth(0, 0, 0, obj_crosshair);
var _player_actor = instance_create_depth(room_width * 0.5, room_height - 20, 0, obj_player_actor);
var _player_input = instance_create_depth(0, 0, 0, obj_player_actor_controller);

_player_input.__config(_player_actor, _crosshair);