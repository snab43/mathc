///view_follow_player_state()

// Set the target
if (instance_exists(o_player)) {
    target[? "x"] = o_player.x;
    target[? "y"] = o_player.y;
}

if (room == r_neighborhood_up) {
    instance_destroy();
    view_xview[0] = 0;
    view_yview[0] = 0;
}
