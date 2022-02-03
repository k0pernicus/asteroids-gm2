function reset_game_instance() {
	lives = 0
	score = 0
	global.enemies = 0
	global.asteroids = 0
}

function set_game_instance() {
	if (! variable_global_exists("current_difficulty")) exit;

	global.max_score = global.current_difficulty == difficulties.easy ? 500 : 
				   (global.current_difficulty == difficulties.medium ? 1000 : 
				    100000);
	// Asteroids
	global.start_asteroids = global.current_difficulty == difficulties.easy ? 20 :
							 (global.current_difficulty == difficulties.medium ? 40:
							  80);
	// Enemies
	global.start_patrols = global.current_difficulty == difficulties.easy ? 3 :
						   (global.current_difficulty == difficulties.medium ? 5 :
						    10);
	global.start_hunters = global.current_difficulty == difficulties.easy ? 4 :
						   (global.current_difficulty == difficulties.medium ? 8 :
						    15); // Do not allow more, as enemies AI is not stupid at all...					
	global.start_paralizers = global.current_difficulty == difficulties.easy ? 5 :
						   (global.current_difficulty == difficulties.medium ? 8 :
						    16); // Do not allow more, as enemies AI is not stupid at all...
	// Bonus restart
	global.max_under_shield_ticks = global.current_difficulty == difficulties.easy ? 8 :
									(global.current_difficulty == difficulties.medium ? 5 :
									 2);
	// How many lives does the current player have ?
	lives = global.current_difficulty == difficulties.easy ? 5 :
			(global.current_difficulty == difficulties.medium ? 3 :
			 1);
}