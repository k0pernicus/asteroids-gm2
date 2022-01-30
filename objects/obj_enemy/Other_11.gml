/// @description Defines the damage for an enemy

if (under_shield) exit;

HP -= 1;

if (HP <= 0) {
	instance_destroy();	
}