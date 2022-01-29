if (room == rm_start) {
	if (global.allow_playing_sound) {
		audio_play_sound(msc_start, 1, false);
	}
}

if (room == rm_game && !global.playing) {
	spawn_off_camera(obj_asteroid, global.start_asteroids);
	if (audio_is_playing(msc_game)) {
		audio_stop_sound(msc_game);
	}
	if (global.allow_playing_sound) {
		audio_play_sound(msc_game, 2, true);
	}
	alarm[0] = 60;
}