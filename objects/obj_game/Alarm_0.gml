/// @description Create asteroid alarm
if (room != rm_game) {
	exit;	
}

spawn_off_camera(obj_asteroid, 1);

alarm[0] = 1 * room_speed;