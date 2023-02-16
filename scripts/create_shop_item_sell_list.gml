///create_shop_item_sell_list()
var options = ds_list_create();

// Loop through the items
var items_list = o_player_stats.items;
for (var i=0; i<ds_list_size(items_list); i++) {
    var item = items_list[| i];
    var item_number = o_player_stats.item_number[| i];
    var option_text = item[? "name"]; // Apple
    if (item_number > 1) option_text = "*"+string(item_number)+" "+item[? "name"]+"s"; // x5 Apples
    
    // Attempt to prevent the text from going past the ui frame
    var overflow_amount = 16;
    if (string_length(option_text) > overflow_amount) {
        option_text = string_copy(option_text, 0, overflow_amount-3);
        option_text += "...";
    }
    
    option_text += " ("+string(item[? "sell"])+"$)";
    
    options[| i] = create_option(option_text, item_option_sell_ui);
}

mark_option_list(options);

return options;
