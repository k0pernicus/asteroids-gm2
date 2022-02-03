switch (room) {
 case rm_game:
	if (debug_mode) show_debug_message("game screen");
	
	draw_text(20, 20, "SCORE: " + string(score));
	draw_text(20, 40, "LIVES: " + string(lives));
	with (obj_ally) {
		draw_text(20, 60, "SHIELD: " + string(under_shield_gauge));	
	}
	if (debug_mode) draw_text(20, 80, "ASTRO: " + string(global.asteroids));
	if (debug_mode) draw_text(20, 100, "ENEMI: " + string(global.enemies));
	break;
	
 case rm_options:
	if (debug_mode) show_debug_message("options menu screen");
	draw_set_halign(fa_center);
	var c = c_yellow;
	draw_text_transformed_color(room_width / 2, 100, "OPTIONS", 2, 2, 0, c, c, c, c, 1);
	
	if (keyboard_check_pressed(vk_down)) {
		global.current_difficulty = (global.current_difficulty - 1) % 3;
		if (global.current_difficulty < 0) global.current_difficulty = difficulties.insane;
	}
	
	if (keyboard_check_pressed(vk_up)) {
		global.current_difficulty = (global.current_difficulty + 1) % 3;
	}
	
	if (keyboard_check_pressed(vk_enter)) {
		room_goto(rm_start);
	}
	
	global.current_difficulty = global.current_difficulty == undefined ? difficulties.medium : global.current_difficulty;
	
	// Select the difficulty of the game
	switch (global.current_difficulty) {
		case difficulties.easy:
			draw_text(room_width / 2, 200, "Current difficulty: Easy");
			break;
		case difficulties.medium:
			draw_text(room_width / 2, 200, "Current difficulty: Medium");
			break;
		case difficulties.insane:
			draw_text(room_width / 2, 200, "Current difficulty: Insane");
			break;
	}
	
	draw_text(room_width / 2, 300, "PRESS >> ENTER << TO VALIDATE");
	
	draw_set_halign(fa_left);
	break;
	
 case rm_start:
	if (debug_mode) show_debug_message("start screen");
	if (global.current_difficulty == undefined) room_goto(rm_options);
	draw_set_halign(fa_center);
	var c = c_yellow;
	draw_text_transformed_color(room_width / 2, 100, "ASTROFUCKOID", 2, 2, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 200,
	@"Score " + string(global.max_score) + @" points to win!
	
	UP or DOWN: move ship
	LEFT or RIGHT: rotate ship
	SHIFT + (LEFT or RIGHT): lateral movement
	SPACE: fire
	CTRL: shield
	Q (in menu): quit
	ESC: options (only in this menu)
	
	PRESS >> ENTER << TO START
	");
	draw_set_halign(fa_left);
	break;
	
 case rm_win:
	if (debug_mode) show_debug_message("win screen");
	draw_set_halign(fa_center);
	var c = c_lime;
	draw_text_transformed_color(room_width / 2, 100, "YOU WON!", 2, 2, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 200, "PRESS >> ENTER << TO RESTART / >> Q << TO QUIT");
	draw_set_halign(fa_left);
	break;
	
 case rm_gameover:
	if (debug_mode) show_debug_message("gameover screen");
	draw_set_halign(fa_center);
	var c = c_red;
	draw_text_transformed_color(room_width / 2, 100, "GAME OVER!", 2, 2, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
	draw_text(room_width / 2, 300, "PRESS >> ENTER << TO RESTART / >> Q << TO QUIT");
	draw_set_halign(fa_left);
	break;
}