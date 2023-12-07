/// @description Hit Box Visible Swap
global.debug.collision_visible = !global.debug.collision_visible;
with(obj_hitbox) visible = global.debug.collision_visible;
