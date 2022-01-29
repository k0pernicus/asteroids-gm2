/// @description User stepper

image_index = !invicible ? 0 : 1;

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

if (keyboard_check_pressed(vk_space)) {
	spawn_bullet(id, image_angle, 6, faction, color);
}

move_wrap(true, true, sprite_width / 2);