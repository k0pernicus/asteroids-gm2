/// @description Room restart

if (room == rm_game && score >= 0 && !instance_exists(obj_ship) ) {
    var ship = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_ship);
    // Allows to be invincible for 2 seconds
	with (ship) {
		restart_bonus = true;
		alarm[3] = 2 * room_speed;
	}
}