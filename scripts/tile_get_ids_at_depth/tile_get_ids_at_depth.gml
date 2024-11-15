function tile_get_ids_at_depth(argument0)
{
    var __depth, __currtile, __layers, __numlayers, __i, __els, __numels, __j, __eltype, __tiles;
    
    __depth = argument0;
    __tiles[0] = -1;
    __currtile = 0;
    __layers = layer_get_all();
    __numlayers = array_length_1d(__layers);
    
    for (__i = 0; __i < __numlayers; __i++)
    {
        if (layer_get_depth(__layers[__i]) != __depth)
            continue;
        
        __els = layer_get_all_elements(__layers[__i]);
        __numels = array_length_1d(__els);
        
        for (__j = 0; __j < __numels; __j++)
        {
            __eltype = layer_get_element_type(__els[__j]);
            
            if (__eltype == 7)
            {
                __tiles[__currtile] = __els[__j];
                __currtile++;
            }
        }
    }
    
    return __tiles;
}
