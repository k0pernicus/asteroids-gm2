/// @description Instance of the game

/// @description A faction describes the "tribute" or "category" of an object.
enum factions {
	ally, // Player + allies
	enemy, // Basically: enemies... thanks doc
	neutral // All others "objects"
}

/// @description Difficulties allows to trick settings in order to make
/// the player more angry or less angry...
enum difficulties { // TODO: Let the player choose
	easy,
	medium, // The "normal" difficulty
	insane,
}

global.current_difficulty = difficulties.easy; // TODO: Uses the game difficulty everywhere
global.max_score = global.current_difficulty == difficulties.easy ? 500 : 
				   (global.current_difficulty == difficulties.medium ? 1000 : 
				    10000);
// Asteroids
global.asteroids = 0;
global.start_asteroids = global.current_difficulty == difficulties.easy ? 20 :
						 (global.current_difficulty == difficulties.medium ? 40:
						  60);
// Enemies
global.enemies = 0;
global.start_patrols = global.current_difficulty == difficulties.easy ? 3 :
					   (global.current_difficulty == difficulties.medium ? 5 :
					    8);
global.start_hunters = global.current_difficulty == difficulties.easy ? 4 :
					   (global.current_difficulty == difficulties.medium ? 8 :
					    12); // Do not allow more, as enemies AI is not stupid at all...					
global.start_paralizers = global.current_difficulty == difficulties.easy ? 5 :
					   (global.current_difficulty == difficulties.medium ? 8 :
					    12); // Do not allow more, as enemies AI is not stupid at all...
// Bonus restart
global.max_under_shield_ticks = global.current_difficulty == difficulties.easy ? 8 :
								(global.current_difficulty == difficulties.medium ? 5 :
								 2);

// Prevent double instance of game object running at the same time
global.playing = false; // Prevent the "Room Start" to be called twice
#macro allow_playing_sound false // Play sound or not
score = 0;
lives = global.current_difficulty == difficulties.easy ? 5 :
		(global.current_difficulty == difficulties.medium ? 3 :
		 1);
