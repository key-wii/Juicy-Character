var atk = instance_create_layer(mouse_x, mouse_y, "Player", obj_hook);
atk.direction = direction - (1 * dir_face);
atk.image_angle = atk.direction;
atk.image_yscale *= dir_face;
atk.dir_face = dir_face;
atk.owner = id;
atk.move = move;

//just_surrounded = true;
just_hooked = true;
//alarm_set(4, 60);

/*just_shockwaved = true;
alarm_set(3, 1);*/