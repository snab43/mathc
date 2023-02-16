///get_action_data()
return json_decode('{
    "attack": {
        "name"      : "Attack",
        "action"    : "battle_approach_state",
        "info"      : "A basic attack."
    },
    
    "defend": {
        "name"      : "Defend",
        "action"    : "action_defend",
        "info"      : "Reduces damage taken#by half and sets#action bar to half."
    },
    
    "fire spell": {
        "name"      : "Fire Spell",
        "action"    : "battle_fire_spell_state",
        "info"      : "Has a lower damage#rate, but double#critical chance."
    },
    
    "water spell": {
        "name"      : "Water Spell",
        "action"    : "battle_water_spell_state",
        "info"      : "Slightly higher damage#but half the#critical chance."
    },
    
    "haunt": {
        "name"      : "Haunt",
        "action"    : "battle_haunt_state",
        "info"      : "Instills pure#terror."
    },
    
    "bat attack": {
        "name"      : "Bat Attack",
        "action"    : "battle_bat_attack_state",
        "info"      : "A swarm of bats#attack the#enemy."
    }
}');
