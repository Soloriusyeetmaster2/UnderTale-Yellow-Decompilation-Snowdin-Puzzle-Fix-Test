if (global.sworks_flag[1] >= 4)
    tile_layer_hide(1000003);

if (global.sworks_flag[1] < 3)
{
    instance_create(0, 0, obj_steamworks_metal_sounds);
    instance_create(0, 0, obj_vignette);
}
