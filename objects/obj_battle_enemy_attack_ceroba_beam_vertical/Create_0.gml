damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
attack_beam_width = 40;
attack_beam_width_current = 0;
attack_beam_width_inc = attack_beam_width / (0.4 * room_speed);
attack_beam_width_fluctuation = 4;
attack_beam_height = obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top;
attack_beam_grow = true;
attack_beam_draw_alpha = 0;
attack_beam_draw_color = c_white;
attack_beam_flash_timer_max = 15;
attack_beam_flash_timer = 0;
attack_beam_timer = 15;
attack_beam_stage = 0;
audio_play_sound(snd_kamehamehacharge, 1, 0);
screenshake = false;
screenshake_max = 5;
