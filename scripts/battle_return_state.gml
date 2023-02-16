///battle_return_state()
var targetx = xstart;
battle_set_sprite(RETURN, 0);
var spd = min(14, 32/image_number);

// Calculate the image speed
var frames = get_frames(targetx, xstart+BATTLE_SPACE*image_xscale, spd);
image_speed = get_image_speed_from_frames(frames, image_number);

x = approach(x, targetx, spd);

if (x == targetx) {
    state = battle_wait_state;
    action_meter = 0;
    o_battle.play = true;
}

// Play sound
if (animation_hit_frame(0)) {
    if (stats_object.stats[? "name"] == "Vampire" ) {
        audio_play_sound_effect(a_vampire_move, false, 80);
    } else {
        audio_play_sound_effect(a_return_woosh, false, 80);
    }
}
