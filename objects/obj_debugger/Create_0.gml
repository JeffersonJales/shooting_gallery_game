/// @description 
global.debug = {
	collision_visible : false,
	holding_ctrl : false
}


debug_function = function(func){
	if(global.debug.holding_ctrl) func();
}










