if (scr_interact() && keyboard_multicheck_pressed(0) && global.sworks_flag[9] == 0)
{
    scr_cutscene_start();
    obj_steamworks_17b_controller.scene = 1;
}
