var pellet_count;

damage_number = scr_determine_damage_number_enemy("flowey intro", "void", "void");
image_speed = 0.5;
image_index = 0;
move = false;
move_speed_create = 4;
move_speed_attack = 0;
move_speed_attack_max = 6;
move_speed_attack_increase = 0.1;
distance_counter = 0;
distance_counter_max = 35;
angle_spread = 30;
no_loop = false;
pellet_count = instance_number(obj_battle_enemy_attack_friendliness_pellets_yellow);
angle = pellet_count * angle_spread;
