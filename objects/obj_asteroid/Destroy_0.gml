/// @description Insert description here
// You can write your code in this editor

global.asteroids -= 1;

// 10% chance to spawn a lives item
if (irandom_range(0, 10) == 10) {
    var item = instance_create_layer(self.x, self.y, "Instances", obj_lives);
}