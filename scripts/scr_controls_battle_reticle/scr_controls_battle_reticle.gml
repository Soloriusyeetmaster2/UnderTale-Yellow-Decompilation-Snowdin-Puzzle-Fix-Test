function scr_controls_battle_reticle()
{
    if (outline > 0 && button_pressed == false)
        key_select = keyboard_multicheck_pressed(0);
    else
        key_select = 0;
}
