///move(hspd, vspd, update_facing)
var hspd = argument0;
var vspd = argument1;
var update_facing = argument2;

// Horizontal movement
if (!place_meeting(x+hspd, y, o_solid)) {
    x += hspd;
}

// Vertical movement
if (!place_meeting(x, y+vspd, o_solid)) {
    y += vspd;
}

// Sprite direction
var dir = point_direction(0, 0, hspd, vspd);
var dis = point_distance(0, 0, hspd, vspd);
if (update_facing and dis > 0) facing = get_facing(dir);
var moved = x != xprevious or y != yprevious;

// Update spread
if (!moved) {
    image_speed = 0;
    image_index = 0;
} else {
    image_speed = 0.1;
}

// Return true if we aer able to move
return moved;
