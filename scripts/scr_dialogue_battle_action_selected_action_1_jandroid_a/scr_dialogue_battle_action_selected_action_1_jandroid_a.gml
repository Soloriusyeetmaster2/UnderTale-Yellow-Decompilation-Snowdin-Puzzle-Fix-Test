function scr_dialogue_battle_action_selected_action_1_jandroid_a()
{
    if (global.enemy_low_hp == true)
    {
        message[0] = "* You ask Jandroid how they're#  still functioning.";
        global.last_action_selected = "Action 1 Low HP";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You ask Jandroid what their#  primary directive is.";
        global.last_action_selected = "Action 1 Message 0";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
    }
}
