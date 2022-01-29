/// @description Collision with general faction obj

// DO NOT DESTROY THE CREATOR (or the same faction target) !!
if (other == creator || other.faction == faction) exit;

// Launch the damage action (event_1)
with (other) event_perform(ev_other, ev_user1);

// Destroy only if it reached the target
instance_destroy();