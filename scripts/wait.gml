///wait(seconds)
var steps = seconds_to_steps(argument0);

// Set the alarm
if (alarm[0] == -1) {
    alarm[0] = steps;
}

// End the wait
if (alarm[0] == 0) {
    action++;
    return false;
}

return true;
