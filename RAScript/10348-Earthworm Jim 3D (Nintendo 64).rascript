// Earthworm Jim 3D
// #ID = 10348

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

version = byte(0x000004)
versions =  {
    "EUR": 0x14,
    "USA": 0x24
}

eur_offset = 0x1E60 // Most used offset, works for most in-game data (not all system data)
constant_zero = 0x09 // Address for zero counts
const_type_hub = 0
const_type_stage = 1
const_type_boss = 2

stages = { // base addresses are USA
    "brain" : {
        "id": 0x00,
        "name": "Brain",
        "stage_type": const_type_stage,
        "udders_total": 0x01,
        "udders_count": {
            "USA": 0x0c61f5,
            "EUR": 0
        },
        "udders_ach_id": 344286,
        "udders_ach_points": 1,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        }
    },
    "hub_memory" : {
        "id": 0x01,
        "name": "Memory Hub",
        "stage_type": const_type_hub,
        "udders_total": 0,
        "udders_count": {
            "USA": 0,
            "EUR": 0
        },
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        }
    },
    "coop_detat" : {
        "id": 0x02,
        "name": "Coop D'Etat",
        "stage_type": const_type_stage,
        "udders_total": 0x03,
        "udders_count": {
            "USA": 0x0c61fb,
            "EUR": 0
        },
        "udders_ach_id": 344287,
        "udders_ach_points": 5,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e1,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c618c,
            "EUR": 0
        }
    },
    "barn_to_be_wild": {
        "id": 0x03,
        "name": "Barn to be Wild",
        "stage_type": const_type_stage,
        "udders_total": 0x07,
        "udders_count": {
            "USA": 0x0c61fa,
            "EUR": 0
        },
        "udders_ach_id": 344283,
        "udders_ach_points": 5,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c6190,
            "EUR": 0
        }
    },
    "psycrow":  {
        "id": 0x04,
        "name": "Psycrow",
        "stage_type": const_type_boss,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c61f9,
            "EUR": 0
        },
        "udders_ach_id": 344296,
        "udders_ach_points": 10,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        },
        "halfwit_points": 10
    },
    "hub_happiness" : {
        "id": 0x05,
        "name": "Happiness Hub",
        "stage_type": const_type_hub,
        "udders_total": 0,
        "udders_count": {
            "USA": 0,
            "EUR": 0
        },
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        }
    },
    "lord_of_the_fries" : {
        "id": 0x06,
        "name": "Lord of the Fries",
        "stage_type": const_type_stage,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c61ff,
            "EUR": 0
        },
        "udders_ach_id": 344292,
        "udders_ach_points": 5,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e5,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c619c,
            "EUR": 0
        }
    },
    "hungry_tonite": {
        "id": 0x07,
        "name": "Hungry Tonite?",
        "stage_type": const_type_stage,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c61fe,
            "EUR": 0
        },
        "udders_ach_id": 344291,
        "udders_ach_points": 5,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e4,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c61a0,
            "EUR": 0
        }
    },
    "fatty_roswell": {
        "id": 0x08,
        "name": "Fatty Roswell",
        "stage_type": const_type_boss,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c61fd,
            "EUR": 0
        },
        "udders_ach_id": 344289,
        "udders_ach_points": 10,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        },
        "halfwit_points": 10
    },
    "hub_fear": {
        "id": 0x09,
        "name": "Fear Hub",
        "stage_type": const_type_hub,
        "udders_total": 0,
        "udders_count": {
            "USA": 0,
            "EUR": 0
        },
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        }
    },
    "mansion_lobby": {
        "id": 0x0a,
        "name": "Mansion Lobby",
        "stage_type": const_type_stage,
        "udders_total": 0,
        "udders_count": {
            "USA": 0,
            "EUR": 0
        },
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        }
    },
    "poultrygeist": {
        "id": 0x0b,
        "name": "Poultrygeist",
        "stage_type": const_type_stage,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c6202,
            "EUR": 0
        },
        "udders_ach_id": 344294,
        "udders_ach_points": 10,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e8,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c61b0,
            "EUR": 0
        }
    },
    "poultrygeist_too": {
        "id": 0x0c,
        "name": "Poultrygeist Too",
        "stage_type": const_type_stage,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c6201,
            "EUR": 0
        },
        "udders_ach_id": 344295,
        "udders_ach_points": 10,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61ef,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c61b4,
            "EUR": 0
        }
    },
    "death_wormed_up": {
        "id": 0x0d,
        "name": "Death Wormed Up",
        "stage_type": const_type_stage,
        "udders_total": 0x06,
        "udders_count": {
            "USA": 0x0c6200,
            "EUR": 0
        },
        "udders_ach_id": 344288,
        "udders_ach_points": 10,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61ee,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c61b8,
            "EUR": 0
        }
    },
    "boogie_nights": {
        "id": 0x0e,
        "name": "Boogie Nights",
        "stage_type": const_type_stage,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c6207,
            "EUR": 0
        },
        "udders_ach_id": 344285,
        "udders_ach_points": 10,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61ed,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c61bc,
            "EUR": 0
        }
    },
    "monkey_for_a_head": {
        "id": 0x0f,
        "name": "Monkey for a Head",
        "stage_type": const_type_boss,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c6206,
            "EUR": 0
        },
        "udders_ach_id": 344293,
        "udders_ach_points": 10,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        },
        "halfwit_points": 10
    },
    "hub_fantasy": {
        "id": 0x10,
        "name": "Fantasy Hub",
        "stage_type": const_type_hub,
        "udders_total": 0,
        "udders_count": {
            "USA": 0,
            "EUR": 0
        },
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        }
    },
    "violent_death_valley": {
        "id": 0x11,
        "name": "Violent Death Valley",
        "stage_type": const_type_stage,
        "udders_total": 0x06,
        "udders_count": {
            "USA": 0x0c6204,
            "EUR": 0
        },
        "udders_ach_id": 344297,
        "udders_ach_points": 10,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61f2,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c61c8,
            "EUR": 0
        }
    },
    "good_bad_elderly": {
        "id": 0x12,
        "name": "The Good, Bad and The Elderly",
        "stage_type": const_type_stage,
        "udders_total": 0x06,
        "udders_count": {
            "USA": 0x0c620b,
            "EUR": 0
        },
        "udders_ach_id": 344290,
        "udders_ach_points": 10,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61f1,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0x0c61cc,
            "EUR": 0
        }
    },
    "bob_and_no4": {
        "id": 0x13,
        "name": "Bob and Number 4",
        "stage_type": const_type_boss,
        "udders_total": 0x05,
        "udders_count": {
            "USA": 0x0c620a,
            "EUR": 0
        },
        "udders_ach_id": 344284,
        "udders_ach_points": 10,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        },
        "halfwit_points": 25
    },
    "boss_final": {
        "id": 0x14,
        "name": "Final Boss",
        "stage_type": const_type_boss,
        "udders_total": 0,
        "udders_count": {
            "USA": 0,
            "EUR": 0
        },
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        },
        "halfwit_points": 50
    },
    "intro_dance": {
        "id": 0x15,
        "name": "Accordian Dance",
        "stage_type": const_type_hub,
        "udders_total": 0,
        "udders_count": {
            "USA": 0,
            "EUR": 0
        },
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        },
        "steps_count": {
            "USA": 0,
            "EUR": 0
        }
    },
}

// - USA EUR version building
for stage in stages {
    if(stages[stage]["udders_total"] > 0 )  stages[stage]["udders_count"]["EUR"]    = stages[stage]["udders_count"]["USA"] + eur_offset
    if(stages[stage]["marbles_total"] > 0 ) stages[stage]["marbles_count"]["EUR"]   = stages[stage]["marbles_count"]["USA"] + eur_offset
    stages[stage]["steps_count"]["EUR"]    = stages[stage]["steps_count"]["USA"] + eur_offset
}

//- RP Lookups

stage_names = {}
for stage in stages {
    stage_names[stages[stage]["id"]] = stages[stage]["name"]
}

stage_total_udders = {}
for stage in stages {
    stage_total_udders[stages[stage]["id"]] = ""+stages[stage]["udders_total"]
}

stage_udders = {}
for stage in stages {
    stage_udders[stages[stage]["id"]] = stages[stage]["udders_count"]
}

stage_steps = {}
for stage in stages {
    if(stages[stage]["id"] != 0 && stages[stage]["stage_type"] == const_type_stage && stages[stage]["udders_total"] + stages[stage]["marbles_total"] > 0){
        tagline = "udders and marbles"
        if(stages[stage]["udders_total"] == 0 && stages[stage]["marbles_total"] > 0) tagline = "marbles"
        if(stages[stage]["udders_total"] > 0 && stages[stage]["marbles_total"] == 0) tagline = "udders"
        stage_steps[stage] = {
            "name": stages[stage]["name"],
            "target": (stages[stage]["udders_total"] + stages[stage]["marbles_total"]),
            "tagline": tagline
        }
    }
}

weapons = {
    "blaster": {
        "id": 0x00,
        "name": "Standa-da-da-da-da-dard Blaster",
        "points": 0
    },
    "apollo_13": {
        "id": 0x02,
        "name": "Apollo 13",
        "points": 3
    },
    "bananamite": {
        "id": 0x04,
        "name": "Bananamite",
        "points": 2
    },
    "laser": {
        "id": 0x05,
        "name": "Laser",
        "points": 2
    },
    "peashooter": {
        "id": 0x06,
        "name": "Peashooter",
        "points": 2
    },
    "egg_chucker": {
        "id": 0x07,
        "name": "Egg Chucker",
        "points": 1
    },
    "magnum": {
        "id": 0x09,
        "name": "Magnum",
        "points": 5
    },
    "gun_funky": {
        "id": 0x0a,
        "name": "Funky Gun",
        "points": 3
    },
    "gun_cleaver": {
        "id": 0x0b,
        "name": "Cleaver Gun",
        "points": 1
    },
    "gun_gnome": {
        "id": 0x0c,
        "name": "Gnome Gun",
        "points": 1
    }
}

sanity_threshold = {
    "pond_scum": 0,
    "a_waffle": 60,
    "most_accountants": 101,
    "gorgonzola": 131,
    "a_spleen": 187,
    "a_chat_show_host": 239,
    "my_pet_hamster": 293,
    "a_nut_log": 361,
    "your_cousin_billy": 427,
    "a_fur_covered_trout": 483,
    "shers_plastic_sturgeon": 599,
    "flossing": 701,
    "a_shiny_button": 827,
    "youll_ever_be": 950,
    "a_smart_superhero": 1000
}

sanity_ach_ids = {
    sanity_threshold["a_waffle"]: {
        "id":344298,
        "name": "A Waffle",
        "points": 1
    },
    sanity_threshold["most_accountants"]: {
        "id":344170,
        "name": "Most Accountants",
        "points": 1
    },
    sanity_threshold["gorgonzola"]: {
        "id":0,
        "name": "Gorgonzola",
        "points": 2
    },
    sanity_threshold["a_spleen"]: {
        "id":0,
        "name": "A Spleen",
        "points": 2
    },
    sanity_threshold["a_chat_show_host"]: {
        "id":0,
        "name": "A Chat Show Host",
        "points": 4
    },
    sanity_threshold["my_pet_hamster"]: {
        "id":0,
        "name": "My Pet Hamster",
        "points": 5
    },
    sanity_threshold["a_nut_log"]: {
        "id":0,
        "name": "A Nut Log",
        "points": 5
    },
    sanity_threshold["your_cousin_billy"]: {
        "id":0,
        "name": "Your Cousin Billy",
        "points": 5
    },
    sanity_threshold["a_fur_covered_trout"]: {
        "id":0,
        "name": "A Fur Covered Trout",
        "points": 5
    },
    sanity_threshold["shers_plastic_sturgeon"]: {
        "id":0,
        "name": "Sher's Plastic Sturgeon",
        "points": 10
    },
    sanity_threshold["flossing"]: {
        "id":0,
        "name": "Flossing",
        "points": 10
    },
    sanity_threshold["a_shiny_button"]: {
        "id":0,
        "name": "A Shiny Button",
        "points": 10
    },
    sanity_threshold["youll_ever_be"]: {
        "id":0,
        "name": "You'll Ever Be",
        "points": 25
    },
    sanity_threshold["a_smart_superhero"]: {
        "id":0,
        "name": "A Smart Superhero",
        "points": 50
    }
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

game_paused = {
    "USA": byte(0x0d9c7f),
    "EUR": byte(0x0dbadf)
}

pause_menu_type = {
    "USA": word(0x084dc2),
    "EUR": word(0x084e5e)
} 

always_running = {
    "USA": dword(0x0d8f7c),
    "EUR": dword(0x0daddc)
}

current_stage_id = {
    "USA":  dword(0x0a93c4),
    "EUR":  dword(0x0a9464)
}
current_weapon_id   = {
    "USA": dword(0x0c6a8c),
    "EUR": dword(0x0c6a8c + eur_offset)
}
current_saveslot    = {
    "USA": word(0x0c6182),
    "EUR": word(0x0c6182 + eur_offset)
}

earthworm_kim_model = {
    "USA": byte(0x0c6dc3),
    "EUR": byte(0x0c6dc3 + eur_offset)
}

earthworm_kim_bodyswap = {
    "USA": byte(0x0c6dde),
    "EUR": byte(0x0c6dde + eur_offset)
}

hp = {
    "USA": dword(0x0c690c),
    "EUR": dword(0x0c876c)
}

boss_pointer = {
    "USA": tbyte(0x0ca6a0),
    "EUR": tbyte(0x0cc500)
}


jim_boost_offset   = 0x32
jim_marbles_offset  = 0x33
boss_boost_offset = 0x7e
boss_marbles_offset = 0x7f

boss_ready = {
    "USA": byte(0x0a9cbd),
    "EUR": byte(0x0a9d5d)
}

function titlescreen(ver)       => current_saveslot[ver] == 0xFFFF
function in_game(ver)           => !titlescreen(ver) && prev(current_saveslot[ver]) == current_saveslot[ver] // Save Menu Switching Protection
function is_earthworm_kim(ver)  => earthworm_kim_model[ver] == 0x01
function cheats_off(ver)        => pause_menu_type[ver] != 0x1440


function total_udders(ver){
    total = 0
    for stage in stages {
        if (stages[stage]["udders_total"] > 0) total = total + byte(stages[stage]["udders_count"][ver])
    }
    return total
}

function total_marbles(ver){
    total = 0
    for stage in stages {
        if (stages[stage]["marbles_total"] > 0) total = total + byte(stages[stage]["marbles_count"][ver])
    }
    return total
}

for stage in stages {
    for ver in versions {
       if( stages[stage]["udders_total"] == 0 ) stages[stage]["udders_count"][ver] = constant_zero
        if( stages[stage]["marbles_total"] == 0 ) stages[stage]["marbles_count"][ver] = constant_zero
    }
}

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

// the message

message_triggers = []
for ver in versions {
    array_push(message_triggers,
        version == versions[ver] &&
        prev(current_saveslot[ver]) == 0xFFFF &&
        current_saveslot[ver] != 0xFFFF
    )
}
achievement(
    title = "!NOTICE! This Game Requires Specific Emulator Settings",
    points = 0,
    description = "Please view the forum topic on RetroAchievements.org for more information",
    id = 0,
    trigger = any_of(message_triggers, t => t)
)

// continue

for stage in stages {
    if( stages[stage]["udders_total"] > 0 ){
        triggers = []
        for ver in versions {
            array_push(triggers,
                version == versions[ver] &&
                cheats_off(ver) &&
                in_game(ver) &&
                current_stage_id[ver] == stages[stage]["id"] &&
                prev(byte(stages[stage]["udders_count"][ver])) < stages[stage]["udders_total"] &&
                byte(stages[stage]["udders_count"][ver]) == stages[stage]["udders_total"]
            )
        }
        achievement(
            title = "Golden Udders: " + stages[stage]["name"],
            points = stages[stage]["udders_ach_points"],
            description = "Collect All of the Golden Udders in the Stage '" + stages[stage]["name"] + "'",
            id = stages[stage]["udders_ach_id"],
            trigger = any_of(triggers, t => t)
        )
    }
}

for achid in sanity_ach_ids {
    triggers = []
    for ver in versions {
        array_push(triggers,
            version == versions[ver] &&
            cheats_off(ver) &&
            in_game(ver) &&
            prev(total_marbles(ver)) > achid-5 &&
            prev(total_marbles(ver)) < achid &&
            total_marbles(ver) >= achid
        )
    }
    achievement(
        title = "You're As Smart As " + sanity_ach_ids[achid]["name"] +  "!",
        points = sanity_ach_ids[achid]["points"],
        description = "Collect Enough Marbles To Become As Smart As '" + sanity_ach_ids[achid]["name"] + "'",
        id = sanity_ach_ids[achid]["id"],
        trigger = any_of(triggers, t => t)
    )
}

for weapon in weapons {
    if( weapons[weapon]["id"] != 0) {
        triggers = []
        for ver in versions {
            array_push(triggers,
                version == versions[ver] &&
                cheats_off(ver) &&
                in_game(ver) &&
                prev(current_weapon_id[ver]) != weapons[weapon]["id"] &&
                current_weapon_id[ver] == weapons[weapon]["id"]
            )
        }
        achievement(
            title = "Up Your Arsenal: Acquire the " + weapons[weapon]["name"],
            points = weapons[weapon]["points"],
            description = "Become Even More Dangerous by Finding The '" + weapons[weapon]["name"] + "'",
            id = 0,
            trigger = any_of(triggers, t => t)
        )
    }
}

triggers_jim = []
for ver in versions {    
    array_push(triggers_jim,
        version == versions[ver] &&
        cheats_off(ver) &&
        in_game(ver) &&
        current_stage_id[ver] == stages["boss_final"]["id"] &&
        prev(byte(boss_pointer[ver] + jim_marbles_offset)) < 100 &&
        byte(boss_pointer[ver] + jim_marbles_offset) == 100 &&
        byte(boss_pointer[ver] + boss_marbles_offset) == 0 &&
        earthworm_kim_bodyswap[ver] == 0 &&
        earthworm_kim_model[ver] == 0
    )
}
achievement(
    title = "More than a Worm",
    points = 25,
    description = "Beat the Final Boss. Well Done Jim",
    id = 0,
    trigger = any_of(triggers_jim, t => t)
)

triggers_kim = []
for ver in versions {    
    array_push(triggers_kim,
        version == versions[ver] &&
        cheats_off(ver) &&
        in_game(ver) &&
        current_stage_id[ver] == stages["boss_final"]["id"] &&
        prev(byte(boss_pointer[ver] + jim_marbles_offset)) < 100 &&
        byte(boss_pointer[ver] + jim_marbles_offset) == 100 &&
        byte(boss_pointer[ver] + boss_marbles_offset) == 0 &&
        earthworm_kim_bodyswap[ver] == 0 &&
        earthworm_kim_model[ver] == 01 
    )
}
achievement(
    title = "More than a Worman",
    points = 50,
    description = "Beat the final boss as your alter ego. Well done ...",
    id = 0,
    trigger = any_of(triggers_kim, t => t)
)

triggers_collect = []
for ver in versions {    
    array_push(triggers_collect,
        version == versions[ver] &&
        cheats_off(ver) &&
        in_game(ver) &&
        ((prev(total_marbles(ver)) + prev(total_udders(ver))) > 1064 && (prev(total_marbles(ver)) + prev(total_udders(ver))) < 1074) && // Long check as bosses can give multiple udders
        (total_marbles(ver) + total_udders(ver)) == 1074    
    )
}
achievement(
    title = "Udderly Marbleous",
    points = 50,
    description = "Collect Every Golden Udder and Every Marble",
    id = 0,
    trigger = any_of(triggers_collect, t => t)
)

// ----------------------------------------------------------------------------
// -- Boss Domination
// ----------------------------------------------------------------------------

bosses = []
for stage in stages {
    if( stages[stage]["stage_type"] == const_type_boss ) array_push(bosses,stage)
}

for boss in bosses { // Halfwit
    triggers = []
    for ver in versions {
        array_push(triggers,
            version == versions[ver] &&
            cheats_off(ver) &&
            in_game(ver) &&
            once(
                version == versions[ver] &&
                current_stage_id[ver] == stages[boss]["id"] &&
                prev(boss_ready[ver]) == 0 &&
                boss_ready[ver] == 1 
            ) &&
            never(
                (version == versions[ver] && byte(boss_pointer[ver] + boss_marbles_offset) >= 50) ||
                (version == versions[ver] && current_stage_id[ver] != stages[boss]["id"])
            ) &&
            trigger_when(
                prev(byte(boss_pointer[ver] + jim_marbles_offset)) < 100 &&
                byte(boss_pointer[ver] + jim_marbles_offset) == 100 &&
                byte(boss_pointer[ver] + boss_marbles_offset) == 0 && 
                earthworm_kim_model[ver] == 0
            )
        )
    }
    achievement(
        title = "Halfwit: " + stages[boss]["name"],
        points = stages[boss]["halfwit_points"],
        description = "Don’t Let '"+stages[boss]["name"]+"' Get More Than Half the Marbles",
        id = 0,
        trigger = any_of(triggers, t => t)
    )
}

for boss in bosses { // Worminator
    triggers = []
    for ver in versions {
        array_push(triggers,
            version == versions[ver] &&
            cheats_off(ver) &&
            in_game(ver) &&
            once(
                version == versions[ver] &&
                current_stage_id[ver] == stages[boss]["id"] &&
                prev(boss_ready[ver]) == 0 &&
                boss_ready[ver] == 1 
            ) &&
            never(
                (version == versions[ver] && hp[ver] < prev(hp[ver])) ||
                (version == versions[ver] && current_stage_id[ver] != stages[boss]["id"])
            ) &&
            trigger_when(
                prev(byte(boss_pointer[ver] + jim_marbles_offset)) < 100 &&
                byte(boss_pointer[ver] + jim_marbles_offset) == 100 &&
                byte(boss_pointer[ver] + boss_marbles_offset) == 0 && 
                earthworm_kim_model[ver] == 0
            )
        )
    }
    achievement(
        title = "Worminator: " + stages[boss]["name"],
        points = stages[boss]["halfwit_points"],
        description = "Defeat '"+stages[boss]["name"]+"' Without Taking Damage!",
        id = 0,
        trigger = any_of(triggers, t => t)
    )
}

// ----------------------------------------------------------------------------
// -- Steps Count
// ----------------------------------------------------------------------------

for stage in stage_steps {
    triggers = []
    for ver in versions {
        array_push(triggers,
            version == versions[ver] &&
            cheats_off(ver) &&
            in_game(ver) &&
            current_stage_id[ver] == stages[stage]["id"] &&
            prev(byte(stages[stage]["udders_count"][ver])) + prev(byte(stages[stage]["marbles_count"][ver])) < stage_steps[stage]["target"] &&
            byte(stages[stage]["udders_count"][ver]) + byte(stages[stage]["marbles_count"][ver]) == stage_steps[stage]["target"] &&
            dword(stages[stage]["steps_count"][ver]) < 2000
        )
    }
    achievement(
        title = "Why 2K?: " + stage_steps[stage]["name"] + " [m]",
        points = 10,
        description = "Collect all the " + stage_steps[stage]["tagline"] + " in '" + stage_steps[stage]["name"] + "' in less than 2,000 steps",
        id = 0,
        trigger = any_of(triggers, t => t)
    )
}

for stage in stage_steps {
    triggers = []
    for ver in versions {
        array_push(triggers,
            version == versions[ver] &&
            cheats_off(ver) &&
            in_game(ver) &&
            current_stage_id[ver] == stages[stage]["id"] &&
            prev(byte(stages[stage]["udders_count"][ver])) + prev(byte(stages[stage]["marbles_count"][ver])) < stage_steps[stage]["target"] &&
            byte(stages[stage]["udders_count"][ver]) + byte(stages[stage]["marbles_count"][ver]) == stage_steps[stage]["target"] &&
            dword(stages[stage]["steps_count"][ver]) < 1000 &&
            earthworm_kim_model[ver] == 1
        )
    }
    achievement(
        title = "Skinny Calves: " + stage_steps[stage]["name"] + " [m]",
        points = 10,
        description = "Collect all the " + stage_steps[stage]["tagline"] + " in '" + stage_steps[stage]["name"] + "' in less than 1,000 steps as your alter ego",
        id = 0,
        trigger = any_of(triggers, t => t)
    )
}

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

for boss in bosses {
    start_triggers = []
    cancel_triggers = []
    submit_triggers = []
    for ver in versions {
        array_push(start_triggers,
            version == versions[ver] &&
            cheats_off(ver) &&
            in_game(ver) &&
            current_stage_id[ver] == stages[boss]["id"] &&
            prev(boss_ready[ver]) == 0 &&
            boss_ready[ver] == 1 
        )
        
        array_push(cancel_triggers,
            version == versions[ver] &&
            (hp[ver] == 0 || current_stage_id[ver] != stages[boss]["id"])
        )
        
        array_push(submit_triggers,
            version == versions[ver] &&
            prev(byte(boss_pointer[ver] + jim_marbles_offset)) < 100 &&
            byte(boss_pointer[ver] + jim_marbles_offset) == 100 &&
            byte(boss_pointer[ver] + boss_marbles_offset) == 0 && 
            earthworm_kim_model[ver] == 0
        ) 
    }
    leaderboard(
        title = "Beat the Boss - " + stages[boss]["name"],
        description = "Beat '" + stages[boss]["name"] + "' as fast as you can",
        start  =    any_of(start_triggers, t=>t),
        cancel =    any_of(cancel_triggers, t=>t),
        submit =    any_of(submit_triggers, t=>t),
        value =     max_of(
                        tally(0,prev(always_running["USA"]) != always_running["USA"] && version == versions["USA"] && game_paused["USA"] == 0),
                        tally(0,prev(always_running["EUR"]) != always_running["EUR"] && version == versions["EUR"] && game_paused["EUR"] == 0)
                    ),
        format = "FRAMES",
        lower_is_better = true,
        id = 0
    )
}

for stage in stage_steps {
    start_triggers = []
    for ver in versions {
        array_push(start_triggers,
            version == versions[ver] &&
            cheats_off(ver) &&
            in_game(ver) &&
            current_stage_id[ver] == stages[stage]["id"] &&
            prev(byte(stages[stage]["udders_count"][ver])) + prev(byte(stages[stage]["marbles_count"][ver])) < stage_steps[stage]["target"] &&
            byte(stages[stage]["udders_count"][ver]) + byte(stages[stage]["marbles_count"][ver]) == stage_steps[stage]["target"]
        )
    }
    leaderboard(
        title = "Stepcount - " + stages[stage]["name"],
        description = "How may steps did it take to collect everything on '" + stages[stage]["name"] + "'?",
        start  =    any_of(start_triggers, t=>t),
        cancel =    always_false(),
        submit =    always_true(),
        value =     max_of(
                        measured(dword(stages[stage]["steps_count"]["USA"]), when=version == versions["USA"]),
                        measured(dword(stages[stage]["steps_count"]["EUR"]), when=version == versions["EUR"])
                    ),
        format = "SCORE",
        lower_is_better = true,
        id = 0
    )
}

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

jim_kim_lookup = {
    00: "🪱",
    01: "👩"
}

weapon_lookup = {
    weapons["blaster"]["id"]: "🔫",
    weapons["apollo_13"]["id"]: "🚀",
    weapons["bananamite"]["id"]: "🍌",
    weapons["laser"]["id"]: "⚡",
    weapons["peashooter"]["id"]: "🟢",
    weapons["egg_chucker"]["id"]: "🥚",
    weapons["magnum"]["id"]: "🕵️",
    weapons["gun_funky"]["id"]: "🪩",
    weapons["gun_cleaver"]["id"]: "🔪",
    weapons["gun_gnome"]["id"]: "🍄",
}

for ver in versions {
    rich_presence_conditional_display(version == versions[ver] && !cheats_off(ver), "⚠️ Debug Menu Is Enabled – Achievements Will Not Trigger Until Game Is Reset")
    
    rich_presence_conditional_display(version == versions[ver] && titlescreen(ver), "{0} Titlescreen",
            rich_presence_lookup("jim_kim", earthworm_kim_model[ver], jim_kim_lookup)
    )

    for stage in stages {
        rich_presence_conditional_display(version == versions[ver] && in_game(ver) && current_stage_id[ver] == stages[stage]["id"], "{0}{1} Exploring {2} 🐄:{3}/{4} 🔮:{5}/{6} | Total: 🐄{7}/74 🔮{8}/1000",
                rich_presence_lookup("weapon", current_weapon_id[ver], weapon_lookup,fallback="?"),
                rich_presence_lookup("jim_kim", earthworm_kim_model[ver], jim_kim_lookup),
                stages[stage]["name"],
                rich_presence_macro("Number", byte(stages[stage]["udders_count"][ver])),
                rich_presence_macro("Number", stages[stage]["udders_total"]),
                rich_presence_macro("Number", byte(stages[stage]["marbles_count"][ver])),
                rich_presence_macro("Number", stages[stage]["marbles_total"]),
                rich_presence_macro("Number", total_udders(ver)),
                rich_presence_macro("Number", total_marbles(ver))
        )  
    }
}

rich_presence_display("🪱 Playing Earthworm Jim 3D (v{0})",
    rich_presence_macro("Number",version)
)
