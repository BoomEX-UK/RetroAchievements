// Viewtiful Joe
// #ID = 3783

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

episodes = {
    0x00 : {
        0 : {
          "name" : "Joe The Hero",
          "id" : 402834
        },
        1 : {
          "name" : "Some Like It Red Hot",
          "id" : 402855
        },
        2 : {
          "name" : "2,000,000 Leagues Under The Sea",
          "id" : 402868
        },
        3 : {
          "name" : "The Viewtiful Escape",
          "id" : 402849
        },
        4 : {
          "name" : "The Midnight Thunderboy",
          "id" : 402856
        },
        5 : {
          "name" : "The Magnificent 5",
          "id" : 402869
        },
        6 : {
          "name" : "Joe & Silvia",
          "id" : 402837
        }
    },
    0x01 : {
        0 : {
          "name" : "Dark Fiend",
          "id" : 403022,
          "points": 10
        },
        1 : {
          "name" : "The Iron Ogre",
          "id" : 403023,
          "points": 10
        },
        2 : {
          "name" : "The Aquatic Terror",
          "id" : 403024,
          "points": 10
        },
        3 : {
          "name" : "The Imposter",
          "id" : 403025,
          "points": 25
        },
        4 : {
          "name" : "The Blade Master",
          "id" : 403026,
          "points": 25
        },
        5 : {
          "name" : "Inferno Lord",
          "id" : 403027,
          "points": 50
        },
        6 : {
          "name" : "Viewtiful Victory",
          "id" : 403028,
          "points": 50
        }
    },
    0x06 : {
        0 : {
          "name" : "Silvia The Main Squeeze",
          "id" : 402832
        },
        1 : {
          "name" : "Some Like It Sexy",
          "id" : 402864
        },
        2 : {
          "name" : "2,000,000 Pom-Poms Under The Sea",
          "id" : 402850
        },
        3 : {
          "name" : "The Sexy Escape",
          "id" : 402851
        },
        4 : {
          "name" : "The Midnight Redevous",
          "id" : 402852
        },
        5 : {
          "name" : "The Fabulous 5",
          "id" : 402833
        },
        6 : {
          "name" : "Silvia & Joe",
          "id" : 402865
        }
    },
    0x07 : {
        0 : {
          "name" : "Blue the Justice",
          "id" : 402843
        },
        1 : {
          "name" : "Some Like It Aged",
          "id" : 402844
        },
        2 : {
          "name" : "2,000,000 Years at Sea",
          "id" : 402845
        },
        3 : {
          "name" : "The Great Escape",
          "id" : 402846
        },
        4 : {
          "name" : "The Midnight Bathroom Trip",
          "id" : 402831
        },
        5 : {
          "name" : "The Youthful 5",
          "id" : 402863
        },
        6 : {
          "name" : "Father & Daughter",
          "id" : 402847
        }
    },
    0x08 : {
        0 : {
          "name" : "Alastor the Devil",
          "id" : 402816
        },
        1 : {
          "name" : "Some Like It Gothic",
          "id" : 402825
        },
        2 : {
          "name" : "2,000,000 Years Alive",
          "id" : 402838
        },
        3 : {
          "name" : "The Spirits Escape",
          "id" : 402828
        },
        4 : {
          "name" : "Midnight is My Time",
          "id" : 402841
        },
        5 : {
          "name" : "The Malevolent 5",
          "id" : 402842
        },
        6 : {
          "name" : "Alastor & Silvia",
          "id" : 402829
        }
    }
}

difficulties = {
    "kids"      : 0x00,
    "adult"     : 0x01,
    "v"         : 0x02,
    "ultra_v"   : 0x03
}

character_names = {
    0x00 : "Joe",
    0x06 : "Silvia",
    0x07 : "Blue",
    0x08 : "Alastor"
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

episode_stage_combo = word_be(0x0026edf8)
lives = word_be(0x0026ee12)
hp = word_be(0x0026ee04)
max_hp = word_be(0x0026ee06)
v_points = dword_be(0x0026ee18)
voomerang_count = word_be(0x0026ee1c)
spink_count = word_be(0x0026ee1e)
vfx_max = word_be(0x0026ee02)
character = byte(0x0026ee7d)
unlimited_vfx = bit7(0x0026ee14)

current_episode_persistent = byte(0x0026ee7a)
current_episode_volatile = byte(0x0026ee78)
current_episode = current_episode_persistent
current_stage = byte(0x0026ee7b)
stage_load_flag = byte(0x0026f9b7)

difficulty = byte(0x0026ee11)

event_flags = {}
for i in range(1,80) {
    event_flags[i] = 0x0026ee20 + (i-1) 
}
key_events_1 = event_flags[69]
key_events_2 = event_flags[70]

skill_flags_a = 0x0026ee16
skill_flags_b = 0x0026ee17
mach_speed_level = byte(0x0026ee10)

event_type_sub  = 0
event_type_main = 1

episode_result_animation = byte(0x0026f4a4)
episode_RV_fail_count = byte(0x0026f4b7)
episode_result_grade = byte(0x0026f51f)

section_result_animation = byte(0x0026f8b1)
section_rainbow_v = byte(0x0026f954)

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

key_events = {
    0: {
        "id" : 402848,
        "title" : "Back to School I",
        "desc" : "pass Captain Blue's first test",
        "episode" : 0,
        "stage" : 0,
        "flag" : bit5(key_events_1),
        "points" : 1,
        "type" : "progression",
        "et" : event_type_sub
    },
    1: {
        "id" : 402866,
        "title" : "Rolling Thunder",
        "desc" : "defeat Black Thunder to complete Episode 1, stage 1",
        "episode" : 0,
        "stage" : 0,
        "flag" : bit0(key_events_1),
        "points" : 1,
        "type" : "progression",
        "et" : event_type_sub
    },
    2: {
        "id" : 402853,
        "title" : "Back to School II",
        "desc" : "pass Captain Blue's second test",
        "episode" : 0,
        "stage" : 1,
        "flag" : bit6(key_events_1),
        "points" : 1,
        "type" : "progression",
        "et" : event_type_sub
    },
    4: {
        "id" : 0,
        "title" : "Dark Fiend",
        "desc" : "defeat Charles the 3rd to finish Episode 1",
        "episode" : 0,
        "stage" : 2,
        "flag" : bit7(key_events_1),
        "points" : 5,
        "type" : "progression",
        "et" : event_type_main
    },
    5: {
        "id" : 402867,
        "title" : "Back to School III",
        "desc" : "pass Captain Blue's third test",
        "episode" : 1,
        "stage" : 0,
        "flag" : bit5(key_events_1),
        "points" : 2,
        "type" : "progression",
        "et" : event_type_sub
    },
    6: {
        "id" : 402854,
        "title" : "Raining Thunder",
        "desc" : "defeat the twin Black Thunder choppers in Episode 2, stage 1",
        "episode" : 1,
        "stage" : 0,
        "flag" : bit7(key_events_2),
        "points" : 2,
        "type" : "progression",
        "et" : event_type_sub
    },
    7: {
        "id" : 0,
        "title" : "The Iron Ogre",
        "desc" : "defeat Hulk Davidson to finish Episode 2",
        "episode" : 1,
        "stage" : 2,
        "flag" : bit7(key_events_1),
        "points" : 5,
        "type" : "progression",
        "et" : event_type_main
    },
    8: {
        "id" : 402835,
        "title" : "Dogfight",
        "desc" : "defeat Harrier in Episode 3, stage 1",
        "episode" : 2,
        "stage" : 0,
        "flag" : bit7(key_events_1),
        "points" : 3,
        "type" : "progression",
        "et" : event_type_sub
    },
    9: {
        "id" : 0,
        "title" : "The Aquatic Terror",
        "desc" : "defeat Gran Bruce to finish Episode 3",
        "episode" : 2,
        "stage" : 2,
        "flag" : bit7(key_events_1),
        "points" : 5,
        "type" : "progression",
        "et" : event_type_main
    },
    10: {
        "id" : 0,
        "title" : "The Imposter",
        "desc" : "defeat Another Joe to finish Episode 4",
        "episode" : 3,
        "stage" : 2,
        "flag" : bit7(key_events_1),
        "points" : 5,
        "type" : "progression",
        "et" : event_type_main
    },
    11: {
        "id" : 402870,
        "title" : "Dog with a Bone",
        "desc" : "defeat Harrier once and for all in Episode 5, stage 1",
        "episode" : 4,
        "stage" : 0,
        "flag" : bit1(key_events_1),
        "points" : 4,
        "type" : "progression",
        "et" : event_type_sub
    },
    12: {
        "id" : 0,
        "title" : "The Blade Master",
        "desc" : "defeat Alastor to finish Episode 5",
        "episode" : 4,
        "stage" : 2,
        "flag" : bit7(key_events_1),
        "points" : 5,
        "type" : "progression",
        "et" : event_type_main
    },
    13: {
        "id" : 402836,
        "title" : "The Raging Stones",
        "desc" : "defeat all 4 stone incarnations in Episode 6",
        "episode" : 5,
        "stage" : 4,
        "flag" : bit7(key_events_1),
        "points" : 5,
        "type" : "progression",
        "et" : event_type_sub
    },
    14: {
        "id" : 0,
        "title" : "Inferno Lord",
        "desc" : "defeat Fire Leo to finish Episode 6",
        "episode" : 5,
        "stage" : 5,
        "flag" : bit7(key_events_1),
        "points" : 10,
        "type" : "progression",
        "et" : event_type_main
    },
    15: {
        "id" : 402857,
        "title" : "Heavy Metal",
        "desc" : "defeat both Metal Leo in Episode 7, stage 1",
        "episode" : 6,
        "stage" : 0,
        "flag" : bit5(key_events_1),
        "points" : 5,
        "type" : "progression",
        "et" : event_type_sub
    },
    16: {
        "id" : 0,
        "title" : "The Omnipotent",
        "desc" : "defeat King Blue in Episode 7",
        "episode" : 6,
        "stage" : 1,
        "flag" : bit7(key_events_1),
        "points" : 5,
        "type" : "progression",
        "et" : event_type_sub
    },
    17: {
        "id" : 0,
        "title" : "Viewtiful Victory",
        "desc" : "defeat Captain Blue to finish Episode 7",
        "episode" : 6,
        "stage" : 5,
        "flag" : bit7(key_events_1),
        "points" : 25,
        "type" : "win_condition",
        "et" : event_type_main
    }
}

chars = {
    0x00: "Joe",
    0x06: "Silvia",
    0x07: "Blue",
    0x08: "Alastor"
}

for char in [0x00,0x06,0x07,0x08] {
    list_events = {}
    for ke in key_events {
        if (key_events[ke]["et"] == event_type_main) {
            list_events[ke] = key_events[ke]
            list_events[ke]["title"] = episodes[char][list_events[ke]["episode"]]["name"]
            list_events[ke]["id"] = episodes[char][list_events[ke]["episode"]]["id"]
        } else if(key_events[ke]["et"] == event_type_sub && char == 0x00) {
            list_events[ke] = key_events[ke]
        }
    }
    for event in list_events {
        base = list_events[event]
        charcon = always_true()
        if( char != 0x00 ){
            charcon = (character == char)
            base["type"] = ""
        }
        if( base["id"] == 402837 ) base["type"] = "win_condition"
        achievement(
            id=base["id"],
            title=base["title"],
            description="As " + character_names[char] + ", " + base["desc"] + " on Adult difficulty or higher",
            points=base["points"],
            type=base["type"],
            trigger=
                episode_stage_combo != 0xFFFF &&
                difficulty >= difficulties["adult"] &&
                current_episode == base["episode"] &&
                current_stage == base["stage"] &&
                base["flag"] > prev(base["flag"]) &&
                charcon
        )
    }
}
// ----------------------------------------------------------------------------
// -- Beat Game Achievements
// ----------------------------------------------------------------------------

diffs = {
    0x02: {
        "id" : 402830,
        "title" : "V-Rated Victory",
        "desc" : "V-Rated",
        "points" : 50
    },
    0x03: {
        "id" : 402862,
        "title" : "Ultra-V Rated Victory",
        "desc" : "Ultra V-Rated",
        "points" : 100
    }
}

for diff in diffs {
    base = diffs[diff]
    achievement(
        id=base["id"],
        title=base["title"],
        description="Beat the game on " + base["desc"] + " difficulty or higher",
        points=base["points"],
        trigger=
            episode_stage_combo != 0xFFFF &&
            difficulty >= diff &&
            current_episode == 6 &&
            current_stage == 5 &&
            bit7(key_events_1) > prev(bit7(key_events_1))
    )
}


// ----------------------------------------------------------------------------
// -- VFX Bar Achievements
// ----------------------------------------------------------------------------

episode_meta = {
    0: {
        "numeral":"I",
        "id":402818,
        "points":5
    },
    1: {
        "numeral":"II",
        "id":402819,
        "points":5
    },
    2: {
        "numeral":"III",
        "id":402820,
        "points":5
    },
    3: {
        "numeral":"IV",
        "id":402821,
        "points":10
    },
    4: {
        "numeral":"V",
        "id":402822,
        "points":10
    },
    5: {
        "numeral":"VI",
        "id":402823,
        "points":10
    },
    6: {
        "numeral":"VII",
        "id":402824,
        "points":10
    }
}

for episode in episode_meta {
    base = episode_meta[episode]
    achievement(
        id=base["id"],
        title="Henshin-A-Go-Go, Baby! " + base["numeral"],
        description="Max out your VFX bar on Episode "+(episode+1)+" on Adult difficulty or higher",
        points=base["points"],
        trigger=
            episode_stage_combo != 0xFFFF &&
            difficulty >= difficulties["adult"] &&
            current_episode == episode &&
            prev(vfx_max) == 1300 && vfx_max == 1500
    )
}


// ----------------------------------------------------------------------------
// -- Power Up: Shop Purchases
// ----------------------------------------------------------------------------

upgrades = {
    0: {
        "id" : 402839,
        "name": "Up, Down and Around",
        "desc" : "Air Joe, Sliding and Redhot Kick",
        "points" : 3,
        "trigger" : ((prev(bit4(skill_flags_b)) + prev(bit1(skill_flags_a)) + prev(bit7(skill_flags_b)) == 2) &&
            (bit4(skill_flags_b) + bit1(skill_flags_a) + bit7(skill_flags_b) == 3))
    },
    1: {
        "id" : 402827,
        "name": "Big Mach",
        "desc" : "Mach Speed 3",
        "points" : 3,
        "trigger" : (prev(mach_speed_level) == 1 && mach_speed_level == 2)
    },
    2: {
        "id" : 402860,
        "name": "Swooning",
        "desc" : "Viewtiful Forever and Ukemi",
        "points" : 5,
        "trigger" : ((prev(bit2(skill_flags_a)) + prev(bit3(skill_flags_a)) == 1) && 
            (bit2(skill_flags_a) + bit3(skill_flags_a) == 2))
    },
    3: {
        "id" : 402840,
        "name": "Streaming Service",
        "desc" : "the VFX Turbo Charger",
        "points" : 5,
        "trigger" : (prev(bit4(skill_flags_a)) < bit4(skill_flags_a))
    }
}

for upgrade in upgrades {
    base = upgrades[upgrade]
    achievement(
        id=base["id"],
        title="Power Up: " + base["name"],
        description="Purchase "+base["desc"]+" on Adult difficulty or higher",
        points=base["points"],
        trigger=
            episode_stage_combo == 0x0801 &&
            difficulty >= difficulties["adult"] &&
            base["trigger"]
    )
}

// ----------------------------------------------------------------------------
// -- Hidden 1-Ups
// ----------------------------------------------------------------------------

one_ups = {
    0: {
        "id": 402817,
        "stage" : 0x0100,
        "title" : "High-Up",
        "desc" : "Episode 2, stage 1",
        "points" : 1
    },
    1: {
        "id": 402826,
        "stage" : 0x0200,
        "title" : "Fly-Up",
        "desc" : "Episode 3, stage 1",
        "points" : 1
    },
    2: {
        "id": 402859,
        "stage" : 0x0201,
        "title" : "Swim-Up",
        "desc" : "Episode 3, stage 2",
        "points" : 1
    },
    3: {
        "id": 402861,
        "stage" : 0x0400,
        "title" : "Heat-Up",
        "desc" : "Episode 5, stage 1",
        "points" : 1
    }
}

for up in one_ups {
    base = one_ups[up]
    achievement( 
    id=base["id"],
    title=base["title"],
    description="Collect the hidden 1-up in " + base["desc"],
    points=base["points"],
    trigger=
        episode_stage_combo == base["stage"] &&
        prev(lives) < lives &&
        stage_load_flag == 0
    )
}

// ----------------------------------------------------------------------------
// -- V-Rated Achievements
// ----------------------------------------------------------------------------

rv_episodes = {}
for ke in key_events {
    if (key_events[ke]["et"] == event_type_main) {
        rv_episodes[ke] = key_events[ke]
        rv_episodes[ke]["title"] = episodes[0x01][rv_episodes[ke]["episode"]]["name"]
        rv_episodes[ke]["id"] = episodes[0x01][rv_episodes[ke]["episode"]]["id"]
        rv_episodes[ke]["points"] = episodes[0x01][rv_episodes[ke]["episode"]]["points"]
    }
}
for rv in rv_episodes {
    base = rv_episodes[rv]
    achievement( 
    id=base["id"],
    title="V's Up: " + base["title"],
    description="Achieve an Episode rating of V or better and " + base["desc"],
    points=base["points"],
    trigger=
        current_stage == base["stage"] &&
        current_episode == base["episode"] &&
        prev(episode_result_animation) == 0x03 &&
        episode_result_animation == 0x04 &&
        episode_result_grade == 0
    )
}

// -- Rainbow V ------------------------------------
// trigger=
//     current_stage == base["stage"] &&
//     current_episode == base["episode"] &&
//     prev(episode_result_animation) == 0x03 &&
//     episode_result_animation == 0x04 &&
//     episode_result_grade == 0 &&
//     episode_RV_fail_count == 0
// -------------------------------------------------

// ----------------------------------------------------------------------------
// -- Other Achievements
// ----------------------------------------------------------------------------

achievement( 
    id=403029,
    title="Juiced Up",
    description="Collect your first red bottle for unlimited Viewtiful Effects",
    points=1,
    trigger=
        episode_stage_combo != 0xFFFF &&
        prev(unlimited_vfx) < unlimited_vfx
)

achievement( 
    id=403030,
    title="Viewtiful Combo",
    description="Get your combo meter up to 5x",
    points=5,
    trigger=
        episode_stage_combo != 0xFFFF &&
        prev(byte(0x002c8b7f)) == 0x04 &&
        byte(0x002c8b7f) == 0x05
)

achievement( 
    id=403747,
    title="Rainbow Reign",
    description="Get your first Rainbow V rating",
    points=3,
    trigger=
        episode_stage_combo != 0xFFFF &&
        prev(section_result_animation) == 0x03&&
        section_result_animation == 0x04 &&
        section_rainbow_v == 1
)

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rp_vfx_level = {
    500 : "L1",
    700 : "L2",
    900 : "L3",
    1100: "L4",
    1300: "L5",
    1500: "Max"
}

rp_difficulty = {
    0 : "Kids",
    1 : "Adult",
    2 : "V-R",
    3 : "SV-R"
}

emoji_character = {
    0 : "✌️",
    6 : "👧",
    7 : "🦸",
    8 : "🥷",
}

emoji = "✌️"
emoji_boomerang = "🪃"
emoji_bomb = "💣"

rich_presence_conditional_display(episode_stage_combo == 0xFFFF,
    "{0} Getting Ready to Play",
    emoji
)

rich_presence_conditional_display(episode_stage_combo >= 0x0800,
    "{0}x{3} {4} ‣ Episode {1}, stage {2} ‣ Taking a well earned break",
    rich_presence_lookup("character",character,emoji_character,fallback="?"),
    rich_presence_macro("Number",current_episode+1),
    rich_presence_macro("Number",current_stage+1),
    rich_presence_macro("Number",lives),
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?")
)

rich_presence_display("{0}x{3} {6} ‣ Episode {1}, stage {2} ‣ VFX {4} {7}{8} {9}{10} ‣ V{5}",
    rich_presence_lookup("character",character,emoji_character,fallback="?"),
    rich_presence_macro("Number",current_episode+1),
    rich_presence_macro("Number",current_stage+1),
    rich_presence_macro("Number",lives),
    rich_presence_lookup("vfx_level",vfx_max,rp_vfx_level,fallback="?"),
    rich_presence_macro("Score",v_points),
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?"),
    emoji_boomerang,
    rich_presence_macro("Number",voomerang_count),
    emoji_bomb,
    rich_presence_macro("Number",spink_count)
)