switch (room) {
 case rm_game:
	if (debug_mode) show_debug_message("game screen");
	draw_text(20, 20, "SCORE: " + string(score));
	draw_text(20, 40, "LIVES: " + string(lives));
	if (debug_mode) draw_text(20, 60, "ASTRO: " + string(global.asteroids));
	break;
	
 case rm_start:
	if (debug_mode) show_debug_message("start screen");
	draw_set_halign(fa_center);
	var c = c_yellow;
	draw_text_transformed_color(room_width / 2, 100, "SPACE ROCKS", 2, 2, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 200,
	@"Score 1,000 points to win!
	
	UP: move
	LEFT/RIGHT: change direction
	SPACE: shoot
	Q: quit game
	
	>> PRESS ENTER TO START
	");
	draw_set_halign(fa_left);
	break;
	
 case rm_win:
	if (debug_mode) show_debug_message("win screen");
	draw_set_halign(fa_center);
	var c = c_lime;
	draw_text_transformed_color(room_width / 2, 100, "YOU WON!", 2, 2, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 200, "PRESS ENTER TO RESTART / Q TO QUIT");
	draw_set_halign(fa_left);
	break;
	
 case rm_gameover:
	if (debug_mode) show_debug_message("gameover screen");
	draw_set_halign(fa_center);
	var c = c_red;
	draw_text_transformed_color(room_width / 2, 100, "GAME OVER!", 2, 2, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
	draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART / Q TO QUIT");
	draw_set_halign(fa_left);
	break;
}