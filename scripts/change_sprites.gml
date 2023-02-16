///change_sprites(sprite_index, image_index, image_speed)
/*
    Allows us to only change the sprite once if we're
    changing sprites in a step event.
*/

var sprite = argument0;
var index = argument1;
var spd = argument2;

// Change sprites
if (sprite_index != sprite) {
    sprite_index = sprite;
    image_index = index;
    image_speed = spd;
}
