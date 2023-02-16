///save_game(file_name)
var file_name = argument0;

// Break cases
if (!instance_exists(o_player_stats)) show_error("Save error: Stats object not found.", false);
if (!instance_exists(o_player)) show_error("Save error: Player object not found.", false);

// Save the room
global.save_data[? "room"] = room_get_name(room);

// Save Player's position
with (o_player) {
    global.save_data[? "x"] = x;
    global.save_data[? "y"] = y;
    global.save_data[? "facing"] = facing;
}

// Save the player's stats
with (o_player_stats) {
    global.save_data[? "level"] = level;
    global.save_data[? "candy"] = candy;
    global.save_data[? "items"] = list_to_array(items);
    global.save_data[? "item number"] = list_to_array(item_number);
    global.save_data[? "weapon"] = weapon;
    global.save_data[? "armor"] = armor;
}

// Save the data
ds_map_secure_save(global.save_data, file_name);
