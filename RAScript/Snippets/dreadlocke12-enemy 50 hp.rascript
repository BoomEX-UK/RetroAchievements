// Adventure Island II: Aliens in Paradise
// #ID = 4486

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

sprite_maps = {
    "game_over" : 0x45,
    "password_1" : 0x51,
    "password_2" : 0x52,
    "titlescreen" : 0x56,
    "island_map" : 0x57
}


play_phases = {
    "map" : 0x01,
    "item_select" : 0x02,
    "playing" : 0x03,
    "win" : 0x04,
    "bonus" : 0x0a,
    "boss" : 0x0c,
    "skip" : 0x0d,
    "shortcut" : 0x0e,
    "egg" : 0x0f
}

stock = {
    "axe"       : bcd(byte(0xd436)),
    "boomerang" : bcd(byte(0xd437)),
    "diamond"   : bcd(byte(0xd438)),
    "spade"     : bcd(byte(0xd439)),
    "heart"     : bcd(byte(0xd43a)),
    "club"      : bcd(byte(0xd43b)),
    "star"      : bcd(byte(0xd43c)),
    "crystal"   : bcd(byte(0xd43d))
}

transformations = {
    "none" : {
        "id" : 0x00,
        "action" : "Walking"
    },
    "swim" : {
        "id" : 0x01,
        "action" : "Swimming"
    },
    "surf" : {
        "id" : 0x10,
        "action" : "Surfing"
    },
    "skate" : {
        "id" : 0x20,
        "action" : "Skateboarding"
    },
    "diamond" : {
        "id" : 0x30,
        "action" : "Riding Classie"
    },
    "diamond_2" : {
        "id" : 0x31,
        "action" : "Swimming with Classie"
    },
    "spade" : {
        "id" : 0x40,
        "action" : "Riding Magma"
    },
    "spade_2" : {
        "id" : 0x42,
        "action" : "Lava Crossing with Magma"
    },
    "heart" : {
        "id" : 0x50,
        "action" : "Riding Taylor"
    },
    "club" : {
        "id" : 0x60,
        "action" : "Riding Don-Don"
    },
    "star" : {
        "id" : 0x70,
        "action" : "Riding Poley"
    },
}

weapons = {
    "none" : {
        "id" : 0x00,
        "icon" : ""
    },
    "axe" : {
        "id" : 0x01,
        "icon" : "🪓"
    },
    "boomerang" : {
        "id" : 0x02,
        "icon" : "🪃"
    },
}

// ----------------------------------------------------------------------------
// -- Variables
// ----------------------------------------------------------------------------

sprite_map_id = byte(0xc0d9)
demo_mode = byte(0xd537)
play_phase = byte(0xd432)
state_id = byte(0xd431)

island_complete = byte(0xd1ee)
stage_complete = bitcount(0xd1ef)

current_island = byte(0xd1ec)
current_stage = bit0(0xd1ed) +
    (bit1(0xd1ed) * 2) +
    (bit2(0xd1ed) * 3) +
    (bit3(0xd1ed) * 4) +
    (bit4(0xd1ed) * 5) +
    (bit5(0xd1ed) * 6) +
    (bit6(0xd1ed) * 7) +
    (bit7(0xd1ed) * 8) 

lives = bcd(byte(0xd529))
score = bcd(tbyte(0xd526))
fruit = bcd(byte(0xd52a))
current_transformation = byte(0xd4a8)
current_weapon = byte(0xd4f8)
iCrystal_status = byte(0xd4e1)
addr_controller = 0xff8b

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

progression_ach = {
    0 : {
        "name" : "Hercules",
        "desc" : "giant beetle",
        "points" : 1,
        "ie_points" : 2,
    },
    1 : {
        "name" : "Nightshade",
        "desc" : "poisonous flower",
        "points" : 2,
        "ie_points" : 3,
    },
    2 : {
        "name" : "Salamander",
        "desc" : "fiery lizard",
        "points" : 3,
        "ie_points" : 4,
    },
    3 : {
        "name" : "Xenacanthus",
        "desc" : "sea monster",
        "points" : 4,
        "ie_points" : 5,
    },
    4 : {
        "name" : "Fossilis",
        "desc" : "fossilised beast",
        "points" : 5,
        "ie_points" : 5,
    },
    5 : {
        "name" : "Scylla Serrata",
        "desc" : "mud crab",
        "points" : 5,
        "ie_points" : 10,
        
    },
    6 : {
        "name" : "Hyalophora",
        "desc" : "giant moth",
        "points" : 10,
        "ie_points" : 25,
    },
    7 : {
        "name" : "Invasion",
        "desc" : "mothership and alien",
        "points" : 10,
        "ie_points" : 25,
    }
}

//- "Normal"

for ach in progression_ach {
    stub = progression_ach[ach]
    achievement(
        title=stub["name"],
        description="Defeat the " + stub["desc"] + " boss of Island " + ach+1,
        points=stub["points"],
        trigger=
            current_island == ach &&
            prev(play_phase) == play_phases["boss"] &&
            __ornext(play_phase == play_phases["map"] || play_phase == play_phases["win"])
    )
}

//- "Hard"

for ach in progression_ach {
    stub = progression_ach[ach]
    achievement(
        title="Ill-Equipped: " + stub["name"],
        description="Enter the stage with no items or upgrades and defeat the " + stub["desc"] + " boss of Island " + ach+1,
        points=stub["ie_points"],
        trigger=
            once(
                current_island == ach &&
                bit5(0xd1ed) == 1 &&
                current_weapon == weapons["none"]["id"] &&
                current_transformation == transformations["none"]["id"] &&
                iCrystal_status == 0 && 
                island_complete <= current_island &&
                current_island == ach &&
                prev(play_phase) == play_phases["item_select"] &&
                play_phase == play_phases["playing"]
            ) &&
            trigger_when(prev(play_phase) == play_phases["boss"] &&
            __ornext(play_phase == play_phases["map"] || play_phase == play_phases["win"])) &&
            never(
                __ornext(
                    prev(play_phase) != play_phases["item_select"] && 
                    prev(play_phase) != play_phases["playing"] && 
                    prev(play_phase) != play_phases["boss"]
                )
            )
    )
}

// ----------------------------------------------------------------------------
// -- Stage End Achievements
// ----------------------------------------------------------------------------

stage_ends = {
    0 : {
        "title" : "Blunt but Effective",
        "desc" : "carrying the Axe",
        "points" : 1,
        "trigger" : (current_weapon == weapons["axe"]["id"])
    },
    1 : {
        "title" : "Come Back",
        "desc" : "carrying the Boomering",
        "points" : 1,
        "trigger" : (current_weapon == weapons["boomerang"]["id"])
    },
    2 : {
        "title" : "Dazzling",
        "desc" : "with a protective Crystal",
        "points" : 3,
        "trigger" : (iCrystal_status == 0x03)
    },
    3 : {
        "title" : "Classie",
        "desc" : "riding Classie",
        "points" : 2,
        "trigger" : __ornext(current_transformation == transformations["diamond"]["id"] || current_transformation == transformations["diamond_2"]["id"])
    },
    4 : {
        "title" : "Taylor",
        "desc" : "riding Taylor",
        "points" : 2,
        "trigger" : (current_transformation == transformations["heart"]["id"])
    },
    5 : {
        "title" : "Magma",
        "desc" : "riding Magma",
        "points" : 2,
        "trigger" : __ornext(current_transformation == transformations["spade"]["id"] || current_transformation == transformations["spade_2"]["id"])
    },
    6 : {
        "title" : "Don-Don",
        "desc" : "riding Don-Don",
        "points" : 2,
        "trigger" : (current_transformation == transformations["club"]["id"])
    },
    7 : {
        "title" : "Poley",
        "desc" : "riding Poley",
        "points" : 2,
        "trigger" : (current_transformation == transformations["star"]["id"])
    },
}

for ach in stage_ends {
    stub = stage_ends[ach]
    achievement(
        title=stub["title"],
        description="Complete a stage " + stub["desc"],
        points=stub["points"],
        trigger=
            stub["trigger"] &&
            bit2(addr_controller) == 0 &&
            __ornext(prev(play_phase) == play_phases["playing"] || prev(play_phase) == play_phases["boss"]) &&
            __ornext(play_phase == play_phases["map"] || play_phase == play_phases["win"])
    )
}

// ----------------------------------------------------------------------------
// -- Hidden Path Achievements
// ----------------------------------------------------------------------------

paths = {
    0 : {
        "island" : 1,
        "stage" : 2,
        "points" : 2,
    },
    1 : {
        "island" : 2,
        "stage" : 2,
        "points" : 2,
    },
    2 : {
        "island" : 3,
        "stage" : 3,
        "points" : 3,
    },
    3 : {
        "island" : 4,
        "stage" : 3,
        "points" : 3,
    },
    4 : {
        "island" : 5,
        "stage" : 1,
        "points" : 4,
    },
    5 : {
        "island" : 6,
        "stage" : 2,
        "points" : 4,
    },
    6 : {
        "island" : 7,
        "stage" : 1,
        "points" : 5,
    },
    7 : {
        "island" : 8,
        "stage" : 3,
        "points" : 5,
    }
}

for ach in paths {
    stub = paths[ach]
    achievement(
        title="Secret Skip: Island " +stub["island"],
        description="Find the secret SKIP room on Island " +stub["island"],
        points=stub["points"],
        trigger=
            prev(play_phase) == play_phases["playing"] &&
            play_phase == play_phases["skip"] &&
            current_island == stub["island"]-1 &&
            current_stage == stub["stage"]
    )
}

for island in [2,5] {
    achievement(
        title="Super Secret Skip: Island " +island,
        description="Find the Ptera-ble shortcut on Island " +island,
        points=5,
        trigger=
            prev(play_phase) == play_phases["playing"] &&
            play_phase == play_phases["shortcut"] &&
            current_island == island-1
    )
}


bonus_extra = {
    0 : {
        "name" : "Mini-Game",
        "id" : play_phases["bonus"],
        "points" : 1
    },
    1 : {
        "name" : "Pick-an-Egg",
        "id" : play_phases["egg"],
        "points" : 3
    }
}

for bonus in bonus_extra {
    stub = bonus_extra[bonus]
    achievement(
        title="Bonus: " + stub["name"],
        description="Find your first " + stub["name"] +" bonus area",
        points=stub["points"],
        trigger=
            prev(play_phase) == play_phases["playing"] &&
            play_phase == stub["id"]
    )
}

achievement(
    title="Bonus: Perfect!",
    description="Achieve your first Perfect Bonus!",
    points=3,
    trigger=
        play_phase == play_phases["bonus"] &&
        prev(state_id) == 0x06 &&
        state_id == 0x07
)

achievement(
    title="Bonus: 3-Up!",
    description="Pick the Egg with the 3-Up",
    points=5,
    trigger=
        play_phase == play_phases["egg"] &&
        lives - prev(lives) == 3
)

achievement(
    title="Bonus: 100 Fruit",
    description="Grab yourself a 1-Up with 100 Fruit",
    points=5,
    trigger=
        prev(fruit) == 99 && 
        fruit == 00 &&
        lives - prev(lives) == 1
)

achievement(
    title="Bonus: 20k Points",
    description="Grab yourself a 1-Up with 20k Points",
    points=5,
    trigger=
        prev(score) < 20000 &&
        prev(score) > 18000 &&
        score >= 20000 &&
        lives - prev(lives) == 1
)

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🏝️"
emoji_man = "🧑"
emoji_score = "💯"
emoji_heart = "♥️"
emoji_club = "♣️"
emoji_diamond = "♦️"
emoji_spade = "♠️"
emoji_star = "⭐"
emoji_axe = "🪓"
emoji_boomerang = "🪃"
emoji_crystal = "💎"
emoji_ufo = "🛸"
emoji_sparkle = "✨"

rp_transform = {}
for tran in transformations {
    rp_transform[transformations[tran]["id"]] = transformations[tran]["action"]
}

rp_weapon = {}
for weap in weapons {
    rp_weapon[weapons[weap]["id"]] = weapons[weap]["icon"]
}

rich_presence_conditional_display(play_phase == play_phases["win"],
    "{0} Jeannie Jungle Is Saved! | {1}{2}",
    emoji_ufo,
    emoji_score,
    rich_presence_macro("Score",score)
)

rich_presence_conditional_display(demo_mode != 0x00,
    "{0} Watching a Demo",
    emoji
)

rich_presence_conditional_display(sprite_map_id == sprite_maps["titlescreen"],
    "{0} Looking at the Titlescreen",
    emoji
)

rich_presence_conditional_display(sprite_map_id == sprite_maps["password_1"] || sprite_map_id == sprite_maps["password_2"],
    "{0} Entering a Password",
    emoji
)

rich_presence_conditional_display(sprite_map_id == sprite_maps["game_over"],
    "{0} Game Over | {1}{2}",
    emoji,
    emoji_score,
    rich_presence_macro("Score",score)
)

rich_presence_conditional_display(play_phase == play_phases["map"],
    "{0} Island Map | Completion: Islands {1}, Stages {2} | {3}{4} {5}{6}",
    rich_presence_lookup("r_emoji",iCrystal_status,{0x03:emoji_sparkle},fallback=emoji),
    rich_presence_macro("Number",island_complete),
    rich_presence_macro("Number",stage_complete-1),
    emoji_man,
    rich_presence_macro("Number",lives),
    emoji_score,
    rich_presence_macro("Score",score)
)

rich_presence_conditional_display(play_phase == play_phases["item_select"],
    "{0} Item Select | {1}{2} {3}{4} {5}{6} {7}{8} {9}{10} | {11}{12} {13}{14} {15}{16}",
    rich_presence_lookup("r_emoji",iCrystal_status,{0x03:emoji_sparkle},fallback=emoji),
    emoji_heart,
    rich_presence_macro("Number",stock["heart"]),
    emoji_club,
    rich_presence_macro("Number",stock["club"]),
    emoji_diamond,
    rich_presence_macro("Number",stock["diamond"]),
    emoji_spade,
    rich_presence_macro("Number",stock["spade"]),
    emoji_star,
    rich_presence_macro("Number",stock["star"]),
    emoji_axe,
    rich_presence_macro("Number",stock["axe"]),
    emoji_boomerang,
    rich_presence_macro("Number",stock["boomerang"]),
    emoji_crystal,
    rich_presence_macro("Number",stock["crystal"])
)

rich_presence_conditional_display(
    (
        play_phase == play_phases["playing"]    ||
        play_phase == play_phases["bonus"]      ||
        play_phase == play_phases["boss"]       ||
        play_phase == play_phases["skip"]       ||
        play_phase == play_phases["shortcut"]   ||
        play_phase == play_phases["egg"]
    ),
    "{0} {1} {9} {2}-{3} {4} | {5}{6} {7}{8}",
    rich_presence_lookup("r_emoji",iCrystal_status,{0x03:emoji_sparkle},fallback=emoji),
    rich_presence_lookup("rp_mode",current_transformation,rp_transform,fallback="Dancing"),
    rich_presence_macro("Number",current_island+1),
    rich_presence_macro("Number",current_stage),
    rich_presence_lookup("rp_weap",current_weapon,rp_weapon,fallback="?"),
    emoji_man,
    rich_presence_macro("Number",lives),
    emoji_score,
    rich_presence_macro("Score",score),
    rich_presence_lookup(
        "r_stagetype",
        play_phase,
        {
            play_phases["playing"]:"on Stage",
            play_phases["boss"] : "in Boss Battle",
            play_phases["bonus"] : "on Bonus Stage",
            play_phases["skip"] : "on a Split Path",
            play_phases["shortcut"] : "talking to Ptera Taxi",
            play_phases["egg"] : "Picking an Egg",
        },
        fallback="?"
   )
)

rich_presence_display("{0} Getting Ready to Play",
    emoji
)

