message[0] = "Now, remember what#I taught you!";
message[1] = "Dodge the bullets!";
portrait[0] = 1934;
portrait[1] = 3508;
message_end = 1;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
advance_message = false;
script_execute(scr_generate_text_counters);
