///get_class_data()
return json_decode('{
    "player": {
        "name"      : "Player",
        "health"    : 20,
        "attack"    : 10,
        "defense"   : 10,
        "speed"     : 10,
        "critical"  : 0,
        "experience": 0,
        "actions"   : [],
        "deathsound": "a_death"
    },
    
    "mummy": {
        "name"      : "Mummy",
        "health"    : 12,
        "attack"    : 8,
        "defense"   : 10,
        "speed"     : 7,
        "critical"  : 10,
        "experience": 5,
        "candy"     : 8,
        "actions"   : ["attack", "defend"],
        "deathsound": "a_death_mummy"
    },
    
    "zombie": {
        "name"      : "Zombie",
        "health"    : 20,
        "attack"    : 5,
        "defense"   : 20,
        "speed"     : 5,
        "critical"  : 0,
        "experience": 6,
        "candy"     : 7,
        "actions"   : ["attack", "defend"],
        "deathsound": "a_death_zombie"
    },
    
    "ghost": {
        "name"      : "Ghost",
        "health"    : 15,
        "attack"    : 5,
        "defense"   : 3,
        "speed"     : 7,
        "critical"  : 0,
        "experience": 4,
        "candy"     : 4,
        "actions"   : ["haunt", "defend"],
        "deathsound": "a_death_ghost"
    },
    
    "skeleton": {
        "name"      : "Skeleton",
        "health"    : 10,
        "attack"    : 7,
        "defense"   : 8,
        "speed"     : 10,
        "critical"  : 10,
        "experience": 6,
        "candy"     : 8,
        "actions"   : ["attack", "defend"],
        "deathsound": "a_death_skeleton"
    },
    
    "vampire": {
        "name"      : "Vampire",
        "health"    : 8,
        "attack"    : 3,
        "defense"   : 5,
        "speed"     : 15,
        "critical"  : 30,
        "experience": 7,
        "candy"     : 10,
        "actions"   : ["attack", "defend", "bat attack"],
        "deathsound": "a_death_vampire"
    },
    
    "pumpkin": {
        "name"      : "Pumpkin Man",
        "health"    : 15,
        "attack"    : 12,
        "defense"   : 12,
        "speed"     : 12,
        "critical"  : 20,
        "experience": 20,
        "candy"     : 20,
        "actions"   : ["attack", "defend"],
        "deathsound": "a_death_pumpkin"
    },
    
    "witch": {
        "name"      : "Witch",
        "health"    : 30,
        "attack"    : 15,
        "defense"   : 16,
        "speed"     : 16,
        "critical"  : 25,
        "experience": 30,
        "candy"     : 30,
        "actions"   : ["attack", "defend"],
        "deathsound": "a_death_witch"
    }
}');
