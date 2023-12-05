/// @description 

actor_inst = noone; 
crosshair_inst = noone;

/// @arg {Id.Instance<obj_player_actor>} actor 
/// @arg {Id.Instance<obj_crosshair>} crosshair 
__config = function(actor, crosshair){
	actor_inst = actor;
	crosshair_inst = crosshair;
}

input_dir_x = 0;
input_dir_y = 0;

input_dir_get = function(){
	input_dir_x = keyboard_check(vk_right) - keyboard_check(vk_left);
	input_dir_y = keyboard_check(vk_down) - keyboard_check(vk_up);
}

bullet_spawn = function(){
	actor_inst.shooting_init();
	
	var _x = actor_inst.get_gun_position_x();
	var _y = actor_inst.get_gun_position_y();
	var _bullet = instance_create_depth(_x, _y, actor_inst.depth + 1, obj_bullet);	
	_bullet.set_target_position(crosshair_inst.x, crosshair_inst.y);	
}

fsm = new SnowState("idle", false);
fsm.add("idle", {
	enter : function(){
		actor_inst.shooting_stop();
		crosshair_inst.set_sprite_idle();
	},
	step : function(){
		input_dir_get();
		actor_inst.move(input_dir_x);
		crosshair_inst.move(input_dir_x, input_dir_y);
	
		if(keyboard_check(vk_space))
			fsm.change("shooting");
	}
})
fsm.add("shooting", {
	enter : function(){
		bullet_spawn();
		crosshair_inst.set_sprite_shooting();
	},
	step : function(){
		input_dir_get();
		crosshair_inst.move(input_dir_x, input_dir_y);

		if(keyboard_check(vk_space)){
			if(--trigger_cd <= 0){
				bullet_spawn();
				trigger_cd = 10;
			}
		}
		else
			fsm.change("idle");

	},
})
