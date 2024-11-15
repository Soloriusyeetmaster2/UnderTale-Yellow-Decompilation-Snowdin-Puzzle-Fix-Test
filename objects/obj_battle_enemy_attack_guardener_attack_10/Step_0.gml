var box, robot_b, hands_b, robot_a, arm, arm2, adv, x_target, lerp_amount_new, current_ball, max_shards, shard_spread, i, shard;

if (live_call())
    return global.live_result;

box = 3154;

switch (scene)
{
    case 0:
        if (obj_guardener_guy_a.active == false && obj_guardener_guy_a.is_on_target && obj_guardener_guy_b.is_on_target)
        {
            robot_b = instance_create(-40, box.y - 40, obj_guardener_guy_b_noarms);
            hands_b = instance_create_depth(robot_b.x, robot_b.y, robot_b.depth - 1, obj_guardener_guy_bow);
            hands_b.robot_parent = robot_b;
            robot_a = instance_create(room_width + 40, box.y, obj_guardener_guy_a_flintlock);
            cutscene_advance();
        }
        
        obj_guardener_guy_a.active = false;
        obj_guardener_guy_b.active = false;
        break;
    
    case 1:
        arm = instance_create_depth(box.bbox_left + 40, box.bbox_bottom + 5, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm_half);
        arm.launch_dir = "up";
        arm.image_angle = 180;
        arm.arm_return = 0;
        arm2 = instance_create_depth(box.bbox_right - 40, box.bbox_top - 5, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_arm_half);
        arm2.launch_dir = "down";
        arm2.image_angle = 0;
        arm2.arm_return = 0;
        cutscene_advance();
        break;
    
    case 2:
        cutscene_wait(1);
        break;
    
    case 3:
        adv = 2;
        
        with (obj_guardener_guy_a_flintlock)
        {
            x_target = box.bbox_right + 80;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y, 0.2);
            
            if (abs(x - x_target) < 1)
                adv -= 1;
        }
        
        with (obj_guardener_guy_b_noarms)
        {
            x_target = box.bbox_left - 40;
            x = lerp(x, x_target, 0.2);
            y = lerp(y, box.y, 0.2);
            
            if (abs(x - x_target) < 1)
                adv -= 1;
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 4:
        if (cutscene_wait(7))
        {
            obj_guardener_guy_bow.can_shoot = false;
            exit;
        }
        
        obj_guardener_guy_bow.can_shoot = true;
        lerp_amount_new = 0.1;
        
        if (obj_guardener_guy_a_flintlock.sprite_index != spr_guardener_guy_b_flintlock_shoot)
        {
            lerp_amount_new = 0.01;
            lerp_amount = lerp_amount_new;
        }
        
        lerp_amount = 0.1;
        obj_guardener_guy_a_flintlock.y = lerp(obj_guardener_guy_a_flintlock.y, obj_heart_battle_fighting_red.y + 30, lerp_amount);
        
        if (shoot_timer > 0)
        {
            shoot_timer -= 1;
        }
        else if (obj_heart_battle_fighting_parent.x > 320)
        {
            with (obj_guardener_guy_a_flintlock)
            {
                audio_play_sound(snd_guardener_flintlock, 1, 0);
                sprite_index = spr_guardener_guy_b_flintlock_shoot;
                image_index = 0;
                instance_create_depth(x - 40, y - 30, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_bullet);
            }
            
            shoot_timer = shoot_timer_max;
        }
        
        break;
    
    case 5:
        adv = 2;
        
        with (obj_guardener_guy_a_flintlock)
        {
            x_target = 720;
            x = lerp(x, x_target, 0.2);
            
            if (x > (x_target - 40))
                adv -= 1;
        }
        
        with (obj_guardener_guy_b_noarms)
        {
            x_target = -40;
            x = lerp(x, x_target, 0.2);
            
            if (x < (x_target + 20))
                adv -= 1;
        }
        
        if (adv <= 0)
            cutscene_advance();
        
        break;
    
    case 6:
        obj_guardener_guy_a.active = true;
        obj_guardener_guy_b.active = true;
        instance_destroy();
        break;
}

if (instance_exists(obj_guardener_guy_b_shield))
{
    current_ball = instance_find(obj_battle_enemy_attack_guardener_bullet, 0);
    
    if (instance_exists(obj_battle_enemy_attack_guardener_bullet))
        obj_guardener_guy_b_shield.y = lerp(obj_guardener_guy_b_shield.y, current_ball.y + 20, 0.4);
}

with (obj_guardener_guy_a_flintlock)
{
    if (image_index >= (image_number - 1))
    {
        switch (sprite_index)
        {
            case spr_guardener_guy_b_flintlock_reload:
                sprite_index = spr_guardener_guy_b_flintlock;
                image_index = 0;
                break;
            
            case spr_guardener_guy_b_flintlock_shoot:
                sprite_index = spr_guardener_guy_b_flintlock_reload;
                image_index = 0;
                break;
        }
    }
}

with (obj_battle_enemy_attack_guardener_bullet)
{
    if (place_meeting(x, y, obj_battle_enemy_attack_guardener_arm_half))
    {
        max_shards = 3;
        shard_spread = 45;
        
        for (i = 0; i < max_shards; i++)
        {
            shard = instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_bullet_shard);
            shard.speed = 4;
            shard.direction = -45 + (i * shard_spread);
        }
        
        instance_destroy();
    }
}
