/// @description Gives health / lives to the Player
event_inherited();

HP = irandom_range(0, 3); // Because we have 4 frames in our object
color = c_green;
image_blend = color;

direction = irandom_range(0, 359); // Move it to any direction as possible
image_angle = direction;
speed = 0.2; // Very slow speed to be catchable easily

with (obj_lives) {
	alarm[0] = 10 * room_speed; // Detroy the object after 10 seconds if not catched
}