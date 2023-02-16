///item_option_drop()
if (instance_exists(parent)) {
    with (parent) {
        // Make sure there are items in the list
        if (ds_list_size(o_player_stats.items) > 0) {
            // Make sure it isn't a key item
            var item = ds_list_find_value(o_player_stats.items, index);
            if (item[? "key"]) {
                var message = create_message(other.x, other.y, "You cannot drop#this item!");
                with (other) {
                    visible = false;
                    child = message;
                    child.parent = id;
                    enabled = false;
                }
            } else {
                // Remove the item
                drop_item_index(index, 1);
                
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
