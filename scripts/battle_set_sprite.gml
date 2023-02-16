///battle_set_sprite(sprite_macro, image_index)
/*
    Sets the sprite of a battle unit.
*/
var macro = argument0;
var index = argument1;

change_sprites(sprite[macro], index, animation_speed[macro]);
