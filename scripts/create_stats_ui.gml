///create_stats_ui(x, y);
var xx = argument0;
var yy = argument1;

var stats_ui = instance_create(xx, yy, o_paired_message_ui);

// Set font to acurately determine width and height
draw_set_font(global.custom_small_font);

// Draw the stats
with (stats_ui) {
    with (o_player_stats) {
        other.message = "LV "+string(level)+
                        "#HP "+string(stats[? "health"])+"/"+string(stats[? "maxhealth"])+
                        "#CA "+string(candy);

    }
    width = string_width(message)+12;
    height = string_height(message)+12;
    font = global.custom_small_font;
}

// Return font back to regular
draw_set_font(global.custom_font);

return stats_ui;
