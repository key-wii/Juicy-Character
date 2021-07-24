jump_move(move);

if (!mouse_check_button(mb_right)) hold = false;

//input buffering
if (mouse_check_button_pressed(mb_left) && instance_exists(obj_shockwave)) alarm_set (6, 1);

//if (mouse_check_button_pressed(mb_right)) alarm_set (7, 1);

if (mouse_check_button_pressed(mb_middle)) alarm_set (8, 1);