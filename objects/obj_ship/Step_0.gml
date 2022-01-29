/// @description User stepper

// Invicible sprite part
image_index = !invicible ? 0 : 1;

// Do not allow other cartesian moves (using Shift key)
if (keyboard_check(vk_shift)) {
	if (keyboard_check(vk_left)) {
		// Turn around (90 degrees)
		motion_add(image_angle + 90, 0.05);
	}
	if (keyboard_check(vk_right)) {
		motion_add(image_angle - 90, 0.05);
	}
}
// Basic direction / moves
else {
	if (keyboard_check(vk_left)) {
		image_angle = image_angle + 3.5;
	} 
	if (keyboard_check(vk_right)) {
		image_angle = image_angle - 3.5;
	} 
	if (keyboard_check(vk_up)) {
		motion_add(image_angle, 0.05);
	} 
	if (keyboard_check(vk_down)) {
		motion_add(image_angle, -0.05);
	}
}

// Allow to shoot in both lateral / 360 moves
if (keyboard_check_pressed(vk_space)) {
	spawn_bullet(id, image_angle, 6, faction, color);
}

// Should allow to move the player at beginning / end of "screen" when
// wrapping the camera
move_wrap(true, true, sprite_width / 2);