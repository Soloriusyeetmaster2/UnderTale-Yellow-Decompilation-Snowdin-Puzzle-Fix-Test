function scr_determine_genocide_counter_total_dunes_yellow()
{
    var genocide_counter_array_max, i;
    
    global.dunes_genocide_counter_total = 0;
    genocide_counter_array_max = array_length_1d(global.dunes_genocide_counter) - 1;
    
    for (i = 1; i <= genocide_counter_array_max; i += 1)
        global.dunes_genocide_counter_total += global.dunes_genocide_counter[i];
}
