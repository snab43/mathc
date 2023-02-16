///battle_action_state()
battle_set_sprite(IDLE, 0);
depth = -1;

// Enemy AI
if (object_index == o_enemy_battle_unit and alarm[1] == -1) {
    alarm[1] = round(random_range(room_speed/5, room_speed/2));
}

if (object_index == o_enemy_battle_unit and alarm[1] == 0) {
    // Check for attack and if the stats map doesn't exist
    if (ds_exists(stats, ds_type_map) and stats[? "health"] == draw_health) {
        // Make the enemy attack by default
        var action_index = 0;
        
        // Defend chance
        if (o_player_battle_unit.action_meter > 75 and chance(0.8)) action_index = 1;
        if (chance(0.1)) action_index = 1;
        
        // Vampire bat attack chance
        if (stats_object.stats[? "name"] == "Vampire" and chance(0.3)) action_index = 2;
        
        // Check for defend exception
        var action = actions[| action_index];
        if (action[? "name"] == "Defend") {
            script_execute(asset_get_index(action[? "action"]));
        } else {
            state = asset_get_index(action[? "action"]);
        }
    }
}
