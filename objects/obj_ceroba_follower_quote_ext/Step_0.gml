scr_text();

with (obj_dialogue)
{
    sndfnt = 108;
    ch_msg = 4;
    ch[1] = "Natural skill";
    ch[2] = "Brick toys";
    message[0] = "* You traveled with#  Martlet before the Wild#  East, right?";
    message[1] = "* She's a bit of a#  tinkerer if I recall.";
    message[2] = "* Did she teach you#  anything about building#  contraptions?";
    message[3] = "* You seemed to know what#  you were doing...";
    message[4] = "* ...to an extent.";
    prt[0] = 370;
    prt[1] = 371;
    prt[2] = 370;
    prt[3] = 370;
    prt[4] = 377;
    
    if (outcome == 1)
    {
        message[5] = "* Natural, eh?";
        message[6] = "* Lotta tenacity for#  someone your age.";
        message[7] = "* Then again...";
        message[8] = "* Almost everything you#  do goes against the norm#  for kids your age.";
        message[9] = "* You're an interesting#  one...";
        prt[5] = 370;
        prt[6] = 377;
        prt[7] = 394;
        prt[8] = 370;
        prt[9] = 371;
    }
    else if (outcome == 2)
    {
        message[5] = "* Brick toys? Like the#  little plastic ones?";
        message[6] = "* I guess I can see how#  that would help.";
        message[7] = "* My daughter loved those#  things when she was#  younger.";
        message[8] = "* Not the complex sets#  with instructions, ";
        message[9] = "* ...the bigger blocks#  she couldn't attempt to#  eat.";
        message[10] = "* Suckers would still#  hurt when stepped on,#  though.";
        prt[5] = 370;
        prt[6] = 371;
        prt[7] = 394;
        prt[8] = 371;
        prt[9] = 371;
        prt[10] = 395;
    }
}

if (!global.dialogue_open)
    instance_destroy();
