function scr_generate_battle_martlet_genocide()
{
    global.battle_enemy_name_1 = "martlet";
    global.battle_menu_number = 1;
    global.speed_self = 4;
    global.invulnerability_self = global.player_invulnerability;
    global.attacking_damage_cap = -1;
    global.hit_self = false;
    global.hurt_self = false;
    global.current_hp_enemy = 750;
    global.max_hp_enemy = 750;
    global.last_hp_enemy = global.current_hp_enemy;
    global.current_hp_enemy_draw = global.current_hp_enemy;
    global.enemy_low_hp = false;
    global.enemy_hit = false;
    global.enemy_hurt = false;
    global.enemy_attack_stat = 12;
    global.enemy_defense_stat = 8;
    global.enemy_vulnerable = true;
    global.enemy_attacking = true;
    global.enemy_sparing = false;
    global.enemy_dead = false;
    global.enemy_spared = false;
    global.enemy_betrayed = false;
    global.enemy_fleeable = false;
    global.enemy_special_text = 0;
    global.enemy_exp = 200;
    global.enemy_gold = 0;
    global.enemy_count = 1;
    global.turns_passed = 0;
    global.last_action_selected = "Nothing";
    global.action_1_important = false;
    global.action_2_important = false;
    global.action_1_color = c_white;
    global.action_2_color = c_white;
    global.action_amount = 2;
    global.item_use = "Nothing";
    global.item_used = "Nothing";
    global.item_gift = "Nothing";
    global.item_gifted = "Nothing";
    global.image_alpha_enemy_attacking = 1;
    global.important_cutscene = false;
    global.can_attack = true;
    global.action_1_selected_count = 0;
    global.action_2_selected_count = 0;
    global.spare_selected_count = 0;
    global.hit_count = 0;
    global.miss_count = 0;
    global.no_hit_count = 0;
    global.hurt_self_count = 0;
    global.hurt_self_turn_count = 0;
    global.item_use_count = 0;
    global.item_gift_count = 0;
    global.attack_cycle = 0;
    global.attack_cycle_max = 6;
    global.enemy_mode = 0;
    global.enemy_mode_previous = 0;
    global.enemy_mode_gen = 0;
    global.enemy_mode_gen_previous = 0;
    
    if (global.sound_carry_overworld == false)
    {
        scr_audio_stop_sound(0);
        audio_sound_gain(mus_mart_geno_wind_yellow, 1, 0);
        audio_sound_pitch(mus_mart_geno_wind_yellow, 1);
        audio_play_sound(mus_mart_geno_wind_yellow, 20, true);
    }
    
    audio_extend = false;
    global.sound_carry_battle = false;
    global.mettaton_voice_count = 1;
    instance_create(318, 232, obj_martlet_g_body);
    instance_create(318, 96, obj_martlet_g_head);
    instance_create(292, 118, obj_martlet_g_hand_left);
    instance_create(336, 118, obj_martlet_g_hand_right);
    global.enemy_target_x = obj_martlet_g_body.x;
    global.enemy_target_y = obj_martlet_g_body.y - 112;
    global.last_text_move_select = -1;
    instance_create(0, 0, obj_battle_fade_in_screen);
    instance_create(275, 400, obj_battle_hp_current_self);
    instance_create(275, 400, obj_battle_hp_max_self);
    instance_create(275, 400, obj_battle_hp_cover_self);
    instance_create(0, 0, obj_text_battle_stat_name);
    instance_create(0, 0, obj_text_battle_stat_lv);
    instance_create(244, 405, obj_text_hp);
    instance_create(0, 0, obj_text_hp_stat);
    instance_create(0, 0, obj_background_boss_battle_2_yellow);
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    instance_create(0, 0, obj_quote_battle_martlet_genocide_intro);
    instance_create(31, 431, obj_fight);
    instance_create(184, 431, obj_act);
    instance_create(344, 431, obj_item);
    instance_create(499, 431, obj_mercy);
    global.soul_mode = "Red";
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
    
    with (obj_heart_battle_fighting_parent)
        moveable = false;
    
    instance_create(obj_fight.x + 17, obj_fight.y + 23, obj_heart_battle_menu);
    
    with (obj_heart_battle_menu)
        image_alpha = 0;
    
    global.boss_mini = false;
    global.enemy_attack = "Nothing";
    global.image_alpha_enemy_attacking_immunity = true;
}
