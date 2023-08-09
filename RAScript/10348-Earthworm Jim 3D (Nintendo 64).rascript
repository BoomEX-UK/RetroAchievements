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
        "udders_ach_id": 175222,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": {
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
        }
    },
    "coup_detat" : {
        "id": 0x02,
        "name": "Coup D'Etat",
        "stage_type": const_type_stage,
        "udders_total": 0x03,
        "udders_count": {
            "USA": 0x0c61fb,
            "EUR": 0
        },
        "udders_ach_id": 175221,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e1,
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
        "udders_ach_id": 175220,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e0,
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
        "udders_ach_id": 175225,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        }
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
        "udders_ach_id": 175224,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e5,
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
        "udders_ach_id": 175223,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e4,
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
        "udders_ach_id": 175227,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        }
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
        "udders_ach_id": 175226,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61e8,
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
        "udders_ach_id": 175231,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61ef,
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
        "udders_ach_id": 175230,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61ee,
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
        "udders_ach_id": 175229,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61ed,
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
        "udders_ach_id": 175228,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        }
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
        "udders_ach_id": 175234,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61f2,
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
        "udders_ach_id": 175233,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": {
            "USA": 0x0c61f1,
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
        "udders_ach_id": 175232,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": {
            "USA": 0,
            "EUR": 0
        }
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
        }
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
        }
    },
}

// - USA EUR version building
for stage in stages {
    if(stages[stage]["udders_total"] > 0 )  stages[stage]["udders_count"]["EUR"]    = stages[stage]["udders_count"]["USA"] + eur_offset
    if(stages[stage]["marbles_total"] > 0 ) stages[stage]["marbles_count"]["EUR"]   = stages[stage]["marbles_count"]["USA"] + eur_offset
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

weapons = {
    "blaster": {
        "id": 0x00,
        "name": "Standa-da-da-da-da-dard Blaster",
        "points": 0
    },
    "apollo_13": {
        "id": 0x02,
        "name": "Apollo 13",
        "points": 0
    },
    "bananamite": {
        "id": 0x04,
        "name": "Bananamite",
        "points": 0
    },
    "laser": {
        "id": 0x05,
        "name": "Laser",
        "points": 0
    },
    "peashooter": {
        "id": 0x06,
        "name": "Peashooter",
        "points": 0
    },
    "egg_chucker": {
        "id": 0x07,
        "name": "Egg Chucker",
        "points": 0
    },
    "magnum": {
        "id": 0x09,
        "name": "Magnum",
        "points": 0
    },
    "gun_funky": {
        "id": 0x0a,
        "name": "Funky Gun",
        "points": 0
    },
    "gun_cleaver": {
        "id": 0x0b,
        "name": "Cleaver Gun",
        "points": 0
    },
    "gun_gnome": {
        "id": 0x0c,
        "name": "Gnome Gun",
        "points": 0
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
        "id":175235,
        "name": "A Waffle",
        "points": 0
    },
    sanity_threshold["most_accountants"]: {
        "id":0,
        "name": "Most Accountants",
        "points": 0
    },
    sanity_threshold["gorgonzola"]: {
        "id":0,
        "name": "Gorgonzola",
        "points": 0
    },
    sanity_threshold["a_spleen"]: {
        "id":0,
        "name": "A Spleen",
        "points": 0
    },
    sanity_threshold["a_chat_show_host"]: {
        "id":0,
        "name": "A Chat Show Host",
        "points": 0
    },
    sanity_threshold["my_pet_hamster"]: {
        "id":0,
        "name": "My Pet Hamster",
        "points": 0
    },
    sanity_threshold["a_nut_log"]: {
        "id":0,
        "name": "A Nut Log",
        "points": 0
    },
    sanity_threshold["your_cousin_billy"]: {
        "id":0,
        "name": "Your Cousin Billy",
        "points": 0
    },
    sanity_threshold["a_fur_covered_trout"]: {
        "id":0,
        "name": "A Fur Covered Trout",
        "points": 0
    },
    sanity_threshold["shers_plastic_sturgeon"]: {
        "id":0,
        "name": "Sher's Plastic Sturgeon",
        "points": 0
    },
    sanity_threshold["flossing"]: {
        "id":0,
        "name": "Flossing",
        "points": 0
    },
    sanity_threshold["a_shiny_button"]: {
        "id":0,
        "name": "A Shiny Button",
        "points": 0
    },
    sanity_threshold["youll_ever_be"]: {
        "id":0,
        "name": "You'll Ever Be",
        "points": 0
    },
    sanity_threshold["a_smart_superhero"]: {
        "id":0,
        "name": "A Smart Superhero",
        "points": 0
    }
}

pause_menu = {
    "EUR": word(0x084e5e),
    "USA": word(0x084dc2),
} 

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

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

boss_psycrow_marbles = {
    "USA": byte(0x218afb)
}

function titlescreen(ver)       => current_saveslot[ver] == 0xFFFF
function in_game(ver)           => !titlescreen(ver)
function is_earthworm_kim(ver)  => earthworm_kim_model[ver] == 0x01
function cheats_off(ver)        => pause_menu[ver] != 0x1440


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
            prev(total_marbles(ver)) == achid-1 &&
            total_marbles(ver) == achid
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

// ----------------------------------------------------------------------------
// -- Boss Domination
// ----------------------------------------------------------------------------

boss_pointer = {
    "USA": tbyte(0x0ca6a0),
    "EUR": tbyte(0x0cc500)
}

boss_marbles_offset = 0x7f
jim_marbles_offset  = 0x33

boss_ready = {
    "USA": byte(0x0a9cbd),
    "EUR": byte(0x0a9d5d)
}

bosses = []
for stage in stages {
    if( stages[stage]["stage_type"] == const_type_boss ) array_push(bosses,stage)
}

for boss in bosses {
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
            trigger_when(byte(boss_pointer[ver] + boss_marbles_offset) == 0 && byte(boss_pointer[ver] + jim_marbles_offset) == 100)
        )
    }
    achievement(
        title = "Halfwit: " + stages[boss]["name"],
        points = 0,
        description = "Don’t Let '"+stages[boss]["name"]+"' Get More Than Half the Marbles",
        id = 0,
        trigger = any_of(triggers, t => t)
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
    weapons["peashooter"]["id"]: "🫛",
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