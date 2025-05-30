if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.y < 460)
            cutscene_advance();
        
        break;
    
    case 1:
        cutscene_follower_into_actor();
        break;
    
    case 2:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 3:
        cutscene_npc_direction(1168, "up");
        break;
    
    case 4:
        cutscene_instance_create(actor_follower.x, actor_follower.y - 40, obj_cutscene_ex);
        break;
    
    case 5:
        cutscene_sfx_play(362, 1);
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        instance_destroy(obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 8:
        cutscene_npc_walk(1164, obj_martlet_npc.x, obj_player_npc.y - 20, 4, "x", "up");
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* (I see them!)";
            message[1] = "* (This way!)";
            prt[0] = 330;
            prt[1] = 309;
        }
        
        break;
    
    case 10:
        cutscene_camera_move(163, 320, 3, true);
        cutscene_npc_walk(1164, 187, 370, 4, "y", "up");
        cutscene_npc_walk(1168, 139, 370, 4, "y", "up");
        cutscene_advance();
        break;
    
    case 11:
        if (obj_martlet_npc.npc_arrived && obj_player_npc.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 12:
        cutscene_wait(2.5);
        break;
    
    case 13:
        cutscene_npc_direction(1164, "left");
    
    case 14:
        cutscene_npc_direction(1168, "right");
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* (Ceroba looks#  distressed...)";
            message[1] = "* (I'm sure we can#  negotiate her down from#  this but...)";
            message[2] = "* (Worst comes to worst,#  we might have to#  retreat.)";
            message[3] = "* (Tactically, of#  course.)";
            message[4] = "* (Let's listen in...) ";
            prt[0] = 317;
            prt[1] = 329;
            prt[2] = 317;
            prt[3] = 320;
            prt[4] = 321;
            position = 1;
        }
        
        break;
    
    case 16:
        cutscene_npc_direction(1164, "up");
    
    case 17:
        cutscene_npc_direction(1168, "up");
        break;
    
    case 18:
        cutscene_camera_move(163, 290, 2);
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        cutscene_npc_direction(1161, "down");
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1169;
            talker[3] = 1161;
            talker[6] = 1169;
            talker[7] = 1161;
            talker[8] = 1169;
            message[0] = "* Just leave me to my own#  devices, Star!";
            message[1] = "* Ceroba, I don't know#  what you're saying!";
            message[2] = "* Please calm down...";
            message[3] = "* I must go to the Lab!";
            message[4] = "* It's where Kanako is#  being kept!";
            message[5] = "* I have to get there by#  any means necessary!";
            message[6] = "* I'm not sure that's a#  good idea...";
            message[7] = "* Don't get in my way.";
            message[8] = "* Or what? You'll kill#  me?";
            prt[0] = 368;
            prt[1] = 406;
            prt[2] = 416;
            prt[3] = 368;
            prt[4] = 366;
            prt[5] = 366;
            prt[6] = 420;
            prt[7] = 368;
            prt[8] = 421;
            position = 0;
        }
        
        break;
    
    case 22:
        cutscene_wait(0.75);
        break;
    
    case 23:
        cutscene_npc_direction(1161, "up");
    
    case 24:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1164;
            message[0] = "* I'll...                ";
            message[1] = "* Hey!";
            prt[0] = 2987;
            prt[1] = 309;
            position = 0;
            
            if (message_current == 0)
            {
                with (obj_martlet_npc)
                {
                    if (x != 163 && y != 350)
                    {
                        walk_speed = 4;
                        x_dest[0] = 163;
                        y_dest[0] = 350;
                        axis_override = "x";
                        end_direction = "up";
                        can_walk = true;
                    }
                }
                
                with (obj_player_npc)
                {
                    if (x != 151 && y != 363)
                    {
                        walk_speed = 4;
                        x_dest[0] = 151;
                        y_dest[0] = 363;
                        axis_override = "x";
                        end_direction = "up";
                        can_walk = true;
                    }
                }
                
                obj_ceroba_npc.npc_direction = "up";
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    instance_create_depth(obj_ceroba_npc.x, obj_ceroba_npc.y - 40, obj_ceroba_npc.depth - 1, obj_cutscene_ex);
                    force_skip = true;
                }
                
                obj_starlo_npc.npc_direction = "down";
            }
            
            if (message_current == 1)
                skippable = true;
        }
        
        break;
    
    case 25:
        cutscene_npc_direction(1161, "down");
    
    case 26:
        cutscene_npc_direction(1169, "down");
    
    case 27:
        instance_destroy(obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 28:
        cutscene_npc_walk(1164, 189, 322, 3, "y", "up");
        break;
    
    case 29:
        cutscene_npc_walk(1168, 133, 315, 3, "y", "up");
        break;
    
    case 30:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Clover and I - we#  watched the tapes. ";
            message[1] = "* You need to let this#  go!";
            message[2] = "* If not...";
            prt[0] = 322;
            prt[1] = 309;
            prt[2] = 317;
            position = 0;
            
            if (message_current == 2)
            {
                message_timer = 10;
                skippable = false;
            }
        }
        
        break;
    
    case 31:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1169;
            talker[2] = 1161;
            talker[5] = 1169;
            talker[10] = 1161;
            message[0] = "* Why are you here,#  Clover!? ";
            message[1] = "* You're supposed to be#  back home!";
            message[2] = "* No, thank you for#  finding me. Makes things#  easier.  ";
            message[3] = "* If I were you two, I'd#  leave Clover here and#  forget about this.";
            message[4] = "* It might not make sense#  to you, but it's for the#  best.";
            message[5] = "* Cut the self-righteous#  act, will you?";
            message[6] = "* Just... stop it.";
            message[7] = "* We can turn this#  around, Ceroba.";
            message[8] = "* You said it yourself#  that Kanako is alive!";
            message[9] = "* Let's just find her and#  go back to our normal,#  happy life.";
            message[10] = "* \"Happy life\"...#  That's rich.";
            prt[0] = 403;
            prt[1] = 416;
            prt[2] = 377;
            prt[3] = 371;
            prt[4] = 377;
            prt[5] = 403;
            prt[6] = 420;
            prt[7] = 421;
            prt[8] = 417;
            prt[9] = 417;
            prt[10] = 609;
            
            switch (message_current)
            {
                case 0:
                    noloop_message = 0;
                    break;
                
                case 2:
                    obj_starlo_npc.npc_direction = "up";
                    break;
                
                case 3:
                    if (noloop_message < message_current)
                    {
                        noloop_message = message_current;
                        other.cutscene_music = audio_play_sound(mus_ones_past, 1, 1);
                    }
                    
                    break;
            }
        }
        
        break;
    
    case 32:
        cutscene_npc_direction(1161, "up");
        break;
    
    case 33:
        cutscene_camera_move(163, 230, 1, false);
        break;
    
    case 34:
        cutscene_wait(1.5);
        break;
    
    case 35:
        if (cutscene_dialogue())
            scene = 36;
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1169;
            talker[2] = 1161;
            talker[5] = 1169;
            talker[6] = 1161;
            talker[13] = 1164;
            talker[18] = 1161;
            talker[20] = 1169;
            talker[29] = 1161;
            talker[33] = 1169;
            talker[34] = 1161;
            talker[35] = 1164;
            talker[37] = 1161;
            talker[38] = 1169;
            message[0] = "* I... lied about Kanako,#  Star. I had to.";
            message[1] = "* ...What?";
            message[2] = "* Falling down is#  practically a death#  sentence.";
            message[3] = "* Unless a miracle takes#  place at the lab,#  there's no... ";
            message[4] = "* ...There's no hope for#  her.";
            message[5] = "* You...";
            message[6] = "* I-I'm trying to make#  the best of what I can,#  okay!?";
            message[7] = "* This is all I know to#  do at this point!";
            message[8] = "* Kanako... ";
            message[9] = "* Kanako is a Boss#  Monster. ";
            message[10] = "* She is the key to#  finishing Chujin's work!";
            message[11] = "* This is his legacy! His#  plan for the future! ";
            message[12] = "* Monsterkind's only hope#  for survival!";
            message[13] = "* Don't you speak for#  him!";
            message[14] = "* You've seen the tapes,#  right?";
            message[15] = "* Do you honestly think#  this is what he wanted?";
            message[16] = "* Kanako wasn't supposed#  to be a factor in this!";
            message[17] = "* If he were here, the#  Chujin I knew woul-";
            message[18] = "* The Chujin you knew... ";
            message[19] = "* You knew nothing of#  him.";
            message[20] = "* No, Martlet's right.";
            message[21] = "* We might've had some#  differing views but...";
            message[22] = "* ...Chujin was kind. To#  everyone.";
            message[23] = "* And I know you are as#  well!";
            message[24] = "* It's just that right#  now, I...";
            message[25] = "* I don't understand you.";
            message[26] = "* When I fought Clover I#  was \"reckless.\"";
            message[27] = "* But when YOU want their#  SOUL, it's \"for the#  best\"?";
            message[28] = "* Not only Clover's...#  but the SOUL of your own";
            message[29] = "* Shut up!";
            message[30] = "* You think I don't know#  how far gone I am!?";
            message[31] = "* And where's this high#  horse coming from???";
            message[32] = "* Sounds to me like we're#  in this pit together.";
            message[33] = "* Ceroba, please...";
            message[34] = "* Just... get out of here#  and let me finish what I#  started. ";
            message[35] = "* Y-You can't have#  Clover!";
            message[36] = "* We are going to ASGORE#  and that's that!";
            message[37] = "* Don't you dare.";
            message[38] = "* Martlet, grab Clover!#  I'll keep Ceroba at bay!";
            prt[0] = 609;
            prt[1] = 418;
            prt[2] = 394;
            prt[3] = 394;
            prt[4] = 609;
            prt[5] = 416;
            prt[6] = 368;
            prt[7] = 394;
            prt[8] = 609;
            prt[9] = 394;
            prt[10] = 368;
            prt[11] = 366;
            prt[12] = 2735;
            prt[13] = 309;
            prt[14] = 309;
            prt[15] = 329;
            prt[16] = 309;
            prt[17] = 309;
            prt[18] = 754;
            prt[19] = 366;
            prt[20] = 406;
            prt[21] = 407;
            prt[22] = 418;
            prt[23] = 421;
            prt[24] = 420;
            prt[25] = 418;
            prt[26] = 416;
            prt[27] = 418;
            prt[28] = 406;
            prt[29] = 754;
            prt[30] = 754;
            prt[31] = 366;
            prt[32] = 368;
            prt[33] = 420;
            prt[34] = 394;
            prt[35] = 309;
            prt[36] = 309;
            prt[37] = 609;
            prt[38] = 421;
            
            switch (message_current)
            {
                case 0:
                    noloop_message = 0;
                    break;
                
                case 4:
                    obj_ceroba_npc.npc_direction = "down";
                    break;
                
                case 5:
                    obj_starlo_npc.npc_direction = "left";
                    break;
                
                case 7:
                    obj_starlo_npc.npc_direction = "up";
                    break;
                
                case 8:
                    obj_ceroba_npc.npc_direction = "right";
                    break;
                
                case 9:
                    obj_ceroba_npc.npc_direction = "down";
                    break;
                
                case 17:
                    skippable = false;
                    message_timer = 10;
                    break;
                
                case 18:
                    skippable = true;
                    message_timer = -1;
                    break;
                
                case 28:
                    skippable = false;
                    message_timer = 10;
                    break;
                
                case 29:
                    if (noloop_message < message_current)
                    {
                        noloop_message = message_current;
                        scr_screenshake(8, 2);
                        audio_play_sound(snd_ceroba_yell, 1, 0);
                        audio_stop_sound(other.cutscene_music);
                    }
                    
                    message_timer = -1;
                    skippable = true;
                    break;
                
                case 35:
                    obj_starlo_npc.npc_direction = "down";
                    break;
                
                case 37:
                    obj_starlo_npc.npc_direction = "up";
                    break;
                
                case 38:
                    obj_starlo_npc.npc_direction = "down";
                    break;
            }
        }
        
        break;
    
    case 36:
        if (!instance_exists(obj_newhome_03_effects))
            instance_create_depth(0, 119, -999, obj_newhome_03_effects);
        
        obj_martlet_npc.x = 0;
        obj_martlet_npc.y = 119;
        
        if (cutscene_npc_action_sprite(1164, 198, 1, true, 0, 672, 27))
            scene = 36;
        
        obj_starlo_npc.x = 0;
        obj_starlo_npc.y = 119;
        
        if (cutscene_npc_action_sprite(1169, 3385, 1, true, 0))
            scene = 36;
        
        obj_ceroba_npc.x = 0;
        obj_ceroba_npc.y = 119;
        obj_ceroba_npc.npc_dynamic_depth = false;
        obj_ceroba_npc.depth = obj_starlo_npc.depth + 1;
        
        if (cutscene_npc_action_sprite(1161, 2148, 1, true, 0))
            scene = 36;
        
        obj_player_npc.x = 0;
        obj_player_npc.y = 119;
        
        if (cutscene_npc_action_sprite(1168, 1274, 1, true, 0))
            scene = 36;
        
        if (obj_starlo_npc.image_index >= 20)
        {
            obj_newhome_03_effects.image_speed = 0;
            
            with (obj_actor_npc_base)
                image_speed = 0;
            
            scene = 36.5;
        }
        
        break;
    
    case 36.5:
        if (cutscene_dialogue())
        {
            obj_newhome_03_effects.image_speed = 1;
            
            with (obj_actor_npc_base)
                image_speed = 1;
            
            scene = 36.7;
        }
        
        with (msg)
        {
            sndfnt = 107;
            message[0] = "* Go, now!";
            prt[0] = 421;
        }
        
        break;
    
    case 36.7:
        if (cutscene_npc_action_sprite(1164, 198, 1, true, 0, 672, 27))
            scene = 36.7;
        
        if (obj_martlet_npc.image_index >= 50)
        {
            with (obj_actor_npc_base)
                image_speed = 0;
            
            scene = 37;
        }
        
        break;
    
    case 37:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 107;
            message[0] = "* Son of a!";
            prt[0] = 403;
            skippable = false;
            message_timer = 30;
        }
        
        break;
    
    case 38:
        with (obj_actor_npc_base)
            image_speed = 1;
        
        if (round(obj_starlo_npc.image_index) == 72)
        {
            if (!audio_is_playing(snd_newhome_03_starlo_defeat))
                audio_play_sound(snd_newhome_03_starlo_defeat, 1, 0);
        }
        
        if (floor(obj_starlo_npc.image_index) >= 108)
        {
            with (obj_actor_npc_base)
                image_speed = 0;
            
            scene++;
        }
        
        break;
    
    case 39:
        cutscene_music_start(154, 0);
        break;
    
    case 40:
        cutscene_wait(2.5);
        break;
    
    case 41:
        obj_ceroba_npc.image_speed = 1;
        
        if (round(obj_ceroba_npc.image_index) >= 119)
        {
            obj_ceroba_npc.sprite_index = spr_new_home_03_pref_ceroba_loop;
            obj_ceroba_npc.image_speed = 1;
            obj_ceroba_npc.action_sprite = true;
            obj_ceroba_npc.action_sprite_stop = false;
            instance_create_depth(0, 0, -2000, obj_petal_generator_overworld);
            cutscene_advance();
        }
        
        break;
    
    case 42:
        cutscene_wait(1.5);
        break;
    
    case 43:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Clover... ";
            message[1] = "* I... ";
            message[2] = "* I'm sorry for what I've#  done.";
            message[3] = "* I almost wish you never#  showed up in the Wild#  East.";
            message[4] = "* Maybe then I could've#  continued to bury my#  sorrows in the Saloon.";
            message[5] = "* But now... I must#  follow through with my#  mission.";
            prt[0] = 609;
            prt[1] = 609;
            prt[2] = 394;
            prt[3] = 371;
            prt[4] = 394;
            prt[5] = 609;
            position = 1;
        }
        
        break;
    
    case 44:
        scr_audio_fade_out(cutscene_music, 500);
        cutscene_wait(1.5);
        break;
    
    case 45:
        cutscene_music_start(14);
        break;
    
    case 46:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* I've somehow grown to#  respect the hell out of#  you but... ";
            message[1] = "* At the end of the#  day... you're naive.";
            message[2] = "* There is so much you#  don't understand about#  monsters.";
            message[3] = "* What, did you think#  you'd jump down here and#  find them?";
            message[4] = "* Five humans, living out#  their lives, unharmed...";
            message[5] = "* That isn't how it#  works.";
            prt[0] = 370;
            prt[1] = 377;
            prt[2] = 394;
            prt[3] = 370;
            prt[4] = 377;
            prt[5] = 370;
            position = 1;
        }
        
        break;
    
    case 47:
        obj_player_npc.image_speed = 1;
        
        if (round(obj_player_npc.image_index) >= 115)
        {
            obj_player_npc.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 48:
        cutscene_wait(1.5);
        break;
    
    case 49:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* I'm guessing you#  discovered that truth,#  right? Then what?";
            message[1] = "* Was your and Martlet's#  plan to storm Asgore's#  Castle for revenge?";
            message[2] = "* Or was it simply to#  plead for a free ticket#  back to the Surface?";
            message[3] = "* He only needs two more#  SOULS to shatter the#  barrier.";
            message[4] = "* Wouldn't hesitate for a#  SECOND to make that one.";
            message[5] = "* But... who am I to#  criticize how he carries#  out business?";
            message[6] = "* Here I am about to do#  the very same thing...";
            message[7] = "* I am a hypocrite. A#  liar. Sure.";
            message[8] = "* But at least I... ";
            message[9] = "* ...with Chujin's#  guidance, can save#  countless monster lives.";
            message[10] = "* These two couldn't#  understand that. And#  Asgore...";
            message[11] = "* Asgore is a coward.";
            message[12] = "* Didn't believe in my#  husband at all.";
            message[13] = "* He thinks problems will#  just disappear if he#  closes the curtains.";
            message[14] = "* I long for freedom as#  much as anyone but he...";
            message[15] = "* He doesn't consider#  what will happen once he#  gets his SOULS.";
            message[16] = "* Everyone else too.";
            message[17] = "* They all believe victory#  will come easy but the#  humans I've heard of?";
            message[18] = "* They are powerful.#  Ruthless.";
            message[19] = "* As soon as we try to#  leave...";
            message[20] = "* ...They will stuff us#  RIGHT back into this#  hellhole.";
            message[21] = "* They want our misery to#  fester until we give up#  and die out.";
            message[22] = "* ...";
            message[23] = "* I am no better than#  Asgore on a scale of#  morality, I'm sure of it.";
            message[24] = "* But what I am, is#  proactive.";
            message[25] = "* Monsterkind is worth#  protecting, so I will#  see that it is done. ";
            prt[0] = 370;
            prt[1] = 370;
            prt[2] = 377;
            prt[3] = 371;
            prt[4] = 370;
            prt[5] = 377;
            prt[6] = 394;
            prt[7] = 609;
            prt[8] = 371;
            prt[9] = 371;
            prt[10] = 370;
            prt[11] = 377;
            prt[12] = 394;
            prt[13] = 371;
            prt[14] = 394;
            prt[15] = 394;
            prt[16] = 371;
            prt[17] = 370;
            prt[18] = 394;
            prt[19] = 394;
            prt[20] = 368;
            prt[21] = 368;
            prt[22] = 394;
            prt[23] = 370;
            prt[24] = 377;
            prt[25] = 609;
            position = 1;
        }
        
        break;
    
    case 50:
        cutscene_audio_fade(cutscene_music, 0, 1500, 0.15, false, true);
        break;
    
    case 51:
        cutscene_wait(1);
        break;
    
    case 52:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Truthfully...";
            message[1] = "* I have nothing left in#  life, so I've made peace#  with throwing it away.";
            message[2] = "* ...";
            message[3] = "* You'll fight back, but#  you can't forever.";
            message[4] = "* Goodbye.";
            prt[0] = 609;
            prt[1] = 609;
            prt[2] = 609;
            prt[3] = 394;
            prt[4] = 609;
            position = 1;
        }
        
        break;
    
    case 53:
        obj_ceroba_npc.npc_dynamic_depth = false;
        obj_ceroba_npc.depth = -99999;
        cutscene_battle_initiate("ceroba", true, false);
        obj_heart_initiate_battle.x = 162;
        obj_heart_initiate_battle.y = 310;
        obj_heart_initiate_battle.x_override = 162;
        obj_heart_initiate_battle.y_override = 310;
        break;
}
