function scr_recreate_heart_battle_menu_text_decibat()
{
    var last_text_move_select, action_1_selected_count, action_2_selected_count, action_3_selected_count, random_text_move_select;
    
    last_text_move_select = global.last_text_move_select;
    action_1_selected_count = global.action_1_selected_count;
    action_2_selected_count = global.action_2_selected_count;
    action_3_selected_count = global.action_3_selected_count;
    show_debug_message("Enemy sparing is:" + string(global.enemy_sparing));
    
    if (text_deadlock_1 == true)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, text_deadlock_contents_1);
    }
    else if (last_text_move_select == 0)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_intro);
        text_deadlock_contents_1 = 3004;
        text_deadlock_1 = true;
    }
    else if (global.enemy_sparing == true)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_sparing);
        text_deadlock_contents_1 = 3030;
        text_deadlock_1 = true;
    }
    else if ((global.action_1_selected_count + global.action_2_selected_count + global.action_3_selected_count) >= 1 && global.enemy_low_hp == false)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_special);
        text_deadlock_contents_1 = 3009;
        text_deadlock_1 = true;
    }
    else
    {
        random_text_move_select = irandom_range(1, 2);
        
        if (random_text_move_select == 1)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1);
            text_deadlock_contents_1 = 3020;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 2)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2);
            text_deadlock_contents_1 = 3021;
            text_deadlock_1 = true;
        }
    }
}
