var random_number;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
sound_type = snd_ceroba_staff_lock;
random_number = irandom_range(0, 13);

switch (random_number)
{
    case 0:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_globe;
        sound_type = snd_chem_05_axis_acid_1;
        break;
    
    case 1:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_shoe;
        sound_type = mus_retribution;
        break;
    
    case 2:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_mug;
        sound_type = mus_retribution;
        break;
    
    case 3:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_can;
        sound_type = snd_chem_05_axis_acid_1;
        break;
    
    case 4:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_thingy;
        sound_type = mus_retribution;
        break;
    
    case 5:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_ball;
        sound_type = mus_soulmate_located;
        break;
    
    case 6:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_glass;
        sound_type = mus_retribution;
        break;
    
    case 7:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_saw;
        sound_type = mus_retribution;
        break;
    
    case 8:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_idk;
        sound_type = snd_chem_05_axis_acid_1;
        break;
    
    case 9:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_nail;
        sound_type = mus_retribution;
        break;
    
    case 10:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_screw;
        sound_type = mus_retribution;
        break;
    
    case 11:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_plank;
        sound_type = snd_chem_05_axis_acid_1;
        break;
    
    case 12:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_radio;
        sound_type = mus_soulmate_located;
        break;
    
    case 13:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_screwdriver;
        sound_type = mus_retribution;
        break;
    
    default:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_globe;
        sound_type = snd_chem_05_axis_acid_1;
}

image_speed = 0;
image_index = 0;
image_alpha = 0;
image_angle = 0;
image_xscale = 2;
image_yscale = 2;
state = 0;
fall_speed = 3;
fall_speed_max = 12;
can_fade_out = false;
landing_init = false;
landing_count = 0;
no_loop_alarm_fading_in = false;

while (bbox_left < (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
    x += 1;

while (bbox_right > (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
    x -= 1;

while (bbox_bottom < (obj_dialogue_box_battle_transformation_any.bbox_top - 10))
    y += 1;

while (bbox_bottom > (obj_dialogue_box_battle_transformation_any.bbox_top - 10))
    y -= 1;
