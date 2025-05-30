var stamp;

stamp = 1905;
part_smokesys = part_system_create();
part_smokeEm = part_emitter_create(part_smokesys);
part_system_depth(part_smokesys, obj_wild_east_stamp.depth);
part_smoke = part_type_create();
part_type_sprite(part_smoke, 665, 0, 1, 1);
part_type_size(part_smoke, 0.8, 1, 0, 0);
part_type_colour2(part_smoke, 8421504, 8421504);
part_type_alpha2(part_smoke, 0.8, 0);
part_type_speed(part_smoke, 3, 3, 0, 0);
part_type_direction(part_smoke, 0, 359, 0, 0);
part_type_orientation(part_smoke, 0, 359, random_range(-2, 2), 0.1, 1);
part_type_life(part_smoke, 30, 30);
part_type_blend(part_smoke, 1);
part_emitter_region(part_smokesys, part_smokeEm, stamp.bbox_left, stamp.bbox_right, stamp.bbox_top, stamp.bbox_bottom, 1, 1);
part_emitter_burst(part_smokesys, part_smokeEm, part_smoke, 16);
