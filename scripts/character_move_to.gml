///character_move_to(character, focus, x, y, relative, speed, wait_seconds)
var character = argument0;
var focus = argument1;
var xx = argument2;
var yy = argument3;
var relative = argument4;
var spd = argument5;
var wait_seconds = argument6;
var cutscene = id;

// Make sure the character exists
if (!instance_exists(character)) {
    action++;
    exit;
}

// Change the view target
if (instance_exists(o_view) and focus) {
    o_view.target[? "x"] = character.x;
    o_view.target[? "y"] = character.y;
}

// Create the target
with (character) {
    if (targetx == noone and targety == noone) {
        if (relative) {
            targetx = x+xx;
            targety = y+yy;
        } else {
            targetx = xx;
            targety = yy;
        }
        
        // Face the target
        var dir = point_direction(x, y, targetx, targety);
        facing = get_facing(dir);
        image_speed = 0.1;
    }
    
    // Move towards the target
    x = approach(x, targetx, spd);
    y = approach(y, targety, spd);
    
    // Reach the target
    if (x == targetx and y == targety) {
        image_speed = 0;
        image_index = 0;
        
        with (cutscene) {
            if (!wait(wait_seconds)) {
                other.targetx = noone;
                other.targety = noone;
            }
        }
    }
}
