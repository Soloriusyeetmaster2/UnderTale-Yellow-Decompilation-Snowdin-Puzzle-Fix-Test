var battle_box, ball_offset, laser, laser2;

if (live_call())
    return global.live_result;

battle_box = 3154;
ball_offset = 30;

switch (attack_tick)
{
    case 20:
    case 60:
        laser = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser.vspeed = 3;
        laser2 = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_orange_laser_geno);
        laser2.vspeed = -3;
        break;
    
    case 100:
        laser = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_orange_laser_geno);
        laser.vspeed = 3;
        laser2 = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser2.vspeed = -3;
        break;
    
    case 180:
        laser = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser.hspeed = 3;
        laser.image_angle = 90;
        laser2 = instance_create_depth(battle_box.bbox_right + 20, battle_box.y, -100, obj_battle_enemy_attack_axis_orange_laser_geno);
        laser2.hspeed = -3;
        laser2.image_angle = 90;
        break;
    
    case 220:
    case 260:
        laser = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_battle_enemy_attack_axis_orange_laser_geno);
        laser.hspeed = 3;
        laser.image_angle = 90;
        laser2 = instance_create_depth(battle_box.bbox_right + 20, battle_box.y, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser2.hspeed = -3;
        laser2.image_angle = 90;
        break;
    
    case 310:
        instance_destroy();
        break;
}

attack_tick += 1;
