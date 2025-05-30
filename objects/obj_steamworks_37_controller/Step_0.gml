var elevator_sound;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x <= 280)
        {
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_follower_into_actor();
        }
        
        break;
    
    case 1:
        cutscene_wait(0.25);
        break;
    
    case 2:
        cutscene_camera_move(180, obj_pl.y, 2);
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* We actually made it...";
            prt[0] = 371;
        }
        
        break;
    
    case 5:
        cutscene_npc_walk(1161, 200, 140, 3, "x", "up");
        scene++;
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_npc_walk(1168, 150, 170, 3, "y", "up");
        break;
    
    case 8:
        cutscene_wait(0.25);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Let's hope this elevator#  works.";
            prt[0] = 394;
        }
        
        break;
    
    case 10:
        cutscene_wait(0.25);
        break;
    
    case 11:
        cutscene_sfx_play(657, 1);
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        obj_ceroba_npc.npc_direction = "left";
        cutscene_advance(13.2);
        break;
    
    case 13.2:
        if (!audio_is_playing(snd_elevator))
        {
            elevator_sound = audio_play_sound(271, 1, 0, 0, 1);
            audio_sound_gain(elevator_sound, 1, 2000);
        }
        
        scene = 13.4;
        break;
    
    case 13.4:
        if (audio_is_playing(snd_elevator))
            exit;
        
        cutscene_sfx_play(572, 1);
        cutscene_advance(14);
        break;
    
    case 14:
        with (obj_steamworks_37_elevator)
        {
            image_speed = 1;
            
            if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 15:
        cutscene_wait(1.2);
        break;
    
    case 16:
        cutscene_npc_direction(1161, "down");
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Next stop, the Lab.";
            prt[0] = 371;
        }
        
        break;
    
    case 18:
        cutscene_npc_walk(1161, 170, obj_ceroba_npc.y, 1, "x", "up");
        break;
    
    case 19:
        instance_create(360, 170, obj_starlo_npc);
        
        with (obj_starlo_npc)
        {
            down_sprite_idle = spr_starlo_sad_down_talk;
            left_sprite_idle = spr_starlo_sad_left_talk;
            right_sprite_idle = spr_starlo_sad_right_talk;
            down_sprite = spr_starlo_sad_down_walk;
            left_sprite = spr_starlo_sad_left_walk;
            right_sprite = spr_starlo_sad_right_walk;
        }
        
        instance_create(400, 150, obj_ed_npc);
        instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y - 40, obj_cutscene_ex);
        scene++;
        break;
    
    case 20:
        obj_player_npc.npc_direction = "right";
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* And what are you planning to do#  at the Lab?";
        }
        
        break;
    
    case 21:
        instance_destroy(obj_cutscene_ex);
        cutscene_npc_direction(1161, "right");
        break;
    
    case 22:
        cutscene_npc_walk(1169, 260, 170, 4, "x", "left");
        cutscene_npc_walk(1162, 300, 150, 4, "x", "left");
        scene = 23;
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Starlo!? W-What are you#  doing here!?";
            prt[0] = 388;
        }
        
        break;
    
    case 24:
        if (cutscene_npc_walk(1161, 200, 170, 4, "x", "right"))
            cutscene_music = audio_play_sound(mus_ones_past, 1, 1);
        
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            talker[3] = 1169;
            talker[8] = 1169;
            talker[12] = 1169;
            talker[6] = 1162;
            talker[2] = 1161;
            talker[10] = 1161;
            message[0] = "* The gang and I were#  planning a return party#  for you.";
            message[1] = "* Thought it was a great#  idea, especially for#  Kanako.";
            message[2] = "* That's... very kind of#  you.";
            message[3] = "* Yeah... Well, we went to#  your old house to spruce#  it up.";
            message[4] = "* After all, this would be#  the perfect time to move#  back in.";
            message[5] = "* Ed, what did you find#  while cleaning?";
            message[6] = "* Uh... I was sweepin' the#  floor and spotted#  somethin'...";
            message[7] = "* An almost invisible#  trapdoor. An entrance...";
            message[8] = "* Ceroba... what's#  actually going on#  here?";
            message[9] = "* What really happened to#  Kanako?";
            message[10] = "* (N-No... Why...?)";
            message[11] = "* (This can't...)";
            message[12] = "* Quit mumbling to#  yourself and speak up!";
            message[13] = "* Why did you need Clover?";
            message[14] = "* I don't want this to#  escalate so tell the#  truth!!";
            prt[0] = 421;
            prt[1] = 421;
            prt[2] = 370;
            prt[3] = 421;
            prt[4] = 421;
            prt[5] = 407;
            prt[6] = 454;
            prt[7] = 451;
            prt[8] = 416;
            prt[9] = 418;
            prt[10] = 388;
            prt[11] = 609;
            prt[12] = 403;
            prt[13] = 421;
            prt[14] = 416;
            
            if (message_current == 10)
                obj_ceroba_npc.npc_direction = "up";
            
            if (message_current == 12)
                obj_ceroba_npc.npc_direction = "right";
        }
        
        break;
    
    case 26:
        cutscene_wait(1);
        break;
    
    case 27:
        cutscene_npc_set_sprites(1161, 67, 68, 66, 68, 61, 65, 60, 65);
        break;
    
    case 28:
        cutscene_npc_walk(1161, 185, obj_ceroba_npc.y, 1, "x", "right");
        break;
    
    case 29:
        cutscene_wait(0.5);
        break;
    
    case 30:
        scr_audio_fade_out(cutscene_music, 1000);
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* I... ";
            message[1] = "* I have to go.";
            message[2] = "* Clover, come on!";
            prt[0] = 394;
            prt[1] = 371;
            prt[2] = 370;
        }
        
        break;
    
    case 31:
        cutscene_npc_set_sprites(1161, 81, 80, 78, 79, 61, 65, 60, 63);
        break;
    
    case 32:
        cutscene_npc_walk(1161, 170, 100, 4, "x", "down");
        cutscene_npc_walk(1169, 170, 135, 5, "x", "up");
        
        if (obj_ceroba_npc.y < 140)
        {
            obj_ceroba_npc.image_alpha -= 0.5;
            
            if (obj_ceroba_npc.image_alpha <= 0)
                scene = 33;
        }
        
        break;
    
    case 33:
        cutscene_npc_set_sprites(1168, 15, 16, 18, 17, 24, 21, 23, 22);
    
    case 34:
        obj_player_npc.npc_direction = "up";
        scene++;
        break;
    
    case 35:
        if (obj_starlo_npc.npc_arrived)
            scene++;
        
        break;
    
    case 36:
        cutscene_sfx_play(384, 1);
        break;
    
    case 37:
        cutscene_wait(0.25);
        break;
    
    case 38:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            message[0] = "* Ceroba!!!";
            prt[0] = 403;
        }
        
        break;
    
    case 39:
        cutscene_npc_walk(1169, 200, 140, 4, "x", "up");
        break;
    
    case 41:
    case 43:
    case 45:
    case 47:
        cutscene_sfx_play(657, 1);
        break;
    
    case 40:
    case 42:
    case 44:
    case 46:
    case 48:
        cutscene_wait(0.2);
        break;
    
    case 49:
        cutscene_npc_direction(1169, "right");
        break;
    
    case 50:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            talker[2] = 1162;
            message[0] = "* Ed! Take Clover back#  home and keep watch!";
            message[1] = "* I'll chase after her!";
            message[2] = "* Right!";
            prt[0] = 403;
            prt[1] = 421;
            prt[2] = 451;
        }
        
        break;
    
    case 51:
        cutscene_npc_direction(1169, "up");
        break;
    
    case 52:
        cutscene_npc_walk(1162, obj_player_npc.x, obj_player_npc.y - 15, 4, "y", "down");
        break;
    
    case 53:
        cutscene_advance(55);
        break;
    
    case 54:
        break;
    
    case 55:
        cutscene_npc_action_sprite(1162, 149, 0.25, false);
        instance_destroy(obj_player_npc);
        obj_pl.image_alpha = 0;
        obj_ed_npc.up_sprite = spr_ed_up_walk_clover;
        obj_ed_npc.right_sprite = spr_ed_right_walk_clover;
        obj_ed_npc.down_sprite = spr_ed_down_walk_clover;
        obj_ed_npc.left_sprite = spr_ed_left_walk_clover;
        obj_ed_npc.up_sprite_idle = spr_ed_up_walk_clover;
        obj_ed_npc.right_sprite_idle = spr_ed_right_walk_clover;
        obj_ed_npc.down_sprite_idle = spr_ed_down_walk_clover;
        obj_ed_npc.left_sprite_idle = spr_ed_left_walk_clover;
        break;
    
    case 56:
        cutscene_npc_direction(1162, "right");
        break;
    
    case 57:
        cutscene_wait(0.5);
        break;
    
    case 58:
        cutscene_npc_walk(1162, 520, obj_ed_npc.y, 3, "x", "right");
        cutscene_advance();
        break;
    
    case 59:
        cutscene_wait(1);
        break;
    
    case 60:
        cutscene_sfx_play(572, 1);
        break;
    
    case 61:
        with (obj_steamworks_37_elevator)
        {
            image_speed = 1;
            
            if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 62:
        if (cutscene_npc_walk(1169, 170, 100, 3, "x", "up"))
            scene = 62;
        
        if (obj_starlo_npc.y < 140)
        {
            obj_starlo_npc.image_alpha -= 0.25;
            
            if (obj_starlo_npc.image_alpha <= 0)
                scene = 63;
        }
        
        break;
    
    case 63:
        cutscene_wait(1);
        break;
    
    case 64:
        with (obj_steamworks_37_elevator)
        {
            if (image_index == (image_number - 1))
            {
                image_index = 10;
                audio_play_sound(snd_sliding_door_open, 1, 0);
                image_speed -= 1.5;
            }
            
            if (image_index <= 1)
            {
                image_index = 0;
                image_speed = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 65:
        cutscene_wait(1.5);
        break;
    
    case 66:
        cutscene_change_room(127, 720, 490, 0.05);
        global.sworks_flag[40] = 2;
        break;
}

if (scene >= 32 && scene < 59)
{
    if (obj_starlo_npc.x < 190)
    {
        with (obj_steamworks_37_elevator)
        {
            if (image_index == (image_number - 1))
            {
                image_index = 10;
                audio_play_sound(snd_sliding_door_open, 1, 0);
                image_speed -= 1.5;
            }
            
            if (image_index <= 1)
            {
                image_index = 0;
                image_speed = 0;
            }
        }
    }
}
