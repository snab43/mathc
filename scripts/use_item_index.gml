///use_item_index(item_index)
var item_index = argument0;

if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        // Find the item
        var item = ds_list_find_value(items, item_index);
        if (item != undefined) {
            // Check for the exit case
            if (item[? "battle"] and room != r_battle) {
                // Show a message and exit
                create_message_at_view_center("You cannot use this#item outside of battle.");
                with (other.parent) instance_destroy();
                with (other) instance_destroy();
                exit;
            }
            
            // Remove from the item number
            drop_item_index(item_index, 1);
            
            // Use the item
            script_execute(asset_get_index(item[? "effect"]), item[? "arguments"]);
            
            // Play sound
            audio_play_sound_effect(asset_get_index(item[? "sound"]), false, 80);
        }
    }
}
