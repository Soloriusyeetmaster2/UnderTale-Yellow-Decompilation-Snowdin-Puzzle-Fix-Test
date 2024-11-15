var new_col;

part_ropesys = part_system_create();
part_ropeEm = part_emitter_create(part_ropesys);
part_system_depth(part_ropesys, -9999);
part_ropepieces = part_type_create();
part_type_shape(part_ropepieces, 1);
part_type_size(part_ropepieces, 0.1, 0.1, 0, 0);
new_col = make_color_rgb(216, 112, 43);
part_type_colour2(part_ropepieces, new_col, new_col);
part_type_alpha3(part_ropepieces, 1, 1, 0);
part_type_speed(part_ropepieces, 6, 6, 0, 0);
part_type_direction(part_ropepieces, 50, 130, 0, 0);
part_type_orientation(part_ropepieces, 0, 359, random_range(-2, 2), 0.1, 1);
part_type_life(part_ropepieces, 90, 90);
part_type_blend(part_ropepieces, 1);
part_type_gravity(part_ropepieces, 0.3, 270);
part_emitter_region(part_ropesys, part_ropeEm, x, x, y, y, 3, 0);
part_emitter_burst(part_ropesys, part_ropeEm, part_ropepieces, 5);
alarm[0] = 90;
