///battle_hit_state
battle_set_sprite(HIT, 0);

// Move the player based on the position in the animation
var input = (image_index/image_number)*pi;
x = xstart-sin(input)*16*image_xscale;

// Check for death
if (abs(x-xstart) > 12 and stats_object.stats[? "health"] <= 0) {
    stats_object.stats[? "health"] = 0;
    // Play sound
    if (object_index == o_enemy_battle_unit) {
        audio_play_sound_effect(asset_get_index(stats[? "deathsound"]), false, 80);
    } else {
        global.game_over = true;
        audio_play_sound_effect(a_death, false, 100);
        audio_set_next_song(a_silence, false);
    }

    state = battle_death_state;
}

// Return to the wait state
if (animation_end()) {
    state = battle_wait_state;
    
    // Set the view state
    o_battle_view.state = battle_view_idle_state;
    
    x = xstart;
}
