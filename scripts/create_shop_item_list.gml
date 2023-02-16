///create_shop_item_list(shop_inventory)
var shop_inventory = argument0;
var options = ds_list_create();

// Loop through the items
var items_list = o_shop_inventory.shop_inventory;
for (var i=0; i<ds_list_size(items_list); i++) {
    var item = items_list[| i];
    var item_info = o_data.items[? items_list[| i]];
    
    option_text = item_info[? "name"];
    
    // Prevent overflow
    var overflow_amount = 14;
    if (string_length(option_text) > overflow_amount) {
        option_text = string_copy(option_text, 0, overflow_amount-3);
        option_text += "...";
    }
    
    option_text += " ("+string(item[? "buy"])+"$)";
    
    options[| i] = create_option(option_text, shop_option_buy_ui);
}

mark_option_list(options);

return options;
