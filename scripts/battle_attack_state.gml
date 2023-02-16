///battle_attack_state()
battle_set_sprite(ATTACK, 0);
var foe = instance_place(x+32*image_xscale, y, o_battle_unit);

// Play sound
if (animation_hit_frame(0)) {
    if (foe.stats_object.defend) {
        audio_play_sound_effect(a_attack_shield_hit, false, 80);
        audio_play_sound_effect(a_shield_up, false, 50);
    } else {
        audio_play_sound_effect(a_attack_hit, false, 80);
    }
}

// Hit
if (animation_hit_frame(1)) {
    if (foe) {
        deal_damage(id, foe, chance((stats_object.stats[? "critical"]+crt_mod)/100), 1);
        set_hitflash(foe, room_speed/4);
        foe.state = battle_hit_state;
        view_screenshake(3, seconds_to_steps(0.15));
        
        // Set the view state
        o_battle_view.state = battle_view_idle_state;
    }
}

// Return
if (animation_end()) {
    state = battle_return_state;
}
