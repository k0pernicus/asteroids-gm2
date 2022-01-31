/// @description Allows interaction with any faction

// Do not interact with anything other than an Ally
if (other.faction != factions.ally) exit;
instance_destroy();

// Add lives up
lives += HP;