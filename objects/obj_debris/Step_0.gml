/// @description Let it disappear one by one...
image_alpha = image_alpha - 0.01;
if (image_alpha <= 0) {
	instance_destroy();	
}