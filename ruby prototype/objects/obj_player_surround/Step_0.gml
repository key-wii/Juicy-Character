jump_move(move);

//slash cancel
if (instance_exists(obj_surround) && mouse_check_button_pressed(mb_left)) {
	alarm_set (6, 1);
	instance_destroy(obj_surround);
}

//input buffering
if (mouse_check_button_pressed(mb_right)) alarm_set (7, 1);

if (mouse_check_button_pressed(mb_middle) && instance_exists(obj_surround) && obj_surround.dir >= 400) alarm_set (8, 1);