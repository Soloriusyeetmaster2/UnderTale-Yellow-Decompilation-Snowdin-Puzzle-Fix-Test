text_effect = "twitchy";
message[0] = "We ain't done yet!";
message[1] = "Get ready for my#strongest atta-";
message_end = 1;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
talk_script = scr_talking_ed;
