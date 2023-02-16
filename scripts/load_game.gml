///load_game(file_name)
var file_name = argument0;

// Break cases
if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);
if (!instance_exists(o_player)) show_error("Save error: Player object not found.", false);

// Load the file
var loaded_data = ds_map_secure_load(file_name);
if (ds_exists(loaded_data, ds_type_map)) {
    ds_map_destroy(global.save_data);
} else {
    return false;
}

global.save_data = loaded_data;

// Load the stats
with (o_player_stats) {
    level = global.save_data[? "level"];
    candy = global.save_data[? "candy"];
    weapon = global.save_data[? "weapon"];
    armor = global.save_data[? "armor"];
    ds_map_destroy(stats);
    stats = get_stats_from_class("player");
    draw_health = stats[? "health"];
    
    // Load the items
    if (global.save_data[? "items"] != -1) {
        ds_list_copy(items, global.save_data[? "items"]);
        ds_list_copy(item_number, global.save_data[? "item number"]);
    }
}

// Load Player's position
with (o_player) {
    facing = global.save_data[? "facing"];
    x = global.save_data[? "x"];
    y = global.save_data[? "y"];
}

// Load the room
var saved_room = asset_get_index(global.save_data[? "room"]);
if (room != saved_room) {
    room_goto(saved_room);
    o_player.last_room = noone;
} else {
    room_restart();
}
global.new_room_load = true

// Success
return true;
