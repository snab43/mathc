///encounter()

// Exit cases
if (!instance_exists(o_player) or !instance_exists(o_random_encounters)) exit;

// Random encounters
if (o_random_encounters.on and !instance_exists(o_battle_transition)) {
    o_player.state = player_wait_state;
    o_player.persistent = false;
    instance_create(0, 0, o_battle_transition);
    
    // Change the song
    audio_set_next_song(a_battle_music, false);
}
