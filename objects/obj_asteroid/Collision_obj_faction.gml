/// @description Insert description here
// You can write your code in this editor
if (other.faction == faction) exit;

/// Do not damage the enemies (for the moment?)
if (other.faction == factions.enemy) exit;

// Takes damage
event_perform(ev_other, ev_user1);

// Perform the damages for the encountered instance
with (other) {
	event_perform(ev_other, ev_user1);	
}
