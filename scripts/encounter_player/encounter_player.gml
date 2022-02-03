///@description This script is destinated to add a behaviour to an enemy when it encounters the Player
///@arg observable_distance_to_player The distance between the enemy and the Player when the enemy can "detect" it
///@arg closed_distance_to_player The most closed distance between the enemy and the Player
///@arg speed_bullet The bullet speed
///@arg original_speed The original speed of the object, to reset it when the distance between it and
///the player is more than observable_distance_to_player
function encounter_player(observable_distance_to_player, closed_distance_to_player, speed_bullet, original_speed){
	if (!instance_exists(obj_ship)) exit;
	
	// Computes the distance between the object and the Player (should be only one obj_ship object)
	var distance_between_player = point_distance(x, y, obj_ship.x, obj_ship.y);
	
	if (distance_between_player <= observable_distance_to_player) {
		var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
		// Modify the angle in order to get the minimum angle to turn on the player
		new_angle = image_angle - angle_difference(image_angle, new_angle);
		image_angle = lerp(image_angle, new_angle, 0.1);
		direction = image_angle;
	
		if (distance_between_player <= closed_distance_to_player) {
			speed -= 0.01
		} else   {
			speed += 0.01
		}
	
		// Slow a bit the shoot
		bullet_counter++;
		if (bullet_counter >= bullet_spawing_latency) {
			spawn_bullet(id, image_angle, speed_bullet, faction, color);
			bullet_counter = 0;
		}
	} else {
		speed = lerp(speed, original_speed, 0.1);
	}
}