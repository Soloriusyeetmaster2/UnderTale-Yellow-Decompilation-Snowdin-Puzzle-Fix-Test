text_effect = "twitchy";
attack = false;
message[0] = "I don't think I#can bear this weight#any longer.";
message[1] = "You won this#battle.";
message[2] = "Do what needs to#be done.";
message_end = 2;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
