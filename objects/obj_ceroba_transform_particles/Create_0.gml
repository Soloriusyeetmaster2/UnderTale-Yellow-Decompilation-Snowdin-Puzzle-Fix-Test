var trail_col, xp, yp;

if (live_call())
    return global.live_result;

alarm[0] = 30;
global.ps_inner = part_system_create();
part_system_depth(global.ps_inner, -200);
global.ps_outer = part_system_create();
part_system_depth(global.ps_outer, -150);
global.pt_trail_inner = part_type_create();
part_type_shape(global.pt_trail_inner, 1);
part_type_size(global.pt_trail_inner, 0.15, 0.15, -0.02, 0);
part_type_scale(global.pt_trail_inner, 3, 1);
part_type_orientation(global.pt_trail_inner, 0, 0, 0, 0, 0);
part_type_color3(global.pt_trail_inner, 0, 0, 0);
part_type_alpha3(global.pt_trail_inner, 1, 1, 1);
part_type_blend(global.pt_trail_inner, 0);
part_type_life(global.pt_trail_inner, 8, 8);
part_type_speed(global.pt_trail_inner, 0, 0, 0, 0);
part_type_direction(global.pt_trail_inner, 0, 360, 0, 0);
part_type_gravity(global.pt_trail_inner, 0, 0);
trail_col = make_color_rgb(255, 0, 55);
global.pt_trail_outer = part_type_create();
part_type_shape(global.pt_trail_outer, 1);
part_type_size(global.pt_trail_outer, 0.25, 0.25, -0.02, 0);
part_type_scale(global.pt_trail_outer, 3, 1);
part_type_orientation(global.pt_trail_outer, 0, 0, 0, 0, 0);
part_type_color3(global.pt_trail_outer, trail_col, 0, 0);
part_type_alpha3(global.pt_trail_outer, 1, 1, 1);
part_type_blend(global.pt_trail_outer, 0);
part_type_life(global.pt_trail_outer, 16, 16);
part_type_speed(global.pt_trail_outer, 0, 0, 0, 0);
part_type_direction(global.pt_trail_outer, 0, 360, 0, 0);
part_type_gravity(global.pt_trail_outer, 0, 0);
xp = x;
yp = y;
xp = x;
yp = y;
