function scr_dialogue_battle_action_selected_action_1_know_cone_b()
{
    var action_1_selected_count_2;
    
    action_1_selected_count_2 = global.action_1_selected_count_2;
    
    if (global.enemy_low_hp_2 == true)
    {
        message[0] = "* You advocate Know Cone's search#  for fire.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 1 Low HP";
        global.last_action_selected_3 = "Nothing";
    }
    else
    {
        message[0] = "* You encourage Know Cone to#  follow his dreams.";
        global.last_action_selected = "Nothing";
        global.last_action_selected_2 = "Action 1 Message 0";
        global.last_action_selected_3 = "Nothing";
    }
}
