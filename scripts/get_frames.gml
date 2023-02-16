///get_frames(x1, x2, speed);
/*
    Returns the amount of frames it will take to go from
    one x position to another in a certain speed.
*/
var x1 = argument0;
var x2 = argument1;
var spd = argument2;

var dis = abs(x1-x2);
return (dis/spd);
