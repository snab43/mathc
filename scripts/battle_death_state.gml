///battle_death_state
image_speed = 0;
hitflash = true;
if (image_alpha > 0) {
    if (object_index == o_player_battle_unit) {
        image_alpha -= 0.006;
    } else {
        image_alpha -= 0.010;
    }
} else {
    instance_destroy();
    if (object_index == o_player_battle_unit) {
        room_goto(r_game_over);
    }
}
