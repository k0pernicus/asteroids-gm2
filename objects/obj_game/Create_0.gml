/// @description Instance of the game

/// @description A faction describes the "tribute" or "category" of an object.
enum factions {
	ally, // Player + allies
	enemy, // Basically: enemies... thanks doc
	neutral // All others "objects"
}

/// @description Difficulties allows to trick settings in order to make
/// the player more angry or less angry...
enum difficulties { // TODO: implement this
	easy,
	medium, // The "normal" difficulty
	hard,
	too_hard_for_you,
}

global.current_difficulty = difficulties.medium;
global.max_score = 1000;
global.asteroids = 0;
global.start_asteroids = 40;
global.playing = false; // Prevent the "Room Start" to be called twice
global.allow_playing_sound = false; // Play sound or not
score = 0;
lives = 3;
