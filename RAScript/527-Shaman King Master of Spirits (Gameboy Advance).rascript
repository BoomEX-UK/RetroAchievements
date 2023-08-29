// Shaman King: Master of Spirits
// #ID = 527

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

areas = {
    "town_map" : {
        "id" : 0xFF,
        "name": "Town Map",
    },
    "ec" : {
        "id" : 0x00,
        "name": "Eastern Cemetery",
    },
    "nf" : {
        "id" : 0x01,
        "name": "Nothern Fields",
    },
    "wc" : {
        "id" : 0x02,
        "name": "Western Cemetery",
    },
    "sm" : {
        "id" : 0x03,
        "name": "Southern Mountains",
    },
    "jr" : {
        "id" : 0x04,
        "name": "Jungle Ruins",
    },
    "inn" : {
        "id" : 0x07,
        "name": "Asakura Inn",
    },
}

play_states = {
    "titlescreen" : 0x00,
    "map" : 0x02,
    "stage" : 0x03
}

difficulties = {
    "normal" : {
        "id" : 0x00,
        "name": "Normal"
    },
    "hard" : {
        "id" : 0x01,
        "name" : "Hard"
    }
}

collectibles = {
    "ec" : [0x001ea8,0x001eac,0x001eb0,0x001eb4],
    "wc" : [0x001fa8,0x001fac,0x001fb0,0x001fb4,0x001fb8],
    "jr" : [1,2],
    "nf" : [0x001f28,0x001f2c,0x001f30,0x001f34,0x001f38],
    "sm" : [1]
}

total_collect = {
    "ec" : 25,
    "wc" : 0,
    "jr" : 0,
    "nf" : 36,
    "sm" : 0
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

area_id = byte(0x001e41)
stage_id = byte(0x001e42)
play_state = byte(0x001ddd)
stage_timer = dword(0x001dd8)
difficulty = byte(0x001ddc)

//- Character
attack = word(0x0022c2)
defense = word(0x0022c4)

//- Collection
function spirit_count() => sum_of(range(0x00235b, 0x002364), a => bitcount(a))
function area_collect_count(stage) => sum_of(collectibles[stage], a => bitcount(a))
function prev_area_collect_count(stage) => sum_of(collectibles[stage], a => prev(bitcount(a)))

// ----------------------------------------------------------------------------
// -- Progression
// ----------------------------------------------------------------------------

// 

// Collectible Achievements
for area in collectibles {
    achievement(
        title = "Nook & Cranny: " + areas[area]["name"],
        points = 1,
        description = "Collect every item and open every chest in the "+areas[area]["name"]+" area",
        id = 0,
        trigger =
            play_state == play_states["stage"] &&
            prev_area_collect_count(area) == total_collect[area]-1 &&
            area_collect_count(area) == total_collect[area]
    )
}

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rp_areas = {}
for area in areas {
    rp_areas[areas[area]["id"]] = areas[area]["name"]
}

rp_difficulty = {}
for diff in difficulties {
    rp_difficulty[difficulties[diff]["id"]] = difficulties[diff]["name"]
}

emoji = "👻"
emoji_clock = "🕒"
emoji_attack = "⚔️"
emoji_defense = "🛡️"

rich_presence_conditional_display(play_state == play_states["titlescreen"], "{0} Getting ready to play",
    emoji
)

rich_presence_conditional_display(play_state == play_states["map"], "{0} Exploring the World Map {1}{2}/{3}",
    "",
    emoji,
    rich_presence_macro("Number",spirit_count()),
    68
)

rich_presence_conditional_display(play_state == play_states["stage"], "{0} {1} S{2} | {3}{4} {5}{6} {7}{8}/{9} | {10}{11} | {12}",
    "",
    rich_presence_lookup("areas",area_id,rp_areas,fallback="?"),
    rich_presence_macro("Number",stage_id+1),
    emoji_attack,
    rich_presence_macro("Number",attack),
    emoji_defense,
    rich_presence_macro("Number",defense),
    emoji,
    rich_presence_macro("Number",spirit_count()),
    68,
    emoji_clock,
    rich_presence_macro("Seconds",stage_timer/60),
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?")
)

//-
rich_presence_display("{0} Shaman King: Master of Spirits",emoji)
