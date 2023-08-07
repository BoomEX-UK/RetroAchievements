// Earthworm Jim 3D
// #ID = 10348

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

stages = {
    "brain" :                   0x00,
    "hub_memory" :              0x01,
    "coup_detat" :              0x02,
    "barn_to_be_wild":          0x03,
    "psycrow":                  0x04,
    "hub_happiness" :           0x05,
    "lord_of_the_fries" :       0x06,
    "hungry_tonite":            0x07,
    "fatty_roswell":            0x08,
    "hub_fear":                 0x09,
    "mansion_lobby":            0x0a,
    "poultrygeist":             0x0b,
    "poultrygeist_too":         0x0c,
    "death_wormed_up":          0x0d,
    "boogie_nights":            0x0e,
    "monkey_for_a_head":        0x0f,
    "hub_fantasy":              0x10,
    "violent_death_valley":     0x11,
    "good_bad_elderly":         0x12,
    "bob_and_no4":              0x13,
    "boss_final":               0x14,
    "intro_dance":              0x15
}

weapons = {
    "blaster":      0x00,
    "apollo_13":    0x02,
    "bananamite":   0x04,
    "laser":        0x05,
    "peashooter":   0x06,
    "egg_chucker":  0x07,
    "magnum":       0x09,
    "gun_funky":    0x0a,
    "gun_cleaver":  0x0b,
    "gun_gnmore":   0x0c
}

golden_udders_total = {
    stages["barn_to_be_wild"]:      0x07,
    stages["coup_detat"]:           0x03,
    stages["brain"]:                0x01,
    stages["hungry_tonite"]:        0x05,
    stages["lord_of_the_fries"]:    0x05,
    stages["psycrow"]:              0x05,
    stages["poultrygeist"]:         0x05,
    stages["fatty_roswell"]:        0x05,
    stages["monkey_for_a_head"]:    0x05,
    stages["boogie_nights"]:        0x05,
    stages["death_wormed_up"]:      0x06,
    stages["poultrygeist_too"]:     0x05,
    stages["bob_and_no4"]:          0x05,
    stages["good_bad_elderly"]:     0x06,
    stages["violent_death_valley"]: 0x06
}

golden_udders_count = {
    stages["barn_to_be_wild"]:      byte(0x0c61fa),
    stages["coup_detat"]:           byte(0x0c61fb),
    stages["brain"]:                byte(0x0c61f5),
    stages["hungry_tonite"]:        byte(0x0c61fe),
    stages["lord_of_the_fries"]:    byte(0x0c61ff),
    stages["psycrow"]:              byte(0x0c61f9),
    stages["poultrygeist"]:         byte(0x0c6202),
    stages["fatty_roswell"]:        byte(0x0c61fd),
    stages["monkey_for_a_head"]:    byte(0x0c6206),
    stages["boogie_nights"]:        byte(0x0c6207),
    stages["death_wormed_up"]:      byte(0x0c6200),
    stages["poultrygeist_too"]:     byte(0x0c6201),
    stages["bob_and_no4"]:          byte(0x0c620a),
    stages["good_bad_elderly"]:     byte(0x0c620b),
    stages["violent_death_valley"]: byte(0x0c6204)
}

golden_udders_ach_ids = {
    stages["barn_to_be_wild"]: {
        "id":175220,
        "name": "Barn to be Wild",
        "points": 0
    },
    stages["coup_detat"]: {
        "id":175221,
        "name": "Coup D'Etat",
        "points": 0
    },
    stages["brain"]: {
        "id":175222,
        "name": "Brain",
        "points": 0
    },
    stages["hungry_tonite"]: {
        "id":175223,
        "name": "Hungry Tonite?",
        "points": 0
    },
    stages["lord_of_the_fries"]: {
        "id":175224,
        "name": "Lord of the Fries",
        "points": 0
    },
    stages["psycrow"]: {
        "id":175225,
        "name": "Psycrow",
        "points": 0
    },
    stages["poultrygeist"]: {
        "id":175226,
        "name": "Poultrygeist",
        "points": 0
    },
    stages["fatty_roswell"]: {
        "id":175227,
        "name": "Fatty Roswell",
        "points": 0
    },
    stages["monkey_for_a_head"]: {
        "id":175228,
        "name": "Monkey for a Head",
        "points": 0
    },
    stages["boogie_nights"]: {
        "id":175229,
        "name": "Boogie Nights",
        "points": 0
    },
    stages["death_wormed_up"]: {
        "id":175230,
        "name": "Death Wormed Up",
        "points": 0
    },
    stages["poultrygeist_too"]: {
        "id":175231,
        "name": "Poultrygeist Too",
        "points": 0
    },
    stages["bob_and_no4"]: {
        "id":175232,
        "name": "Bob and No.4",
        "points": 0
    },
    stages["good_bad_elderly"]: {
        "id":175233,
        "name": "Good, Bad and Elderly",
        "points": 0
    },
    stages["violent_death_valley"]: {
        "id":175234,
        "name": "Violent Death Valley",
        "points": 0
    }
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

current_stage_id = dword(0x0e03e4)
current_weapon_id = dword(0x0c6a8c)
current_saveslot = word(0x0c6182)
function titlescreen() => current_saveslot == 0xFFFF || dword(0x0b752c) == 0x00000000
function is_earthworm_kim() => byte(0x0c6dc3) == 0x01

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

for achid in golden_udders_ach_ids {
    achievement(
        title = "Golden Udders: " + golden_udders_ach_ids[achid]["name"],
        points = golden_udders_ach_ids[achid]["points"],
        description = "Collect all of the Golden Udders in '" + golden_udders_ach_ids[achid]["name"] + "'",
        id = golden_udders_ach_ids[achid]["id"],
        //badge = "00000", published = "30/09/2021 11:55:54", modified = "30/09/2021 11:55:54",
        trigger = 
            !titlescreen() &&
            current_stage_id == achid &&
            prev(golden_udders_count[achid]) == golden_udders_total[achid]-1 &&
            golden_udders_count[achid] == golden_udders_total[achid]
    )
}


achievement(
    title = "Boogie Fever", points = 10,
    description = "Collect all marbles and 5 golden udders in \"Boogie Nights\"",
    id = 175235, badge = "00000", published = "30/09/2021 11:55:54", modified = "30/09/2021 11:55:54",
    trigger = (prev(byte(0x0C61ED)) + prev(byte(0x0C6207))) < 0x6A && (byte(0x0C61ED) + byte(0x0C6207)) == 0x6A && 
              measured((byte(0x0C61ED) + byte(0x0C6207)) == 0x6A)
)
