if (live_call())
    return global.live_result;

shader_set(sh_darken);

with (obj_pl)
    draw_sprite(sprite_index, image_index, x, y);

shader_reset();
