function scr_talking_flowey_1_color()
{
    switch (current_char)
    {
        case " ":
        case "*":
            if (color_count >= 1)
            {
                switch (current_char_2)
                {
                    case " ":
                    case "*":
                        if (color_count >= 2)
                        {
                            switch (current_char_3)
                            {
                                case " ":
                                case "*":
                                    break;
                                
                                default:
                                    audio_stop_sound(sndfnt_flowey);
                                    audio_play_sound(sndfnt_flowey, 20, false);
                            }
                        }
                        
                        break;
                    
                    default:
                        audio_stop_sound(sndfnt_flowey);
                        audio_play_sound(sndfnt_flowey, 20, false);
                }
            }
            
            break;
        
        default:
            audio_stop_sound(sndfnt_flowey);
            audio_play_sound(sndfnt_flowey, 20, false);
    }
    
    switch (current_char)
    {
        case ".":
        case ",":
        case "?":
        case "!":
            break;
        
        default:
            if (color_count >= 1)
            {
                switch (current_char_2)
                {
                    case ".":
                    case ",":
                    case "?":
                    case "!":
                        break;
                    
                    default:
                        if (color_count >= 2)
                        {
                            switch (current_char_3)
                            {
                                case ".":
                                case ",":
                                case "?":
                                case "!":
                                    break;
                                
                                default:
                                    can_talk = true;
                            }
                            
                            break;
                        }
                        
                        can_talk = true;
                }
                
                break;
            }
            
            can_talk = true;
    }
}
