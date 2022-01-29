/// @description Insert description here
// You can write your code in this editor
sprite_index = choose(
	spr_asteroid_small,
	spr_asteroid_medium,
	spr_asteroid_big
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1

global.asteroids += 1;

faction = factions.neutral;