///deal_damage(attacker, defender, critical, modifier)
var attacker = argument0.stats_object;
var defender = argument1.stats_object;
var critical = argument2;   // True or False
var modifier = argument3;   // Percentage added at the end
var attacking_unit = argument0;
var defending_unit = argument1;

/*
    Lets say:
        Attacker: ATK = 10, EQUIP MOD = 2, LEVEL = 3, CRITICAL
        Defender: DEF = 8, EQUIP MOD = 4, LEVEL = 2, DEFENDING
*/

if (instance_exists(attacker) and instance_exists(defender)) {
    // Base values
    var attack = attacker.stats[? "attack"]+((attacker.level+attacking_unit.atk_mod)*2);       // 10 + ((3+2)*2) = 20
    var defense = defender.stats[? "defense"]+((defender.level+(defending_unit.def_mod*2))*2); //  8 + ((2+(2*4))*2) = 28
    
    // Damage calculations
    var damage = (attack - (defense*0.25))+1;   // (20 - (28*0.25))+1 = 14
    
    // Critical calculations
    // Damage is +50% if critical, and if on a defending target, by half + double the defense divided by 100
    var total_damage = damage+(damage*critical)/((defender.defend+1)+(defense/50*defender.defend));
    // 14 + (14*1) = 28 crit damage
    // 28 / 2+0.56 = 11 after defending

    // Attack-based modifier post-defending
    total_damage *= modifier;
    
    // Half the battle time by halfing the damage
    total_damage = total_damage/2;
    
    // Deal the damage
    defender.stats[? "health"] -= round(total_damage);
}
