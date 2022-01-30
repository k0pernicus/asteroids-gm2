///@description Spawn a Bullet object
function spawn_bullet(creator, direction, speed, faction, faction_color) {
	if (allow_playing_sound) audio_play_sound(snd_laser, 1, false);
	
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.direction = direction;
	bullet.speed = speed;
	bullet.faction = faction;
	bullet.creator = id;
	bullet.image_blend = faction_color;
}