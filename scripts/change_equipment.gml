///change_equipment(args_list)
var args_list = argument0;
var item_name = args_list[| 0];
var type = args_list[| 1];

if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        // Add the old equipment to our inventory and change the equipped item
        if (type == "weapon") {
            pickup_item(o_data.items[? weapon], 1);
            weapon = item_name;
        }
        if (type == "armor") {
            pickup_item(o_data.items[? armor], 1);
            armor = item_name;
        }
    }
}
