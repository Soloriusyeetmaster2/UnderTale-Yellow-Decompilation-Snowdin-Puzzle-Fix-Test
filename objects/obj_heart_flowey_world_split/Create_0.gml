var player_character;

image_speed = 0;
image_index = 0;
alarm[0] = 45;
alarm[1] = 90;
player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_split;
        break;
}

obj_flowey_world_controller.overlay_alpha = 1;
