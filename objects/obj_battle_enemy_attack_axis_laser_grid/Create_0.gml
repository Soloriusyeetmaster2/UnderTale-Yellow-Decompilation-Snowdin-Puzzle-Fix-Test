var battle_box, gap, i, laser;

if (live_call())
    return global.live_result;

battle_box = 3154;
gap = 75;

for (i = 0; i < 14; i++)
{
    laser = instance_create_depth(battle_box.x, (battle_box.y + (gap * 0.5)) - (i * gap), -100, obj_battle_enemy_attack_axis_blue_laser_grid);
    laser.image_angle = 0;
    laser.speed_target = 2;
}

obj_heart_battle_fighting_parent.movement_mode = 2;
scr_enable_battle_box_surface();
attack_interval = room_speed * 1.25;
attack_count = 6;
scene = 0;
cutscene_timer = 0;
alarm[0] = 10;
