/// @description 
image_xscale -= scale_loss;
image_yscale -= scale_loss;

if(--lifetime <= 0) {
	instance_destroy();
}
