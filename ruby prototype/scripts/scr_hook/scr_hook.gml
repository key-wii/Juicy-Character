function hook() {
	dir_face *= -1;
	with (move) {
		topSpeed = .1;
		burstSpeed = .1;
	}
	instance_change(obj_player_hook, true);
	direction -= 70 * dir_face;
	just_meleed = false;
	melee_count = 0;
}