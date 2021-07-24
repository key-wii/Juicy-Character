function shockwave() {
	var buffer = false;
	if (!just_shockwaved) {
		with (move) {
			topSpeed = .1;
			burstSpeed = .1;
		}
		dir_face *= -1;
		instance_change(obj_player_shockwave, true);
		just_meleed = false;
		melee_count = 0;
	} else {
		if (instance_exists(obj_shockwave)) {
			with (obj_shockwave) {
				if (alarm_get(0) < 5) buffer = true;
			}
		} else buffer = true;
		if (buffer) alarm_set(7, 1);
	}
}