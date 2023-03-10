///move_intended_direction(hspd, vspd, distance)
var hspd = argument0;
var vspd = argument1;
var dis = argument2;

// Check for wall
var wall = instance_place(x+hspd, y+vspd, o_solid);

// Make sure there is a wall
if (wall) {
    switch (facing) {
        case UP:
        case DOWN:
            if (hspd != 0) exit; // No need to slide if we already have hspd
            for (var i=0; i<dis; i+=spd) {
                // Moving right
                if (!place_meeting(x+i, y+vspd, o_solid)) {
                    move(spd, 0, false);
                    break;
                }
                
                // Moving left
                if (!place_meeting(x-i, y+vspd, o_solid)) {
                    move(-spd, 0, false);
                    break;
                }
            }
            break;
            
        case RIGHT:
        case LEFT:
            if (vspd != 0) exit; // No need to slide if we already have vspd
            for (var i=0; i<dis; i+=spd) {
                // Moving up
                if (!place_meeting(x+hspd, y-i, o_solid)) {
                    move(0, -spd, false);
                    break;
                }
                
                // Moving down
                if (!place_meeting(x+hspd, y+i, o_solid)) {
                    move(0, spd, false);
                    break;
                }
            }
            break;
    }
}
