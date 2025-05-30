if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_speed = 1;
        
        if (image_index >= (image_number - 1))
        {
            image_index = image_number - 1;
            image_speed = 0;
            scene++;
        }
        
        break;
    
    case 1:
        obj_player_npc.image_alpha += 0.2;
        
        if (obj_player_npc.image_alpha >= 1)
            scene++;
        
        break;
    
    case 2:
        if (cutscene_npc_walk(1168, obj_player_npc.x, 170, 3, "y", "down"))
        {
            if (global.party_member != -4)
                scene = 3;
            else
                scene = 6;
        }
        
        break;
    
    case 3:
        obj_martlet_npc.image_alpha += 0.2;
        
        if (obj_martlet_npc.image_alpha >= 1)
            scene++;
        
        break;
    
    case 4:
        cutscene_npc_walk(1164, obj_player_npc.x, obj_player_npc.y - 5, 3, "y", "down");
        break;
    
    case 5:
        obj_pl.direction = 270;
        cutscene_actor_into_follower();
        break;
    
    case 6:
        image_speed = -1;
        
        if (image_index <= 1)
        {
            image_index = 0;
            image_speed = 0;
            scene++;
        }
        
        break;
    
    case 7:
        instance_destroy(obj_player_npc);
        scr_cutscene_end();
        scene = 8;
        break;
}

switch (scene)
{
    case 8:
        if (scr_interact() && keyboard_multicheck_pressed(0))
        {
            audio_play_sound(snd_sliding_door_open, 1, 0);
            image_speed = 1;
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 9:
        if (image_index > (image_number - 1))
        {
            image_speed = 0;
            image_index = image_number - 1;
            cutscene_advance();
        }
        
        break;
    
    case 10:
        if (global.party_member != -4)
        {
            cutscene_follower_into_actor();
            obj_martlet_npc.x_dest = 0;
            obj_martlet_npc.y_dest = 0;
            obj_martlet_npc.x_dest[0] = 0;
            obj_martlet_npc.y_dest[0] = 0;
            obj_martlet_npc.can_walk = false;
        }
        
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_advance(11);
        break;
    
    case 11:
        if (cutscene_npc_walk(1168, 2000, 140, 3, "x", "up"))
            cutscene_advance(11);
        
        if (obj_player_npc.y < 145 && obj_player_npc.image_alpha > 0)
            obj_player_npc.image_alpha -= 0.2;
        
        if (obj_player_npc.image_alpha <= 0)
        {
            if (global.party_member != -4)
                scene = 12;
            else
                scene = 13;
        }
        
        break;
    
    case 12:
        if (cutscene_npc_walk(1164, obj_player_npc.x, 140, 3, "x", "up"))
            cutscene_advance(12);
        
        if (obj_martlet_npc.y < 145 && obj_martlet_npc.image_alpha > 0)
            obj_martlet_npc.image_alpha -= 0.2;
        
        if (obj_martlet_npc.image_alpha <= 0)
            cutscene_advance(13);
        
        break;
    
    case 13:
        cutscene_change_room(259, 160, 220, 0.1);
        break;
}
