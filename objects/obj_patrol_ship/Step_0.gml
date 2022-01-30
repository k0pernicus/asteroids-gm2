/// @description Step closer to the player, and shoot if close to it

if (!instance_exists(obj_ship)) exit;

var distance_between_player = point_distance(x, y, obj_ship.x, obj_ship.y);

if (distance_between_player <= 250) {
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	// Modify the angle in order to get the minimum angle to turn on the player
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	if (distance_between_player <= 125) {
		speed -= 0.05
	} else {
		speed += 0.01
	}
	
	// Slow a bit the shoot
	bullet_counter++;
	if (bullet_counter >= bullet_spawing_latency) {
		spawn_bullet(id, image_angle, 8, faction, color); // TODO: make the bullet speed as a variable
		bullet_counter = 0;
	}
} else {
	speed = lerp(speed, originalSpeed, 0.1);
}
