var battle_box;

attack_state = 1;
no_loop = false;
pseudo_random_number = 3;
pseudo_random_max = 3;
sword_color = "none";
_y_sin_current = 0;
image_speed = 0;
depth = -999999;
battle_box = 3154;
fly_path = path_add();
path_add_point(fly_path, battle_box.x, y, 15);
path_add_point(fly_path, battle_box.x, battle_box.y, 100);
path_add_point(fly_path, battle_box.x, battle_box.y + (battle_box.y - y), 15);
path_set_closed(fly_path, false);
alarm[0] = 270;
