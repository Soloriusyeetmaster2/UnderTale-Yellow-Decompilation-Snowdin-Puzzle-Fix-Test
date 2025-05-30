function scr_draw_text_effect_twitchy_textbox_battle_item_use()
{
    var twitchy_text_probability, twitchy_text_intensity, i;
    
    twitchy_text_probability = global.twitchy_text_probability;
    twitchy_text_intensity = global.twitchy_text_intensity;
    str_indent = "";
    str_indent_count = 0;
    str_offset = -string_width(string_hash_to_newline(string_copy("A", 1, 1)));
    battle_item_use_string_count = string_length(battle_item_use_string);
    
    for (i = 1; i <= battle_item_use_string_count; i += 1)
    {
        twitchy_text_offset_x = 0;
        twitchy_text_offset_y = 0;
        twitchy_text_number = irandom_range(1, twitchy_text_probability);
        
        if (twitchy_text_number == twitchy_text_probability)
        {
            twitch_direction = irandom_range(1, 4);
            
            switch (twitch_direction)
            {
                case 1:
                    twitchy_text_offset_x = 1;
                    twitchy_text_offset_y = 0;
                    break;
                
                case 2:
                    twitchy_text_offset_x = -1;
                    twitchy_text_offset_y = 0;
                    break;
                
                case 3:
                    twitchy_text_offset_x = 0;
                    twitchy_text_offset_y = 1;
                    break;
                
                case 4:
                    twitchy_text_offset_x = 0;
                    twitchy_text_offset_y = -1;
                    break;
            }
        }
        
        str_char = string_char_at(battle_item_use_string, i);
        
        if (str_char == "#")
        {
            str_indent_count += 1;
            
            if (str_indent_count == 1)
                str_indent = "#";
            else if (str_indent_count == 2)
                str_indent = "##";
            
            str_offset = -string_width(string_hash_to_newline(string_copy("A", 1, 1))) * 2;
        }
        
        str_offset += string_width(string_hash_to_newline(string_copy("A", 1, 1)));
        
        if (string_lettersdigits(str_char) == "")
            draw_text(obj_dialogue_box_battle.x + 20 + str_offset, obj_dialogue_box_battle.y + 20, string_hash_to_newline(str_indent + str_char));
        else
            draw_text(obj_dialogue_box_battle.x + 20 + str_offset + (twitchy_text_offset_x * twitchy_text_intensity), obj_dialogue_box_battle.y + 20 + (twitchy_text_offset_y * twitchy_text_intensity), string_hash_to_newline(str_indent + str_char));
    }
}
