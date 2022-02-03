if (room == rm_start) {
 	if (allow_playing_sound) {
		audio_play_sound(msc_start, 1, false);
	}
} else if (room == rm_game && !global.playing) {
	spawn_off_camera(obj_asteroid, global.start_asteroids);
	spawn_off_camera(obj_patrol_ship, global.start_patrols);
	spawn_off_camera(obj_hunter_ship, global.start_hunters);
	spawn_off_camera(obj_paralizer_ship, global.start_paralizers);
	if (audio_is_playing(msc_game)) {
		audio_stop_sound(msc_game);
	}
	if (allow_playing_sound) {
		audio_play_sound(msc_game, 2, true);
	}
	alarm[0] = 60;
	global.playing = true;
}