text_effect = "twitchy";
message[0] = "Martlet of the Royal#Guard has encountered#a human!";
message[1] = "Prepare to apprehend!";
message[2] = "Protocol one, be#courteous and allow#your opponent the#first attack!";
message_col[0] = "Martlet                                            ";
portrait_head[0] = 2087;
portrait_hand[0] = 2058;
portrait_head[1] = 2087;
portrait_hand[1] = 2058;
portrait_head[2] = 126;
portrait_hand[2] = 2058;
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
