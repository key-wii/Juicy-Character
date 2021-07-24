start_dir = direction;
chargeup = true;
if (just_meleed) alarm_set(0, meleeCharge / 4);
else alarm_set(0, meleeCharge);

tick = -1;

hold = true;


audio_stop_sound(snd_chargeWave);