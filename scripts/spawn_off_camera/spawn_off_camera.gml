///@description spawn object(s) around / off the camera
///@arg object: the object to spawn
///@arg number: the number of object(s) to spawn
function spawn_off_camera(object, number){
	var xx, yy;
	var pad = 64;
	repeat (number) {
		xx = random_range(0, room_width);
		yy = random_range(0, room_height);
		while (point_in_rectangle(
			xx, 
			yy, 
			global.cameraX - pad, 
			global.cameraY - pad,
			global.cameraX + global.cameraWidth + pad, 
			global.cameraY + global.cameraHeight + pad)
		) {
			xx = random_range(0, room_width);
			yy = random_range(0, room_height);
		}
		instance_create_layer(xx, yy, "Instances", object);
	}
}