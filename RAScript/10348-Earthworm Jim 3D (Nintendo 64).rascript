// Earthworm Jim 3D
// #ID = 10348

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

stages = {
    "brain" : {
        "id": 0x00,
        "name": "Brain",
        "udders_total": 0x01,
        "udders_count": byte(0x0c61f5),
        "udders_ach_id": 175222,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "hub_memory" : {
        "id": 0x01,
        "name": "Memory Hub",
        "udders_total": 0,
        "udders_count": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "coup_detat" : {
        "id": 0x02,
        "name": "Coup D'Etat",
        "udders_total": 0x03,
        "udders_count": byte(0x0c61fb),
        "udders_ach_id": 175221,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61e1)
    },
    "barn_to_be_wild": {
        "id": 0x03,
        "name": "Barn to be Wild",
        "udders_total": 0x07,
        "udders_count": byte(0x0c61fa),
        "udders_ach_id": 175220,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61e0)
    },
    "psycrow":  {
        "id": 0x04,
        "name": "Psycrow",
        "udders_total": 0x05,
        "udders_count": byte(0x0c61f9),
        "udders_ach_id": 175225,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "hub_happiness" : {
        "id": 0x05,
        "name": "Happiness Hub",
        "udders_total": 0,
        "udders_count": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "lord_of_the_fries" : {
        "id": 0x06,
        "name": "Lord of the Fries",
        "udders_total": 0x05,
        "udders_count": byte(0x0c61ff),
        "udders_ach_id": 175224,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61e5)
    },
    "hungry_tonite": {
        "id": 0x07,
        "name": "Hungry Tonite?",
        "udders_total": 0x05,
        "udders_count": byte(0x0c61fe),
        "udders_ach_id": 175223,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61e4)
    },
    "fatty_roswell": {
        "id": 0x08,
        "name": "Fatty Roswell",
        "udders_total": 0x05,
        "udders_count": byte(0x0c61fd),
        "udders_ach_id": 175227,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "hub_fear": {
        "id": 0x09,
        "name": "Fear Hub",
        "udders_total": 0,
        "udders_count": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "mansion_lobby": {
        "id": 0x0a,
        "name": "Mansion Lobby",
        "udders_total": 0,
        "udders_count": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "poultrygeist": {
        "id": 0x0b,
        "name": "Poultrygeist",
        "udders_total": 0x05,
        "udders_count": byte(0x0c6202),
        "udders_ach_id": 175226,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61e8)
    },
    "poultrygeist_too": {
        "id": 0x0c,
        "name": "Poultrygeist Too",
        "udders_total": 0x05,
        "udders_count": byte(0x0c6201),
        "udders_ach_id": 175231,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61ef)
    },
    "death_wormed_up": {
        "id": 0x0d,
        "name": "Death Wormed Up",
        "udders_total": 0x06,
        "udders_count": byte(0x0c6200),
        "udders_ach_id": 175230,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61ee)
    },
    "boogie_nights": {
        "id": 0x0e,
        "name": "Boogie Nights",
        "udders_total": 0x05,
        "udders_count": byte(0x0c6207),
        "udders_ach_id": 175229,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61ed)
    },
    "monkey_for_a_head": {
        "id": 0x0f,
        "name": "Monkey for a Head",
        "udders_total": 0x05,
        "udders_count": byte(0x0c6206),
        "udders_ach_id": 175228,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "hub_fantasy": {
        "id": 0x10,
        "name": "Fantasy Hub",
        "udders_total": 0,
        "udders_count": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "violent_death_valley": {
        "id": 0x11,
        "name": "Violent Death Valley",
        "udders_total": 0x06,
        "udders_count": byte(0x0c6204),
        "udders_ach_id": 175234,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61f2)
    },
    "good_bad_elderly": {
        "id": 0x12,
        "name": "The Good, Bad and The Elderly",
        "udders_total": 0x06,
        "udders_count": byte(0x0c620b),
        "udders_ach_id": 175233,
        "udders_ach_points": 0,
        "marbles_total": 100,
        "marbles_count": byte(0x0c61f1)
    },
    "bob_and_no4": {
        "id": 0x13,
        "name": "Bob and Number 4",
        "udders_total": 0x05,
        "udders_count": byte(0x0c620a),
        "udders_ach_id": 175232,
        "udders_ach_points": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
    "boss_final": {
        "id": 0x14,
        "name": "Final Boss",
        "udders_total": 0,
        "udders_count": 0,
        "marbles_total": 0,
        "marbles_count": 0,
    },
    "intro_dance": {
        "id": 0x15,
        "name": "Accordian Dance",
        "udders_total": 0,
        "udders_count": 0,
        "marbles_total": 0,
        "marbles_count": 0
    },
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


// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

current_stage_id    = dword(0x0e03e4)
current_weapon_id   = dword(0x0c6a8c)
current_saveslot    = word(0x0c6182)
earthworm_kim_model = byte(0x0c6dc3)
live_pointer = dword(0x0b70bc)
function titlescreen()  => current_saveslot == 0xFFFF
function save_menu()    => current_saveslot != 0xFFFF && live_pointer == 0x0000
function in_game()      => __ornext(current_saveslot != 0xFFFF && live_pointer != 0x0000)
function is_earthworm_kim() => earthworm_kim_model == 0x01

function total_udders(){
    total = 0
    for stage in stages {
        if (stages[stage]["udders_total"] > 0) total = total + stages[stage]["udders_count"]
    }
    return total
}

function total_marbles( ){
    total = 0
    for stage in stages {
        if (stages[stage]["marbles_total"] > 0) total = total + stages[stage]["marbles_count"]
    }
    return total
}

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

for stage in stages {
    if( stages[stage]["udders_total"] > 0 ){
        achievement(
            title = "Golden Udders: " + stages[stage]["name"],
            points = stages[stage]["udders_ach_points"],
            description = "Collect All of the Golden Udders in the Stage '" + stages[stage]["name"] + "'",
            id = stages[stage]["udders_ach_id"],
            //badge = "00000", published = "30/09/2021 11:55:54", modified = "30/09/2021 11:55:54",
            trigger = 
                in_game() &&
                current_stage_id == stages[stage]["id"] &&
                prev(stages[stage]["udders_count"]) == stages[stage]["udders_total"]-1 &&
                stages[stage]["udders_count"] == stages[stage]["udders_total"]
        )
    }
}

for achid in sanity_ach_ids {
    achievement(
        title = "You're As Smart As " + sanity_ach_ids[achid]["name"] +  "!",
        points = sanity_ach_ids[achid]["points"],
        description = "Collect Enough Marbles To Become As Smart As '" + sanity_ach_ids[achid]["name"] + "'",
        id = sanity_ach_ids[achid]["id"],
        //badge = "00000", published = "30/09/2021 11:55:54", modified = "30/09/2021 11:55:54",
        trigger = 
            in_game() &&
            prev(total_marbles()) == achid-1 &&
            total_marbles() == achid
    )
}

for weapon in weapons {
    if( weapons[weapon]["id"] != 0) {
        achievement(
            title = "Up Your Arsenal: Acquire the " + weapons[weapon]["name"],
            points = weapons[weapon]["points"],
            description = "Become Even More Dangerous by Finding The '" + weapons[weapon]["name"] + "'",
            id = 0,
            //badge = "00000", published = "30/09/2021 11:55:54", modified = "30/09/2021 11:55:54",
            trigger = 
                in_game() &&
                prev(current_weapon_id) != weapons[weapon]["id"] &&
                current_weapon_id == weapons[weapon]["id"]
        )
    }
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

rich_presence_conditional_display(titlescreen(), "{0} Titlescreen",
        rich_presence_lookup("jim_kim", earthworm_kim_model, jim_kim_lookup)
)

rich_presence_conditional_display(save_menu(), "{0} Loading ..",
        rich_presence_lookup("jim_kim", earthworm_kim_model, jim_kim_lookup)
)

for stage in stages {
    rich_presence_conditional_display(in_game() && current_stage_id == stages[stage]["id"], "{0}{1} Exploring {2} 🐄:{3}/{4} 🔮:{5}/{6} | Total: 🐄{7}/74 🔮{8}/1000",
            rich_presence_lookup("weapon", current_weapon_id, weapon_lookup,fallback="?"),
            rich_presence_lookup("jim_kim", earthworm_kim_model, jim_kim_lookup),
            stages[stage]["name"],
            rich_presence_macro("Number", stages[stage]["udders_count"]),
            rich_presence_macro("Number", stages[stage]["udders_total"]),
            rich_presence_macro("Number", stages[stage]["marbles_count"]),
            rich_presence_macro("Number", stages[stage]["marbles_total"]),
            rich_presence_macro("Number", total_udders()),
            rich_presence_macro("Number", total_marbles())
    )  
}

rich_presence_display("🪱 Playing Earthworm Jim 3D")