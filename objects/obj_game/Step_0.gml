/// @description Choose the room depending on user entry

if (room == rm_game) {
	if (score >= global.max_score) {
		room_goto(rm_win);
		global.playing = false;
	}

	if (lives <= 0) {
		room_goto(rm_gameover);
		global.playing = false;
	}
}

if (keyboard_check_pressed(vk_enter)) {
	switch (room) {
		case rm_start:
			global.playing = true;
			room_goto(rm_game);
			break;
			
		case rm_win:
 	 	 case rm_gameover:
			global.playing = false;
			room_restart();
			room_goto(rm_start);
			break;
	}
}

if (keyboard_check_pressed(vk_escape) && room != rm_options) room_goto(rm_options);

if (room != rm_game && keyboard_check_pressed(ord("Q"))) {
	game_end();
}