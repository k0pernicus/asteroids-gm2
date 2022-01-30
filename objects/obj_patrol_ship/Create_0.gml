/// @description The enemy - just created in the game, does not move EXCEPT
/// it notices the player on the screen, and tries to shoot him as soon as 
/// it can.

// Inherit the parent event
event_inherited();

bullet_counter = 0; // Current bullet ticks
bullet_spawing_latency = 60; // The number of ticks in order to throw another bullet
speed = 0.1;

originalSpeed = speed; // Save the original speed of the enemy
direction = irandom_range(0, 359);
image_angle = direction;