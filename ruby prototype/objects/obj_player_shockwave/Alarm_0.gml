if (hold) {
	charge++;
	if (charge == 20) {
		alarm_set(1, 1);
	} else alarm_set(0, 1);
} else {
	audio_stop_sound(snd_chargeWave);
	sound_machine(snd_throwWave);
	var atk = instance_create_layer(x, y, "Player", obj_slash);
	atk.direction = start_dir;
	atk.image_angle = atk.direction;
	atk.image_yscale *= dir_face;
	atk.owner = id;
	atk.move = move;
	atk.moreKnockBack = 7;

	var xx = lengthdir_x(sprite_width / 2, start_dir);
	var yy = lengthdir_y(sprite_width / 2, start_dir);
	var wave = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
	wave.direction = start_dir;
	wave.image_angle = wave.direction;
	wave.speed = 20;
	
	just_shockwaved = true;
	alarm_set(3, 40);
	instance_change(obj_player, false);
	
	var ddir = start_dir;
	with (move) {
		direction = ddir;
		recoil = 6;
	}
	
	just_surrounded = true;
	alarm_set(4, 10);
}

/*var atk = instance_create_layer(x, y, "Player", obj_slash);
atk.direction = start_dir;
atk.image_angle = atk.direction;
atk.image_yscale *= dir_face;
atk.owner = id;
atk.move = move;

var xx = lengthdir_x(sprite_width / 2, start_dir);
var yy = lengthdir_y(sprite_width / 2, start_dir);
var wave = instance_create_layer(x + xx, y + yy, "Player", obj_shockwave);
wave.direction = start_dir;
wave.image_angle = wave.direction;
wave.speed = 20;

if (hold) {
	alarm_set(1, 20);
} else {
	just_shockwaved = true;
	alarm_set(3, 40);
	instance_change(obj_player, false);
}

var ddir = direction;
with (move) {
	direction = ddir;
	recoil = 6;
}

just_surrounded = true;
alarm_set(4, 10);