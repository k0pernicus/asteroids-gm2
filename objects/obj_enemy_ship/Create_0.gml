/// @description The enemy

// Inherit the parent event
event_inherited();

invicible = false;
image_blend = color;
bullet_counter = 0;

originalSpeed = speed;
direction = random_range(0, 359);
image_angle = direction;
 