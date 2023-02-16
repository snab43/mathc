///item_option_sell()
if (instance_exists(parent)) {
    // Finds the item ds_map based on the parent's array and index
    with (parent) {
        var item = ds_list_find_value(o_player_stats.items, index);
        
        // Check if the player is trying to sell a key item
        if (item[? "key"]) {
            with (other) {
                var message = create_message(x, y, "Sorry, I can't#buy that.");
                
                // Hide the parent
                visible = false;
                child = message;
                child.parent = id;
                enabled = false;
            }
        } else {
            // Sell the item
            o_player_stats.candy += item[? "sell"];
            drop_item_index(index, 1);
            
            // Update the candy count
            instance_destroy(o_shop_ui.candy_count);
            o_shop_ui.candy_count = create_candy_message(8, display_get_gui_height()-31);
            
            // Play sound
            audio_play_sound_effect(a_sell_item, false, 50);
            
            // Update the items list
            ds_list_destroy(options);
            options = create_shop_item_sell_list();
            index = min(index, ds_list_size(options)-1);
            
            // Exit if all items are sold
            if (ds_list_size(o_player_stats.items) <= 0) instance_destroy();
        }
    }
}
