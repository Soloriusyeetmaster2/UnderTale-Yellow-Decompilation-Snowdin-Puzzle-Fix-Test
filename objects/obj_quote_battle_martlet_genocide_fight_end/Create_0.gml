text_effect = "twitchy";
message[0] = "...";
message[1] = "Okay...";
message[2] = "You win...";
message[3] = "I'm done attacking,#so please...";
message[4] = "Lower your weapon.";
message[5] = "...";
message[6] = "...Thank you...";
message[7] = "*huff* *huff*";
message[8] = "My handbook says#this thing...";
message[9] = "\"There's no shame#in a tactical#retreat.\"";
message[10] = "I've never... been#sure what that applied#to but...";
message[11] = "I think... huff#...that time is#  now.";

if (obj_martlet_g_body.fight_mode == true)
{
    portrait_head[0] = 3475;
    portrait_head[1] = 3475;
    portrait_head[2] = 1610;
    portrait_head[3] = 1543;
    portrait_head[4] = 1291;
    portrait_head[5] = 1291;
    portrait_head[6] = 1291;
    portrait_head[7] = 1673;
    portrait_head[8] = 3475;
    portrait_head[9] = 3475;
    portrait_head[10] = 1291;
    portrait_head[11] = 2116;
    portrait_head[12] = 1291;
    portrait_head[13] = 1291;
    portrait_head[14] = 1673;
    portrait_head[15] = 3475;
    portrait_head[16] = 1291;
    portrait_hand[0] = 2074;
    portrait_hand[1] = 2074;
    portrait_hand[2] = 2074;
    portrait_hand[3] = 2074;
    portrait_hand[4] = 2074;
    portrait_hand[5] = 2074;
    portrait_hand[6] = 2074;
    portrait_hand[7] = 2074;
    portrait_hand[8] = 2074;
    portrait_hand[9] = 2074;
    portrait_hand[10] = 2074;
    portrait_hand[11] = 2074;
    portrait_hand[12] = 2074;
    portrait_hand[13] = 2074;
    portrait_hand[14] = 2074;
    portrait_hand[15] = 2074;
    portrait_hand[16] = 2074;
}
else
{
    portrait_head[0] = 3475;
    portrait_head[1] = 3475;
    portrait_head[2] = 1610;
    portrait_head[3] = 1543;
    portrait_head[4] = 1291;
    portrait_head[5] = 322;
    portrait_head[6] = 1291;
    portrait_head[7] = 1673;
    portrait_head[8] = 3475;
    portrait_head[9] = 3475;
    portrait_head[10] = 1291;
    portrait_head[11] = 2116;
    portrait_head[12] = 1291;
    portrait_head[13] = 1291;
    portrait_head[14] = 1673;
    portrait_head[15] = 3475;
    portrait_head[16] = 1291;
    portrait_hand[0] = 2058;
    portrait_hand[1] = 2058;
    portrait_hand[2] = 2058;
    portrait_hand[3] = 2058;
    portrait_hand[4] = 2058;
    portrait_hand[5] = 2058;
    portrait_hand[6] = 2058;
    portrait_hand[7] = 2058;
    portrait_hand[8] = 2058;
    portrait_hand[9] = 2058;
    portrait_hand[10] = 2058;
    portrait_hand[11] = 2058;
    portrait_hand[12] = 2058;
    portrait_hand[13] = 2058;
    portrait_hand[14] = 2058;
    portrait_hand[15] = 2058;
    portrait_hand[16] = 2058;
}

message_end = 11;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
global.enemy_mode = 8;
