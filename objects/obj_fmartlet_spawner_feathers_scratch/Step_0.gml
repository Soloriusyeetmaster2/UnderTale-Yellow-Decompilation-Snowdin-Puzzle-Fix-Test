var battle_box, attack_instance, scratch_instance;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 20:
        attack_instance = instance_create_depth(battle_box.bbox_left + 30, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left + 30;
        attack_instance.y_target_override = battle_box.bbox_top + 30;
        break;
    
    case 33:
        attack_instance = instance_create_depth(battle_box.bbox_right - 30, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 30;
        attack_instance.y_target_override = battle_box.bbox_top + 30;
        break;
    
    case 46:
        attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.bbox_top + 30;
        break;
    
    case 66:
        attack_instance = instance_create_depth(battle_box.bbox_left - 20, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 30;
        attack_instance.y_target_override = battle_box.bbox_bottom - 30;
        break;
    
    case 79:
        attack_instance = instance_create_depth(battle_box.bbox_right + 20, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left + 30;
        attack_instance.y_target_override = battle_box.bbox_top + 30;
        break;
    
    case 87:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.attack_delay = 50;
        break;
    
    case 92:
        attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.bbox_bottom - 30;
        break;
    
    case 123:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.attack_delay = 1;
        scratch_instance.image_xscale = -1;
        break;
    
    case 200:
        instance_destroy();
        break;
}

attack_tick += 1;
