/// @description Damage
score += 10;
if (allow_playing_sound) {
	audio_play_sound(snd_crash_rock, 1, false);
}

instance_destroy();
	
if (sprite_index == spr_asteroid_medium) {
	repeat(2) {
		var asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
		asteroid.sprite_index = spr_asteroid_small;
	}
} else if (sprite_index == spr_asteroid_big) {
	repeat(2) {
		var asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
		asteroid.sprite_index = spr_asteroid_medium;
	}
}
	
repeat(10) {
	instance_create_layer(x,y,"Instances",obj_debris);	
}