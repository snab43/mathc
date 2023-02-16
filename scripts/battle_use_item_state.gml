///battle_use_item_state()
// Enemies can't use items
if (object_index != o_player_battle_unit) {
    state = battle_wait_state;
    exit;
}

// Change sprites
change_sprites(s_battle_player_use_item, 0, 0.125);

if (animation_hit_frame(0)) {
    // Set the view state
    o_battle_view.target[? "x"] = xstart+64*image_xscale;
    o_battle_view.state = battle_view_focus_state;
}

// Play sound
if (animation_hit_frame(3)) audio_play_sound_effect(a_use_item, false, 80);

// Use the item
if (animation_hit_frame(5)) use_item_index(item_index);

// Return to the idle state
if (animation_end()) {
    action_meter = 0;
    with (o_battle_unit) {
        state = battle_wait_state;
    }
    
    o_battle_view.state = battle_view_idle_state;
}
