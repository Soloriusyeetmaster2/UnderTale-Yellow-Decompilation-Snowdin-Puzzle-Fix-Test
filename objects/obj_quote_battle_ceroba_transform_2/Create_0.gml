text_effect = "twitchy";
attack = false;
scene = 0;
cutscene_timer = 0;
skippable = true;
message_adv = false;
message[0] = "For Chujin...";
message_end = 0;
message_current = 0;
message_draw = "";
draw_enabled = true;
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
