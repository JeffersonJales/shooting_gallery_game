/// @description 
actor = instance_create_layer(x, y, layer, obj_target_actor);
hitboxes = hitbox_data();

on_bullet_hit = function(bullet_inst){
	if(hitboxes.collision_simple(bullet_inst)){
		life -= bullet_inst.get_damage();
		
		if(life <= 0){
			actor.death();
			instance_destroy();
		}
		else{ 
			actor.take_damage();
		}
	}
}
