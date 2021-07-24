/// @description Hold: Bigger Shockwave
audio_stop_sound(snd_chargeWave);
sound_machine(snd_throwWaveBig)
var atk = instance_create_layer(x, y, "Player", obj_slash);
atk.direction = start_dir;
atk.image_angle = atk.direction;
atk.image_yscale *= dir_face;
atk.owner = id;
atk.move = move;
atk.moreKnockBack = 12;

var xx = lengthdir_x(sprite_width / 4, start_dir);
var yy = lengthdir_y(sprite_width / 4, start_dir);
var wave = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
wave.direction = start_dir;
wave.image_angle = wave.direction;
wave.image_xscale += .5;
wave.image_yscale += .5;
wave.speed = 22;
wave.pow += 2;
	
just_shockwaved = true;
alarm_set(3, 40);
instance_change(obj_player, false);
	
var ddir = start_dir;
with (move) {
	direction = ddir;
	recoil = 8;
}
	
just_surrounded = true;
alarm_set(4, 10);


/*
/// @description Hold to Surround
if (hold) instance_change(obj_player_surround, true);
else {
	just_shockwaved = true;
	alarm_set(3, 40);
	instance_change(obj_player, false);
}