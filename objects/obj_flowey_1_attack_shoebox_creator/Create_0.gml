var box;

if (live_call())
    return global.live_result;

box = 3154;
instance_create_depth(box.x, 80, -9999, obj_flowey_1_attack_shoebox);
alarm[0] = 240;
x = box.x;
y = box.bbox_top - 15;
