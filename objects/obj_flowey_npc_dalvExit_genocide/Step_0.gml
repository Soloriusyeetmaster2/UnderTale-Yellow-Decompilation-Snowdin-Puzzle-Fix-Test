if (waiter == 1)
{
    scr_text();
    
    if (global.save_count == 0)
    {
        with (msg)
        {
            if (global.route != 3)
            {
                portrait = true;
                sndfnt = 96;
                message[0] = "* Howdy!\t";
                message[1] = "* I... get the impression#  you like to roll solo.";
                message[2] = "* Ya know, with you never#  taking me up on my#  \"save\" offer.";
                message[3] = "* But look, you see those#  shattered planks on the#  ground?\t";
                message[4] = "* I can be a great help#  to you in times of#  trouble!\t";
                message[5] = "* Maybe you have some#  trust issues but...";
                message[6] = "* You need to get over#  that if you want a#  fighting chance, okay?";
                message[7] = "* See you up ahead,#  buddy.";
                prt[0] = 348;
                prt[1] = 348;
                prt[2] = 353;
                prt[3] = 348;
                prt[4] = 348;
                prt[5] = 347;
                prt[6] = 348;
                prt[7] = 348;
            }
            else
            {
                portrait = true;
                sndfnt = 96;
                color = true;
                col_modif[0] = 65535;
                message[0] = "* Howdy!\t";
                message[1] = "* I'm sure you could've#  smashed those yourself#  but...";
                message[2] = "* I can be a help to you#  sometimes.";
                message[3] = "* Like with... saving.#  Remember that?";
                message_col[3][0] = "               saving                  ";
                message[4] = "* Maybe you forgot.\t";
                message[5] = "* Wait...\t";
                message[6] = "* Is this about my vague#  threat earlier?";
                message[7] = "* I was only kiddin'#  around! You know me!\t";
                message[8] = "* Oh, well, I suppose you#  don't yet.";
                message[9] = "* Heh, what a pickle...\t";
                message[10] = "* All you need to know is#  I have your best#  interest in mind.";
                message[11] = "* You're heading down a#  dangerous path so...\t";
                message[12] = "* Don't forget to save,#  alright?";
                message[13] = "* Alright.";
                prt[0] = 348;
                prt[1] = 347;
                prt[2] = 348;
                prt[3] = 3640;
                prt[4] = 347;
                prt[5] = 353;
                prt[6] = 352;
                prt[7] = 348;
                prt[8] = 348;
                prt[9] = 347;
                prt[10] = 348;
                prt[11] = 347;
                prt[12] = 348;
                prt[13] = 348;
            }
        }
    }
    else
    {
        with (msg)
        {
            portrait = true;
            sndfnt = 96;
            message[0] = "* Howdy!";
            message[1] = "* Were you expecting that?";
            message[2] = "* I'm a little more#  helpful than you may#  have thought.";
            message[3] = "* Anything you can't do by#  yourself is my job.";
            message[4] = "* Anyway...";
            message[5] = "* Great job getting#  through here!";
            message[6] = "* Boy, am I glad to be on#  your side.";
            message[7] = "* Get ready because we#  have a long journey#  ahead.";
            message[8] = "* This is gonna be so much#  fun!";
            message[9] = "* I'll see you on the#  other side, pal!";
            prt[0] = 348;
            prt[1] = 347;
            prt[2] = 348;
            prt[3] = 348;
            prt[4] = 347;
            prt[5] = 353;
            prt[6] = 348;
            prt[7] = 348;
            prt[8] = 348;
            prt[9] = 347;
        }
    }
    
    waiter++;
}

if (waiter == 2 && !instance_exists(obj_dialogue))
    waiter++;

if (waiter == 3 && sprite_index != spr_floweyleave)
{
    sprite_index = spr_floweyleave;
    image_speed = 0.25;
    image_index = 0;
}

if (waiter == 4)
{
    global.cutscene = false;
    waiter = 0;
    obj_pl.alarm[0] = 1;
    instance_create(144, 188, obj_dalvExit_blocker);
    instance_destroy();
}

if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == 96)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        image_speed = 0.2;
    }
}

if (obj_pl.y < 160 && timer == 0)
{
    global.cutscene = true;
    obj_pl.image_speed = 0;
    timer = 1;
    instance_create(160, 80, obj_flowey_npc_boards_genocide);
}
