var battle_box, shield, hurt_player;

if (live_call())
    return global.live_result;

if (image_index >= 11 && move_noloop == false)
{
    speed = move_speed;
    move_noloop = true;
}

battle_box = 3154;

if (image_alpha < 0.99)
    image_alpha = lerp(image_alpha, 1, 0.25);
else
    image_alpha = 1;

if (place_meeting(x, y, obj_battle_enemy_attack_axis_shield))
{
    if (instance_exists(obj_battlebox_controller_axis))
        obj_battlebox_controller_axis.axis_trash_meter = clamp(obj_battlebox_controller_axis.axis_trash_meter + 10, 0, 100);
    
    obj_battle_enemy_attack_axis_shield.shield_hit = true;
    shield = 511;
    instance_create_depth(shield.x + lengthdir_x(6, shield.direction), shield.y + lengthdir_y(6, shield.direction), depth, obj_battle_enemy_attack_axis_energy_ball_boss_destroy_effect);
    instance_destroy();
}

hurt_player = false;

if (obj_heart_battle_fighting_axis.movement_mode == 1)
{
    if (bbox_bottom >= battle_box.bbox_bottom)
        hurt_player = true;
}
else if (collision_rectangle(battle_box.x - 5, battle_box.y - 5, battle_box.x + 5, battle_box.y + 5, id, false, false))
{
    hurt_player = true;
}

if (hurt_player)
{
    instance_destroy(self, false);
    instance_create_depth(320, 320, -100, obj_battle_enemy_attack_axis_energy_ball_explosion);
}

if (speed > 0)
    speed -= 1;
else
    speed = 0;
