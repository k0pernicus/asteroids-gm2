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

// Prevent double instance of game object running at the same time
global.playing = false; // Prevent the "Room Start" to be called twice
global.asteroids = 0;
global.enemies = 0;
#macro allow_playing_sound false // Play sound or not
score = 0;
set_game_instance();
