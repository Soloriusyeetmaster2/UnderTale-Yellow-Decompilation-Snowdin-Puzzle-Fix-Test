if (live_call())
    return global.live_result;

depth = 10;
layer_create(depth + 10, "sequence_layer");
idle_seq = layer_sequence_create("sequence_layer", x, y, 10);
damage_disjoint_count = 0;
damage_disjoint_x = 0;
no_loop_damage_disjoint_count = false;
no_loop_create_clouds = false;
starting_point_x = x;
starting_point_y = y;
low_hp_noloop = false;
image_xscale = 2;
image_yscale = 2;
enemy_hurt_noise = 587;
enemy_hurt_pitch = 1;
