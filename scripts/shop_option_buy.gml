///item_option_buy()
if (instance_exists(parent)) {
    // Finds the item ds_map based on the parent's array and index
    with (parent) var item = o_data.items[? inventory[index]];
    
    // Check if the player can afford the item
    if (item[? "buy"] > o_player_stats.candy) {
        var message = create_message(x, y, "You don't have#enough candy!");
        
        // Hide the parent
        visible = false;
        child = message;
        child.parent = id;
        enabled = false;
    } else {
        // Buy the item
        o_player_stats.candy -= item[? "buy"];
        pickup_item(item, 1);
        
        // Play sound
        audio_play_sound_effect(a_buy_item, false, 50);
        
        // Update the candy count
        instance_destroy(o_shop_ui.candy_count);
        o_shop_ui.candy_count = create_candy_message(8, display_get_gui_height()-31);
    }
}
