text_effect = "twitchy";
message[0] = "Ah...";
message[1] = "Guess I had#this coming.";
message[2] = "If only I wore#my safety goggles,#heh...";
message[3] = "...";
message[4] = "I...";
message[5] = "I can't lie...";
message[6] = "I'm not ready...";
message[7] = "...";
message[8] = "Let my parents#know...";
message[9] = "...I'll be away for#a while.";
message[10] = "See you around,#kid.";
portrait_head[0] = 2127;
portrait_head[1] = 2127;
portrait_head[2] = 2127;
portrait_head[3] = 2127;
portrait_head[4] = 2127;
portrait_head[5] = 2127;
portrait_head[6] = 2127;
portrait_head[7] = 2127;
portrait_head[8] = 2127;
portrait_head[9] = 2127;
portrait_head[10] = 2127;
message_end = 10;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
