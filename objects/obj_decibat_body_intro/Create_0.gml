starting_point_x = x;
starting_point_y = y;
draw_position_x = starting_point_x;
draw_position_y = starting_point_y;
falling = false;
increase_image_alpha = true;
image_speed = 0;
image_index = 0;
image_alpha = 0;
image_angle = 180;
sign_modifier = -1;
time_max = 40;
time_elapsed = round(time_max / 2);
time_increase = 1;
max_rise = 146 - starting_point_y;
draw_position_y = starting_point_y + max_rise;
