sprite_default = sprite_index;
spriteHurt = spr_hurt;
hp = 10;

y = room_height / 2;
x_adjust = 0;
y_adjust = 0;

dir_face = -1;

//if (!instance_exists(obj_player_move))
move = instance_create_layer(x, y, "Player", obj_player_move);
move.owner = id;

//if (!instance_exists(obj_partner))
/*partner = instance_create_layer(x, y, "Player", obj_partner);
partner.hp = hp;
partner.owner = id;
partner.radius = partner.sprite_width + sprite_width;*/
partner = instance_create_layer(x, y, "Player", obj_arrow);
partner.owner = id;
partner.radius = sprite_width;


set_vars();