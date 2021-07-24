function melee(){
	point_mouse();
	if (!instance_exists(obj_melee)) {
		dir_face *= -1;
		instance_change(obj_player_melee, true);
	} else alarm_set (6, 1);
}