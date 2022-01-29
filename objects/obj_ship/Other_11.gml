/// @description Damage
if (self.invicible) exit;

instance_destroy();

with (obj_game) {
	alarm[1] = 3 * room_speed;
}