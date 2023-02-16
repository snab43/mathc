///shop_option_info()
// Checks if data and parent exists
if (instance_exists(parent)) {
    // Finds the item ds_map based on the parent's array and index
    with (parent) var item = o_data.items[? inventory[index]];
    
    // Create the message
    if (item != undefined) {
        var message = create_message(x, y, item[? "info"]);
    } else {
        exit;
    }
}

// Hide the parent
visible = false;
child = message;
child.parent = id;
enabled = false;
