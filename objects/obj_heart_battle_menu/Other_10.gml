var special_effect_end_value, player_character, soul_mode;

special_effect_end_value = global.special_effect_end_value;
player_character = global.player_character;

if (special_effect_end_value != "")
    scr_determine_special_effect_end_enemy(special_effect_end_value);

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_down;
        break;
    
    default:
        soul_mode = global.soul_mode;
        
        if (soul_mode == "Red")
        {
            sprite_index = spr_heart_red;
            break;
        }
        
        if (soul_mode == "Blue")
        {
            sprite_index = spr_heart_blue_down;
            break;
        }
        
        if (soul_mode == "Green")
        {
            sprite_index = spr_heart_green;
            break;
        }
        
        if (soul_mode == "Purple")
        {
            sprite_index = spr_heart_purple;
            break;
        }
        
        if (soul_mode == "Yellow")
            sprite_index = spr_heart_yellow_down;
}

no_loop = false;

if (global.battling_boss == true)
    no_loop_determine_sparing = true;
else
    no_loop_determine_sparing = false;

script_execute(scr_reset_text_deadlock);
image_alpha = 1;
