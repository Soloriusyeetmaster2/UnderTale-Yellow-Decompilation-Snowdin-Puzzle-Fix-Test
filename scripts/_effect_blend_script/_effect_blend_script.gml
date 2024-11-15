function _effect_blend() constructor
{
    g_Blend = 1;
    surf_blend = -1;
    surf_width = 1;
    surf_height = 1;
    clonedcam = -1;
    tempcam = -1;
    
    CloneCurrCam = function()
    {
        var currcam;
        
        if (clonedcam == -1)
            clonedcam = camera_create();
        
        currcam = camera_get_active();
        camera_copy_transforms(clonedcam, currcam);
    };
    
    cleanup = function()
    {
        if (surface_exists(surf_blend))
        {
            surface_free(surf_blend);
            surf_blend = -1;
        }
        
        if (tempcam != -1)
        {
            camera_destroy(tempcam);
            tempcam = -1;
        }
        
        if (clonedcam != -1)
        {
            camera_destroy(clonedcam);
            clonedcam = -1;
        }
    };
    
    room_end = function()
    {
        cleanup();
    };
    
    layer_begin = function()
    {
        var _draw_surface, _draw_width, _draw_height;
        
        if (event_type != ev_draw || event_number != 0)
            exit;
        
        if (!gmAffectsSingleLayerOnly)
            exit;
        
        _draw_surface = surface_get_target();
        _draw_width = surface_get_width(_draw_surface);
        _draw_height = surface_get_height(_draw_surface);
        
        if (!surface_exists(surf_blend))
            surf_blend = surface_create(_draw_width, _draw_height);
        else if (surf_width != _draw_width || surf_height != _draw_height)
            surface_resize(surf_blend, _draw_width, _draw_height);
        
        surf_width = _draw_width;
        surf_height = _draw_height;
        CloneCurrCam();
        surface_set_target(surf_blend);
        draw_clear_alpha(c_black, 0);
        camera_apply(clonedcam);
    };
    
    layer_end = function()
    {
        if (event_type != ev_draw || event_number != 0)
            exit;
        
        if (!gmAffectsSingleLayerOnly)
            exit;
        
        surface_reset_target();
        
        if (tempcam == -1)
            tempcam = camera_create_view(0, 0, surf_width, surf_height);
        else
            camera_set_view_size(tempcam, surf_width, surf_height);
        
        camera_apply(tempcam);
        gpu_push_state();
        gpu_set_blendmode(g_Blend);
        draw_surface(surf_blend, 0, 0);
        gpu_pop_state();
        camera_apply(clonedcam);
    };
}
