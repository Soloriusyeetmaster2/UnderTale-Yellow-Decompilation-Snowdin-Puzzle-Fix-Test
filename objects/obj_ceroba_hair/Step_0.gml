if (live_call())
    return global.live_result;

if (instance_exists(obj_ceroba_body_pacifist_phase_2))
{
    switch (obj_ceroba_body_pacifist_phase_2.sprite_index)
    {
        case -4:
        case spr_ceroba_p2_1:
            attach_points = [[2, -145]];
            break;
        
        case spr_ceroba_p2_idle_reveal:
            attach_points = [[-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [-4000, -4000], [2, -145]];
            break;
        
        case spr_ceroba_p2_sign:
            attach_points = [[2, -145], [2, -155], [2, -159], [2, -169], [2, -167], [2, -151], [2, -137], [2, -137], [2, -139], [2, -141], [2, -143]];
            break;
        
        case spr_ceroba_p2_special_attack:
            attach_points = [[-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [2, -145]];
            break;
        
        case spr_ceroba_p2_get_up_3:
            attach_points = [[-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [2, -145]];
            image_speed = 0;
            image_index = 0;
            break;
        
        default:
            attach_points = [[-1000, -1000]];
            break;
    }
    
    scr_point_attach(attach_points, 2833, true);
}
