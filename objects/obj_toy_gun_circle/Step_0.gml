var fight_number, enemy_sparing, enemy_vulnerable, current_hp_enemy, attacking_damage_stat_critical, enemy_target_x, enemy_target_y;

function shotFail()
{
    outline = 0;
    shrink = false;
    image_alpha = 0;
    alarm[0] = 1;
    no_loop = true;
}

fight_number = global.fight_number;

if (fight_number == 1)
{
    enemy_sparing = global.enemy_sparing;
    enemy_vulnerable = global.enemy_vulnerable;
    current_hp_enemy = global.current_hp_enemy;
    attacking_damage_stat_critical = global.attacking_damage_stat_critical;
    enemy_target_x = global.enemy_target_x;
    enemy_target_y = global.enemy_target_y;
}
else if (fight_number == 2)
{
    enemy_sparing = global.enemy_sparing_2;
    enemy_vulnerable = global.enemy_vulnerable_2;
    current_hp_enemy = global.current_hp_enemy_2;
    attacking_damage_stat_critical = global.attacking_damage_stat_critical_2;
    enemy_target_x = global.enemy_target_x_2;
    enemy_target_y = global.enemy_target_y_2;
}
else if (fight_number == 3)
{
    enemy_sparing = global.enemy_sparing_3;
    enemy_vulnerable = global.enemy_vulnerable_3;
    current_hp_enemy = global.current_hp_enemy_3;
    attacking_damage_stat_critical = global.attacking_damage_stat_critical_3;
    enemy_target_x = global.enemy_target_x_3;
    enemy_target_y = global.enemy_target_y_3;
}

script_execute(scr_controls_battle_reticle);

if (outline <= 0 && no_loop == false)
    shotFail();

if (key_select)
{
    if (outline > small_circle)
    {
        audio_play_sound(snd_fail, 1, 0);
        shotFail();
    }
    else if ((enemy_sparing == true && enemy_vulnerable == true) || (enemy_vulnerable == true && current_hp_enemy <= attacking_damage_stat_critical) || outline <= (small_circle * 0.25))
    {
        shot_type = "strong";
        hit_object = 2913;
        
        if (global.battle_enemy_name == "micro froggit" && outline > (small_circle * 0.25))
        {
            shot_type = "weak";
            hit_object = 2911;
        }
    }
    else if (outline <= (small_circle * 0.6) && outline > (small_circle * 0.25))
    {
        shot_type = "medium";
        hit_object = 2912;
    }
    else if (outline < small_circle && outline > (small_circle * 0.6))
    {
        shot_type = "weak";
        hit_object = 2911;
    }
    
    if (shrink == true)
    {
        instance_create(enemy_target_x, enemy_target_y, hit_object);
        shrink = false;
        button_pressed = true;
    }
}

if (outline > 0 && shrink == true)
    outline -= shrink_speed;

if (button_pressed == true && shrink == false)
{
    color_alt_total += color_alt_speed;
    
    if (color_alt_total >= color_alt_max)
    {
        color_alt_total = 0;
        color_number += 1;
        
        if (color_number > 1)
            color_number = 0;
    }
    
    cursor_color = color[color_number];
    color_number_2 = color_number + 1;
    
    if (color_number_2 > 1)
        color_number_2 = 0;
    
    outline_color = color[color_number_2];
}
