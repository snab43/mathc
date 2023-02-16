///create_candy_message(x, y);
var xx = argument0;
var yy = argument1;

var candy_count = instance_create(xx, yy, o_paired_message_ui);

with (candy_count) {
    message = string(o_player_stats.candy)+"$";
    width = string_width(message)+12;
    height = string_height(message)+12;
}

return candy_count;
