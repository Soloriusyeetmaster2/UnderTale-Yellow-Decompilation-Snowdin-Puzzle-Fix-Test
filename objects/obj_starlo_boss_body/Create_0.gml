anim_loop_time = room_speed * 6;
anim_stretch_current = 1;
anim_stretch_max = 1.05;
anim_stage = 1;
anim_inc_multiplier = 2;
anim_inc_multiplier_max = 2;
anim_head_offset = y - obj_starlo_boss_head.y;
anim_head_offset_x = x - obj_starlo_boss_head.x;
damage_disjoint_count = 0;
damage_disjoint_x = 0;
no_loop_damage_disjoint_count = false;
starting_point_x = x;
starting_point_y = y;
base_sprite = spr_starlo_boss_body;
ready_sprite = spr_starlo_boss_body_ready;
shoot_sprite = spr_starlo_boss_body_shoot;
hurt_sprite = spr_starlo_boss_body;
death_sprite = false;
outro_sprite = spr_starlo_boss_body_shoot_outro;
set_outro_sprite = false;
outro_sprite_noloop = false;
starlo_quote_noloop_1 = false;
enemy_sparing_old = false;
enemy_betrayal_noloop = false;
