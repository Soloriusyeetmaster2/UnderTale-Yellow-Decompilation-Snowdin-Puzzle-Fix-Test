event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (Gizmos and gadgets#  fill the deskspace.)";
        message[1] = "* (Looming over it all...#  a map)";
        message[2] = "* (On the map are several#  pinned locations of...)";
        message[3] = "* (...)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[4] = 102;
            message[4] = "* This isn't what Ed was#  talking about, right?";
            message[5] = "* I mean, this is clearly#  Chujin's office but...";
            message[6] = "* I wouldn't say it's#  strange to keep track of#  where humans...";
            message[7] = "* Sorry... I'm sure this#  is upsetting to look at.";
            message[8] = "* Still, many monsters do#  keep up with it.";
            message[9] = "* Those events are a big#  deal down here.";
            prt[4] = 311;
            prt[5] = 324;
            prt[6] = 338;
            prt[7] = 329;
            prt[8] = 321;
            prt[9] = 320;
        }
    }
    
    npc_flag = 1;
}
