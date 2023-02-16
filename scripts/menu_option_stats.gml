///menu_option_stats()
child = instance_create(x+width+2, y, o_message_ui);
child.parent = id;
enabled = false;

// Display the stats contents
with (child) {
    with (o_player_stats) {
        // Get strings
        var weapon_item = o_data.items[? weapon];
        var armor_item = o_data.items[? armor];
        var weapon_stats = o_data.equipment[? weapon];
        var armor_stats = o_data.equipment[? armor];
        var att = weapon_stats[? "attack"]+armor_stats[? "attack"];
        var def = weapon_stats[? "defense"]+armor_stats[? "defense"];
        var spd = weapon_stats[? "speed"]+armor_stats[? "speed"];
        var crit = weapon_stats[? "critical"]+armor_stats[? "critical"];
        
        // Compile the stats message
        other.message = "LVL "+string(level)+
                        "#HP "+string(stats[? "health"])+"/"+string(stats[? "maxhealth"])+
                        "#XP "+string(stats[? "experience"])+"/"+string(stats[? "maxexperience"])+
                        "##WEAPON: "+weapon_item[? "name"]+
                        "#ARMOR: "+armor_item[? "name"]+
                        "#  atk "+string(att)+"  def "+string(def)+
                        "#  spd "+string(spd)+"  crt "+string(crit)+"%"+
                        "##CANDY: "+string(candy)+"$";
    }
    width = string_width(message)+12;
    height = string_height(message)+12;
}
