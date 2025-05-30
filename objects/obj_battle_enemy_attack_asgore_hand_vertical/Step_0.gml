var x_modif, route_percentage, flame;

if (live_call())
    return global.live_result;

if (image_alpha < 1)
    image_alpha += 0.1;

x_modif = 25 * -sign(image_yscale);
route_percentage = abs((y - ystart) / route_distance);

if (route_percentage < 1)
    x = xstart + (x_modif * sin(route_percentage * 3.14));

if (abs(y - ystart) > current_spawn_point)
{
    if (bullet_number > 0)
    {
        bullet_number -= 1;
        current_spawn_point += spawn_point_inc;
        flame = instance_create_depth(x, y, depth + 1, obj_battle_enemy_attack_asgore_hands_flame);
        flame.spawner_id = id;
    }
    else
    {
        with (obj_battle_enemy_attack_asgore_hands_flame)
        {
            if (!can_move && spawner_id == other.id)
            {
                direction = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
                can_move = true;
            }
        }
    }
}
