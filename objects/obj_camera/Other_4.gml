/// @description Camera setup

global.cameraX = 0;
global.cameraY = 0;
target = obj_ship;

global.cameraWidth = 500; // Do not forget to update the rm_start width if this value changes
global.cameraHeight = 500; // Do not forget to update the rm_start height if this value changes

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

if (instance_exists(target)) {
	global.cameraX = target.x - (global.cameraWidth / 2);
	global.cameraY = target.y - (global.cameraHeight / 2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);

	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
}

displayScale = 2;
displayHeight = global.cameraHeight * displayScale;
displayWidth = global.cameraWidth * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

// Do not resize / scale again the GUI
display_set_gui_size(global.cameraWidth, global.cameraHeight);

alarm[0] = 1; // move it to center window after 1 second