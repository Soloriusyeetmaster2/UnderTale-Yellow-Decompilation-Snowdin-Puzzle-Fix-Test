text_effect = "twitchy";
message[0] = "...";
message[1] = "Look.";
message[2] = "Look at me, coward!";
message[3] = "The fruits of your#labor.";
message[4] = "Does this make#you happy?";
message[5] = "Maybe if I were to#beg for mercy.";
message[6] = "Make you feel bad#about your actions?";
message[7] = "No...";
message[8] = "...";
message[9] = "Once you wipe#us out...";
message[10] = "...I hope you choke on#the dust that will#fill the air.";
message[11] = "...";
message[12] = "...In the meantime...";
message[13] = "Go to Hell.";
message_end = 13;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
