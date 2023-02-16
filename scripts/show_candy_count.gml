///show_candy_count(seconds)
var duration = argument0*room_speed;

if (instance_exists(o_paired_message_ui)) instance_destroy(o_paired_message_ui);
show_candy = create_candy_message(8, display_get_gui_height()-31);
show_candy.alarm[0] = duration;

return show_candy;
