function surround() {
	//if (just_surrounded) exit;
	/*if (!just_hooked && !instance_exists(obj_hook)) {
		hook();
	}
	else */if (!instance_exists(obj_surround)) {
		dir_face *= -1;
		with (move) {
			topSpeed = .1;
			burstSpeed = .1;
		}
		instance_change(obj_player_surround, true);
		just_meleed = false;
		melee_count = 0;
	} else alarm_set (8, 1);
}