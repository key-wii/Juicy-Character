jump_move(move);

audio_stop_sound(snd_chargeWave);

if (mouse_check_button_pressed(mb_left)) melee()

if (mouse_check_button_pressed(mb_right)) shockwave();

if (mouse_check_button_pressed(mb_middle)) surround();