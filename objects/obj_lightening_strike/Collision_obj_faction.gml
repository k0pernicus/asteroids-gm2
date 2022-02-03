/// @description Collision obj_ally only

if (other.faction != factions.ally) exit;

// Launch the 'paralize' action (event_2 for the Player (obj_ship)
with (other) { // The other is obviously the Player
	event_perform(ev_other, ev_user2); // Paralize the user
}
other.alarm[4] = paralize_seconds * room_speed; // Unparalize it after X seconds

// Destroy only if it reached the target
instance_destroy();