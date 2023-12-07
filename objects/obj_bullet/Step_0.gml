/// @description 
image_xscale -= scale_loss;
image_yscale -= scale_loss;

if(--lifetime <= 0) {
	collision_check();
	instance_destroy();
}
