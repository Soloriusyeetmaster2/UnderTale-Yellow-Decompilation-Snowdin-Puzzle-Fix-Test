var w_scale, h_scale, w_multiplier, h_multiplier, v, h, i;

if (live_call())
    return global.live_result;

if (surf_screen_noloop == false)
{
    surface_set_target(surf_screen_copy);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
    surface_copy(surf_screen_copy, 0, 0, application_surface);
    application_surface_draw_enable(false);
    surf_screen_noloop = true;
}
else if (!surface_exists(surf_screen_copy))
{
    surf_screen_noloop = false;
    exit;
}

w_scale = surface_get_width(application_surface) / 320;
h_scale = surface_get_height(application_surface) / 240;
w_multiplier = 320 / surface_get_width(application_surface);
h_multiplier = 240 / surface_get_height(application_surface);
v = 0;
h = 0;

for (i = 0; i < total_number; i++)
{
    if (h > (h_number - 1))
    {
        h -= h_number;
        v += 1;
    }
    
    draw_surface_part_ext(surf_screen_copy, h * (h_width * w_scale), v * (v_height * h_scale), h_width * w_scale, v_height * h_scale, piece_x[i], piece_y[i], w_multiplier, h_multiplier, c_white, 1);
    h += 1;
}
