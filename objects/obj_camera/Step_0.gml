/// @description Follow the target

if (instance_exists(target)) {
	global.cameraX = target.x - (global.cameraWidth / 2);
	global.cameraY = target.y - (global.cameraHeight / 2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

// Parallax effect (moving background when moving camera)
layer_x("Parallax_background_0", global.cameraX * 0.98);
layer_y("Parallax_background_0", global.cameraX * 0.98);

layer_x("Parallax_background_1", global.cameraX * .92);
layer_y("Parallax_background_1", global.cameraY * .92);

layer_x("Parallax_background_2", global.cameraX * .88);
layer_y("Parallax_background_2", global.cameraY * .88);

layer_x("Parallax_background_3", global.cameraX * .84);
layer_y("Parallax_background_3", global.cameraY * .84);