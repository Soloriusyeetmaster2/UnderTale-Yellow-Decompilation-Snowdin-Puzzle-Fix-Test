if (live_call())
    return global.live_result;

if (sprite_index != -4)
    draw_self();

draw_set_color(c_black);
draw_set_alpha(1 - image_alpha);
draw_rectangle(0, 0, 640, 244, false);
draw_set_alpha(1);
