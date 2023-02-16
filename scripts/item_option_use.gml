///item_option_use()
if (instance_exists(parent)) {
    with (parent) {
        // Make sure it isn't a key item
        var item = ds_list_find_value(o_player_stats.items, index);
        if (item[? "key"] or ((item[? "effect"] == "change_equipment") and room == r_battle)) {
            var message = create_message(other.x, other.y, "You cannot use#this item!");
            with (other) {
                visible = false;
                child = message;
                child.parent = id;
                enabled = false;
            }
        } else {
            // Are we in a battle?
            if (instance_exists(o_player_battle_unit)) {
                o_player_battle_unit.state = battle_use_item_state;
                o_player_battle_unit.item_index = index;
                instance_destroy();
            } else {
                // Use the item
                use_item_index(index);
                
                // Update the items list
                ds_list_destroy(options);
                options = create_items_option_list();
                index = min(index, ds_list_size(options)-1);
                
                // Exit if all items are dropped
                if (ds_list_size(o_player_stats.items) <= 0) {
                    instance_destroy();
                }
            }
        }
    }
}
