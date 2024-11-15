function scr_talking_normal_color()
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
                                    audio_stop_sound(snd_talk_default);
                                    audio_play_sound(snd_talk_default, 20, false);
                            }
                        }
                        
                        break;
                    
                    default:
                        audio_stop_sound(snd_talk_default);
                        audio_play_sound(snd_talk_default, 20, false);
                }
            }
            
            break;
        
        default:
            audio_stop_sound(snd_talk_default);
            audio_play_sound(snd_talk_default, 20, false);
    }
    
    can_talk = true;
}
