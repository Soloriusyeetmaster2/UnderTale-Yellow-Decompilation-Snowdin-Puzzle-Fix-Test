damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
can_fade_in = false;
angle_position_current = obj_battle_enemy_attack_martlet_feather_circle_checker.fcreate_angle_diff;
global.id_store = id;
state = 0;
spin_radius_speed = 0;
spin_radius_speed_multiplier = 20;
sign_modifier_spin = 1;
time_elapsed_spin = 0;
time_max_spin = 30;
time_increase_spin = 1;
max_rise_spin = 80;
no_loop_target = false;
attack_speed = 28;
in_box = false;
x_list = ds_list_create();
y_list = ds_list_create();
angle_list = ds_list_create();
max_points_trail = 10;
trail_cc_max = 3;
trail_cc_start = trail_cc_max - 1;
trail_cc_current = trail_cc_start;
