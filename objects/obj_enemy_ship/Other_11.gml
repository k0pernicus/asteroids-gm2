/// @description Damage
if (self.invicible) exit;

HP -= 1;

if (HP <= 0) {
	instance_destroy();	
}