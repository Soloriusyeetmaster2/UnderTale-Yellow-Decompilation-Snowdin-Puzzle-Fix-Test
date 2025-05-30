function scr_generate_battle_el_bailador()
{
    global.battle_enemy_name_1 = "el bailador";
    global.battle_menu_number = 1;
    global.speed_self = 4;
    global.invulnerability_self = global.player_invulnerability;
    global.attacking_damage_cap = -1;
    global.hit_self = false;
    global.hurt_self = false;
    global.current_hp_enemy = 300;
    global.max_hp_enemy = 300;
    global.last_hp_enemy = global.current_hp_enemy;
    global.current_hp_enemy_draw = global.current_hp_enemy;
    global.enemy_low_hp = false;
    global.enemy_hit = false;
    global.enemy_hurt = false;
    global.enemy_attack_stat = 9;
    global.enemy_defense_stat = 7;
    
    if (global.route == 3)
    {
        global.current_hp_enemy = 500;
        global.max_hp_enemy = 500;
        global.enemy_defense_stat = 8;
    }
    
    global.enemy_vulnerable = true;
    global.enemy_attacking = true;
    global.enemy_sparing = false;
    global.enemy_dead = false;
    global.enemy_spared = false;
    global.enemy_betrayed = false;
    global.enemy_fleeable = false;
    global.enemy_special_text = 0;
    global.enemy_exp = 80;
    global.enemy_gold = 50;
    global.enemy_count = 1;
    global.turns_passed = 0;
    global.last_action_selected = "Nothing";
    global.action_1_important = false;
    global.action_2_important = false;
    global.action_3_important = false;
    global.action_1_color = c_white;
    global.action_2_color = c_white;
    global.action_3_color = c_white;
    global.action_amount = 3;
    
    if (global.route == 3)
        global.action_amount = 1;
    
    global.item_use = "Nothing";
    global.item_used = "Nothing";
    global.item_gift = "Nothing";
    global.item_gifted = "Nothing";
    global.image_alpha_enemy_attacking = 1;
    global.important_cutscene = false;
    global.can_attack = true;
    global.action_1_selected_count = 0;
    global.action_2_selected_count = 0;
    global.action_3_selected_count = 0;
    global.spare_selected_count = 0;
    global.hit_count = 0;
    global.miss_count = 0;
    global.no_hit_count = 0;
    global.hurt_self_count = 0;
    global.hurt_self_turn_count = 0;
    global.item_use_count = 0;
    global.item_gift_count = 0;
    global.enemy_mode = 0;
    global.enemy_mode_previous = 0;
    global.enemy_mode_gen = 0;
    global.enemy_mode_gen_previous = 0;
    audio_extend = false;
    global.sound_carry_battle = false;
    global.mettaton_voice_count = 1;
    instance_create(318, 232, obj_el_bailador_neutral);
    global.enemy_damage_x = obj_el_bailador_neutral.x;
    global.enemy_damage_y = obj_el_bailador_neutral.y - 112;
    global.enemy_target_x = obj_el_bailador_neutral.x;
    global.enemy_target_y = obj_el_bailador_neutral.y - 112;
    global.last_text_move_select = -1;
    instance_create(0, 0, obj_battle_el_bailador_controller);
    instance_create(0, 0, obj_battle_fade_in_screen);
    instance_create(275, 400, obj_battle_hp_current_self);
    instance_create(275, 400, obj_battle_hp_max_self);
    instance_create(275, 400, obj_battle_hp_cover_self);
    instance_create(0, 0, obj_text_battle_stat_name);
    instance_create(0, 0, obj_text_battle_stat_lv);
    instance_create(244, 405, obj_text_hp);
    instance_create(0, 0, obj_text_hp_stat);
    instance_create(0, 0, obj_background_el_bailador_test_yellow);
    instance_create(0, 0, obj_battle_enemy_attack_el_bailador_stage_master);
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    
    if (global.route != 3)
        instance_create(0, 0, obj_quote_battle_el_bailador);
    else
        instance_create_depth(0, 0, -1000, obj_quote_battle_el_bailador_g);
    
    instance_create(31, 431, obj_fight);
    instance_create(184, 431, obj_act);
    instance_create(344, 431, obj_item);
    instance_create(499, 431, obj_mercy);
    
    if (global.route != 3)
    {
        global.soul_mode = "Yellow Rhythm";
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 79, obj_dialogue_box_battle_transformation_any.bbox_top + 202, obj_heart_battle_fighting_yellow_rhythm);
    }
    else
    {
        global.soul_mode = "Red";
        instance_create(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.y, obj_heart_battle_fighting_red);
    }
    
    with (obj_heart_battle_fighting_parent)
        moveable = false;
    
    instance_create(obj_fight.x + 17, obj_fight.y + 23, obj_heart_battle_menu);
    
    with (obj_heart_battle_menu)
        image_alpha = 0;
    
    global.boss_mini = false;
    global.enemy_attack = "El Bailador Song";
    global.image_alpha_enemy_attacking_immunity = true;
    
    if (global.route == 3)
        global.dunes_flag[52] = 1;
}
