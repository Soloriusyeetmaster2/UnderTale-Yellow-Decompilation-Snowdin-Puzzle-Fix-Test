text_effect = "twitchy";
message[0] = "Come on, dig into#some deep aggression!";
message[1] = "Break down my self#esteem until it is#a pile of#metaphorical rubble!";
message[2] = "Crush my mental health#like a bug under#your shoe!";
message[3] = "Wait... do you crush#bugs?";
portrait_head[0] = 126;
portrait_hand[0] = 2058;
portrait_head[1] = 126;
portrait_hand[1] = 2058;
portrait_head[2] = 126;
portrait_hand[2] = 2058;
portrait_head[3] = 126;
portrait_hand[3] = 2058;
message_end = 3;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
