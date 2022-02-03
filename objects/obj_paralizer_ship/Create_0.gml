/// @description The paralizer ship paralizes the ship
/// during X seconds (where X can be parametrized)
event_inherited();

HP = 2;
bullet_counter = 0; // Current bullet ticks
bullet_spawing_latency = 180; // Allows to paralize the Player only once per 3 seconds
paralize_seconds = 1;
speed = 1.5;
originalSpeed = speed; // Save the original speed of the enemy
direction = irandom_range(0, 359);
image_angle = direction;
image_blend = c_purple;