function scr_generate_battle_steam_minifight()
{
    global.battle_enemy_name_1 = "steam minifight";
    global.battle_menu_number = 1;
    global.speed_self = 4;
    global.invulnerability_self = global.player_invulnerability;
    global.attacking_damage_cap = -1;
    global.hit_self = false;
    global.hurt_self = false;
    global.current_hp_enemy = 9999;
    global.max_hp_enemy = 9999;
    global.last_hp_enemy = global.current_hp_enemy;
    global.current_hp_enemy_draw = global.current_hp_enemy;
    global.enemy_low_hp = false;
    global.enemy_hit = false;
    global.enemy_hurt = false;
    global.enemy_attack_stat = 11;
    global.enemy_defense_stat = 0;
    global.enemy_vulnerable = true;
    global.enemy_attacking = true;
    global.enemy_sparing = false;
    global.enemy_dead = false;
    global.enemy_spared = false;
    global.enemy_betrayed = false;
    global.enemy_fleeable = false;
    global.enemy_special_text = 0;
    global.enemy_exp = 500;
    global.enemy_gold = 10;
    global.enemy_count = 1;
    global.turns_passed = 0;
    global.last_action_selected = "Nothing";
    global.action_1_important = false;
    global.action_2_important = false;
    global.action_1_color = c_white;
    global.action_2_color = c_white;
    global.action_amount = 0;
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
    audio_extend = false;
    global.sound_carry_battle = false;
    global.mettaton_voice_count = 1;
    global.enemy_target_x = 0;
    global.enemy_target_y = 0;
    global.last_text_move_select = -1;
    instance_create(275, 400, obj_battle_hp_current_self);
    instance_create(275, 400, obj_battle_hp_max_self);
    instance_create(275, 400, obj_battle_hp_cover_self);
    instance_create(244, 405, obj_text_hp);
    instance_create(0, 0, obj_text_hp_stat);
    instance_create_depth(0, 0, 500, obj_background_enemy_battle_steamworks_yellow);
    instance_create(319, 320, obj_dialogue_box_battle);
    global.soul_mode = "Red";
    
    with (obj_heart_battle_fighting_parent)
        moveable = false;
    
    global.boss_mini = false;
    global.enemy_attack = "Steam Puffs";
    global.image_alpha_enemy_attacking_immunity = true;
    global.battle_phase = 1;
}
