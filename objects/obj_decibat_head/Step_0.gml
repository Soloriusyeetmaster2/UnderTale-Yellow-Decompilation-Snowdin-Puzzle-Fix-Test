var enemy_dead, enemy_spared;

if (!instance_exists(obj_decibat_body) && !instance_exists(obj_decibat_body_intro))
{
    instance_destroy();
    exit;
}

if (increase_image_alpha == true)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
        increase_image_alpha = false;
}

if (battle_start == true)
{
    enemy_dead = global.enemy_dead;
    enemy_spared = global.enemy_spared;
    
    if (enemy_dead == false && enemy_spared == false)
        image_alpha = global.image_alpha_enemy_attacking;
    
    if (enemy_dead == true)
    {
        instance_destroy();
        exit;
        image_alpha = 0.5;
    }
    else if (enemy_spared == true)
    {
        instance_destroy();
        exit;
    }
    
    if (damage_disjoint_count > 0)
    {
        damage_disjoint_count -= 1;
    }
    else if (enemy_dead == false && enemy_spared == false)
    {
        if (global.enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
            image_index = 11;
        
        sprite_index = spr_decibat_head;
    }
    
    if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
    {
        time_elapsed = 0;
        damage_disjoint_count = 12;
        no_loop_damage_disjoint_count = true;
    }
    else if (!instance_exists(obj_text_damage_count))
    {
        no_loop_damage_disjoint_count = false;
    }
    
    if (damage_disjoint_count == 12)
        damage_disjoint_x = -50;
    else if (damage_disjoint_count == 10)
        damage_disjoint_x = 50;
    else if (damage_disjoint_count == 8)
        damage_disjoint_x = -20;
    else if (damage_disjoint_count == 6)
        damage_disjoint_x = 20;
    else if (damage_disjoint_count == 4)
        damage_disjoint_x = -10;
    else if (damage_disjoint_count == 2)
        damage_disjoint_x = 10;
    else if (damage_disjoint_count == 0)
        damage_disjoint_x = 0;
    
    if (damage_disjoint_count > 0 || global.current_hp_enemy <= 0)
        image_alpha = 0;
}

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;
