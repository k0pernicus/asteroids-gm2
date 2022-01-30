/// @description Room restart

if (room == rm_game && score >= 0 && !instance_exists(obj_ship) ) {
    var ship = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_ship);
    ship.restart_bonus = true;
	// Remove restart bonus after 3 seconds
	with (ship) {
		alarm[3] = 3 * room_speed;
	}
}