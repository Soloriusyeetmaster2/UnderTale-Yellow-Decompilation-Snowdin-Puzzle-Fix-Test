instance_create(720, 180, obj_starlo_npc);
instance_create(720, 180, obj_player_npc);
obj_starlo_npc.image_alpha = 0;
obj_player_npc.image_alpha = 0;
obj_player_npc.npc_direction = "down";
instance_create(760, 670, obj_ed_npc);
instance_create(1000, 485, obj_moray_npc);
instance_create(580, 280, obj_mooch_npc);
instance_create(580, 310, obj_ace_npc);
obj_ace_npc.npc_direction = "up";
scene = 0;
timer = 0;
