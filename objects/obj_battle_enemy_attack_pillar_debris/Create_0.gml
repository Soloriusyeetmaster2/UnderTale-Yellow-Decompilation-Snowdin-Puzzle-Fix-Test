if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_index = irandom_range(0, 2);
image_speed = 0;
fade_out = false;
