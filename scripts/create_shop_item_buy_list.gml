///create_shop_item_buy_list()
var options = ds_list_create();

// Loop through the items
for (var i=0; i<array_length_1d(inventory); i++) {
    var item = o_data.items[? inventory[i]];
    
    option_text = item[? "name"];
    
    // Prevent overflow
    var overflow_amount = 16;
    if (string_length(option_text) > overflow_amount) {
        option_text = string_copy(option_text, 0, overflow_amount-3);
        option_text += "...";
    }
    
    option_text += " ("+string(item[? "buy"])+"$)";
    
    options[| i] = create_option(option_text, shop_option_buy_ui);
}

mark_option_list(options);

return options;
