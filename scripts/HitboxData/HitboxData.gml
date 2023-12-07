/// @desc
function hitbox_data(instance = id){
	return new HitboxData(instance);	
}

function HitboxData(instance) constructor{
	
	__inst = instance;
	__hit_boxes = ds_list_create();

	
	/**
	 * Function Description
	 * @param {Real} width Description
	 * @param {Real} height Description
	 * @param {real} [offset_x]=0 Description
	 * @param {real} [offset_y]=0 Description
	 * @param {string} [unique_id]="" Description
	 * @returns {id} Description
	 */
	static add = function(width, height, offset_x = 0, offset_y = 0, unique_id = ""){
		var _inst_hitbox = instance_create_depth(__inst.x, __inst.y, __inst.depth - 1, obj_hitbox, {
			image_xscale : width, 
			image_yscale : height,
			offset_x : offset_x,
			offset_y : offset_y,
			__unique_id : unique_id
		});
		
		ds_list_add(__hit_boxes, _inst_hitbox);
		
		return self;
	}
	
	static collision_simple = function(instance){
		for(var i = 0; i < ds_list_size(__hit_boxes); i++){
			if(__hit_boxes[| i].collision_check(instance)) 
				return true;
		}
		
		return false;
	}
	
	static step = function(){
		update_position();	
	}
	
	static update_position = function(){
		var _x = __inst.x, _y = __inst.y;
		
		for(var i = 0; i < ds_list_size(__hit_boxes); i++){
			__hit_boxes[| i].update_position(_x, _y);
		}	
	}
	
	static clean_up = function(){
		list_foreach(__hit_boxes, instance_destroy);
		ds_list_destroy(__hit_boxes);	
	}
}