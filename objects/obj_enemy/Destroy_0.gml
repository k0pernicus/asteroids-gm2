/// @description When destroying an enemy

if (allow_playing_sound) audio_play_sound(snd_crash_ship, 1, false);

repeat (10) {
	instance_create_layer(x,y,"Instances",obj_debris);
}

global.enemies -= 1;