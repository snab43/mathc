///battle_bat_attack_state()
var sprite_data = o_data.sprites[? sprite_get_name(sprite[RANGED])];
battle_ranged_attack_state(sprite_data[? "xoffset"], sprite_data[? "yoffset"], o_bat_attack, sprite_data[? "hit frame"]);
