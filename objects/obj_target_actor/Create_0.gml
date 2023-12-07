/// @description FSM Animations

fsm = new SnowState("idle");
fsm.event_set_default_function("animend", do_nothing);

take_damage = function(){
	fsm.change("hurt");	
}
death = function(){
	fsm.change("die");	
}


fsm.add("idle", {
	enter : function(){
		instance_sprite_set(spr_idle);
	}
})

fsm.add("hurt", {
	enter : function(){
		instance_sprite_set(spr_hurt);	
	},
	
	animend : function(){
		fsm.change("idle");
	}
})

fsm.add("die", {
	enter : function(){
		instance_sprite_set(spr_death);	
	},
	animend : function(){
		instance_destroy();	
	}
})