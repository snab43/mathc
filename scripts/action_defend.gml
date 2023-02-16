///action_defend()
with (o_battle_unit) {
    state = battle_wait_state;
}

// Make the current unit defend
stats_object.defend = true;
action_meter = max_action_meter/2;

// Play sound
audio_play_sound_effect(a_shield_up, false, 70);
