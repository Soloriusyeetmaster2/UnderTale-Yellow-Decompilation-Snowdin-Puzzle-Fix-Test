function scr_controls_battle_act()
{
    key_right = global.right_keyp;
    key_left = global.left_keyp;
    key_down = global.down_keyp;
    key_up = global.up_keyp;
    key_select = keyboard_multicheck_pressed(0);
    key_revert = keyboard_multicheck_pressed(1);
}
