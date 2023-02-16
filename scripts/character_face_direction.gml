///character_face_direction(character, facing, wait_seconds)
var character = argument0;
var facing = argument1;
var wait_seconds = argument2;

// Make sure the character exists
if (!instance_exists(character)) {
    action++;
    exit;
}

// Set the facing
character.facing = facing;
wait(wait_seconds);
