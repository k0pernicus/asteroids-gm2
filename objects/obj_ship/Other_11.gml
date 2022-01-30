/// @description Damage
if (under_shield) {
	// Damage the shield if impact
	under_shield_gauge = max(under_shield_gauge - 0.5, 0);
	exit;
};

instance_destroy();

with (obj_game) {
	alarm[1] = 3 * room_speed;
}