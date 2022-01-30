/// @description User action

// This allows the Player to use his own shield
// The shield will protect him from asteroids or enemies,
// **but** the shield is a limited resource.
// Each tick the Player does not use it, it "regenerates" by itself.
// Otherwise, the shield resistence decreases, until it is empty.
// Once empty, the Player can't uses it anymore, and has to wait that 
// it has been a little regenerated...
var attempt_under_shield = keyboard_check(vk_control);
if (attempt_under_shield) {
	if (under_shield_gauge > 0) {
		under_shield_gauge -= 0.05;
		under_shield = true;
	} else under_shield = restart_bonus;
} else {
	under_shield = restart_bonus;
	if (under_shield_gauge < global.max_under_shield_ticks) under_shield_gauge += 0.005;
}

// under_shield sprite part
image_index = !under_shield ? 0 : 1;

// Allows minimal angle (rotation for the Player)
var angle_rotation = 2.5;
// Allows minimal movement for motion_add
var motion_mvt = 0.05;

// Move action
// Shift allows lateral movements
if (keyboard_check(vk_shift)) {
	// Using shift key, the Player can move left / right lateral move(s)
	if (keyboard_check(vk_left)) motion_add(image_angle + 90, motion_mvt);
	if (keyboard_check(vk_right)) motion_add(image_angle - 90, motion_mvt);
} else {
	// Basic direction / moves
	if (keyboard_check(vk_left)) image_angle += angle_rotation;
	if (keyboard_check(vk_right)) image_angle -= angle_rotation;
	if (keyboard_check(vk_up)) motion_add(image_angle, motion_mvt);
	if (keyboard_check(vk_down)) motion_add(image_angle, -motion_mvt); // TODO: find a way to stop the Player...
}

// Allow to shoot in both lateral / 360 moves, EXCEPT if the
// the ship is under a shield
if (!attempt_under_shield && keyboard_check_pressed(vk_space)) 
	spawn_bullet(id, image_angle, bullet_speed, faction, color);