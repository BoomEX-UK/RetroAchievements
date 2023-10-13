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
    "tg" : {
        "id" : 0x05,
        "name": "Tao Grounds",
    },
    "ia" : {
        "id" : 0x06,
        "name": "Industrial Area",
    },
    "il" : {
        "id" : 0x07,
        "name": "Ice Lands",
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
    "nf" : [0x001f28,0x001f2c,0x001f30,0x001f34,0x001f38],
    "wc" : [0x001fa8,0x001fac,0x001fb0,0x001fb4,0x001fb8],
    "sm" : [0x002028,0x00202c,0x002030],
    "jr" : [0x0020a8,0x0020ac,0x0020b0,0x0020b4,0x0020b8,0x0020bc],
    "tg" : [0x002128,0x00212c,0x002130,0x002134,0x002138,0x00213c,0x002140],
    "ia" : [0x0021a8,0x0021ac],
    "il" : [0x002228,0x00222c,0x002230]
        
}

total_collect = {
    "ec" : 25,  // checked
    "wc" : 34,  // checked
    "jr" : 38,  // checked
    "nf" : 39,  // checked
    "sm" : 17,  // checked
    "tg" : 41,  // checked
    "ia" : 10,  // checked
    "il" : 23   // checked
}

progression_ach = {
    "ryo" : {
        "title" : "Ryo and Tokageroh",
        "description" : "Defeat Ryo and claim the spirit Tokageroh",
        "flag" : (prev(bit3(0x001e30)) == 0 && bit3(0x001e30) == 1),
        "points" : 1,
        "h_points" : 2
    },
    "trey" : {
        "title" : "Trey and Cory",
        "description" : "Defeat Trey and claim the spirit Cory",
        "flag" : (prev(bit6(0x001e30)) == 0 && bit6(0x001e30) == 1),
        "points" : 1,
        "h_points" : 2
    },
    "faust" : {
        "title" : "Faust and Eliza",
        "description" : "Defeat Faust and claim the spirit Eliza",
        "flag" : (prev(bit0(0x001e31)) == 0 && bit0(0x001e31) == 1),
        "points" : 2,
        "h_points" : 3
    },
    "silva" : {
        "title" : "Silva and the Five Guardian Ghosts",
        "description" : "Defeat Silva. You will need to work harder to claim your prize",
        "flag" : (prev(bit3(0x001e31)) == 0 && bit3(0x001e31) == 1),
        "points" : 2,
        "h_points" : 3
    },
    "joco" : {
        "title" : "Joco and Mic",
        "description" : "Defeat Joco and claim the spirit Mic",
        "flag" : (prev(bit5(0x001e31)) == 0 && bit5(0x001e31) == 1),
        "points" : 3,
        "h_points" : 4
    },
    "jun_tao" : {
        "title" : "Jun Tao and Lee Pai-Long",
        "description" : "Defeat Jun Tao and claim the spirit Lee Pai-Long",
        "flag" : (prev(bit0(0x001e32)) == 0 && bit0(0x001e32) == 1),
        "points" : 3,
        "h_points" : 4
    },
    "len_tao" : {
        "title" : "Len Tao and Bason",
        "description" : "Defeat Len Tao and claim the spirit Bason",
        "flag" : (prev(bit3(0x001e32)) == 0 && bit3(0x001e32) == 1),
        "points" : 4,
        "h_points" : 5
    },
    "en_tao" : {
        "title" : "En Tao and the Grand Tao Dragon",
        "description" : "Defeat En Tao and claim the spirit of the Grand Tao Dragon",
        "flag" : (prev(bit6(0x001e32)) == 0 && bit6(0x001e32) == 1),
        "points" : 5,
        "h_points" : 10
    },
    "lyzerg" : {
        "title" : "Lyzerg and Chloe",
        "description" : "Defeat Lyzerg and claim the spirit Chloe",
        "flag" : (prev(bit1(0x001e33)) == 0 && bit1(0x001e33) == 1),
        "points" : 5,
        "h_points" : 10
    },
    "marco" : {
        "title" : "Marco and Michael",
        "description" : "Defeat Marco and claim the spirit Michael",
        "flag" : (prev(bit4(0x001e33)) == 0 && bit4(0x001e33) == 1),
        "points" : 5,
        "h_points" : 10
    },
    "magister" : {
        "title" : "Magister - Master of Illusions",
        "description" : "Defeat Magister - but there's no time to rest!",
        "flag" : (prev(bit7(0x001e33)) == 0 && bit7(0x001e33) == 1),
        "points" : 10,
        "h_points" : 10
    },
    "mephias" : {
        "title" : "Mephias - Master of Chaos",
        "description" : "Defeat Mephias! The Fire Spirit is now yours.",
        "flag" : (prev(bit0(0x001e34)) == 0 && bit0(0x001e34) == 1),
        "points" : 10,
        "h_points" : 25
    }
}

magatama_beads = [
    bit4(0x001eac), // EC
    bit5(0x001eac), // EC
    bit0(0x001eb4), // EC
    bit2(0x001f30), // NF L3
    bit0(0x001f34), // NF L2
    bit1(0x001fa8), // WC
    bit7(0x001fac), // WC
    bit0(0x002028), // SM
    bit4(0x00202c), // SM
    bit1(0x0020b0), // JR
    bit5(0x0020b4), // JR
    bit7(0x0020b4), // JR
    bit4(0x002134), // TG
    bit0(0x002138), // TG
    bit1(0x00213c), // TG
    bit3(0x0021a8), // IA
    bit4(0x0021a8), // IA
    bit1(0x0021ac), // IA
    bit0(0x002228), // IL
    bit6(0x002228)  // IL
]

magatama_ach = {
    "1" : {
        "title" : "Magatama One (1 Bead)",
        "desc" : "Collect your first Magatama Bead",
        "points" : 1,
        "count" : 1
    },
    "4" : {
        "title" : "Your First HP Upgrade (4 Beads)",
        "desc" : "Receive your first Max HP Upgrade",
        "points" : 2,
        "count" : 4
    },
    "8" : {
        "title" : "Understanding Magatama (8 Beads)",
        "desc" : "You now have 8 Magatama beads, you're nearly half way",
        "points" : 3,
        "count" : 8
    },
    "12" : {
        "title" : "The Power of Magatama (12 Beads)",
        "desc" : "You are over half way - keep collecting the Magatama Beads",
        "points" : 5,
        "count" : 12
    }, 
    "16" : {
        "title" : "Magatama Collector (16 Beads)",
        "desc" : "Continue to grow you Magatama collection",
        "points" : 10,
        "count" : 16
    },
    "20" : {
        "title" : "Master of Magatama (20 Beads)",
        "desc" : "You have collected every Magatama bead!",
        "points" : 25,
        "count" : 20
    },
}

tome_ach = {
    "4" : {
        "title" : "Your First Furyoku Upgrade (4 Pages)",
        "desc" : "Receive your first Max SP Upgrade",
        "points" : 3,
        "max_sp" : 0x78
    },
    "8" : {
        "title" : "Understanding Furyoku (8 Pages)",
        "desc" : "You now have 8 pages of the 'Tome of Shaman'",
        "points" : 5,
        "max_sp" : 0xa0
    },
    "12" : {
        "title" : "Master of Furyoku (12 Pages)",
        "desc" : "You have recovered all of the Pages of the 'Tome of Shaman'",
        "points" : 10,
        "max_sp" : 0xc8
    }, 
}

spirit_ach = {
    "2" : {
        "title" : "First Spirit Found (2 Spirits)",
        "desc" : "You have recovered your first Spirit",
        "points" : 1,
        "count" : 2
    },
    "17" : {
        "title" : "25% Spirits (17 Spirits)",
        "desc" : "You have a quarter of all spirits recovered",
        "points" : 3,
        "count" : 17
    },
    "34" : {
        "title" : "50% Spirits (34 Spirits)",
        "desc" : "You have half of all spirits recovered",
        "points" : 5,
        "count" : 34
    },
    "51" : {
        "title" : "75% Spirits (51 Spirits)",
        "desc" : "You have 3 quarters of the Spirits recovered",
        "points" : 10,
        "count" : 51
    }, 
    "68" : {
        "title" : "Master of Spirits (68 Spirits)",
        "desc" : "You have recovered all of the Spirits",
        "points" : 25,
        "count" : 68
    }, 
}

unity_ach = {
    "head" : {
        "title" : "Head",
        "desc" : "Headphones",
        "points" : 5,
        "flag" : bit0(0x002365)
    },
    "left_arm" : {
        "title" : "Left Arm",
        "desc" : "Left Glove",
        "points" : 5,
        "flag" : bit2(0x002365)
    },
    "left_foot" : {
        "title" : "Left Foot",
        "desc" : "Left Sandal",
        "points" : 5,
        "flag" : bit3(0x002365)
    },
    "right_foot" : {
        "title" : "Right Foot",
        "desc" : "Right Sandal",
        "points" : 5,
        "flag" : bit4(0x002365)
    }
}

equip_ach = {
    "light_sword" : {
        "title" : "Sword of Light",
        "desc" : "Ryo has trusted you with the Sword of Light",
        "points" : 1,
        "wincon" : (prev(byte(0x002356)) == 0x00 && byte(0x002356) == 0x01)
    },
    "antiquity" : {
        "title" : "The Antiquity",
        "desc" : "Grandpa has bestowed an ancient gift upon you",
        "points" : 5,
        "wincon" : (prev(byte(0x002356)) == 0x01 && byte(0x002356) == 0x02)
    },
    "thunder_sword" : {
        "title" : "Thunder Sword",
        "desc" : "You have received the Thunder Sword, but you will need Bason's help to use it",
        "points" : 5,
        "wincon" : (prev(bit7(0x001e32)) == 0 && bit7(0x001e32) == 1)
    },
    "lucky_charm" : {
        "title" : "Lucky Charm",
        "desc" : "This lucky charm will keep you safe .. for now",
        "points" : 2,
        "wincon" : (prev(bit5(0x001f2c)) == 0 && bit5(0x001f2c) == 1)
    }, 
    "bear_claw" : {
        "title" : "Bear Claw",
        "desc" : "Building up a strong defense is the key to success",
        "points" : 5,
        "wincon" : (prev(bit4(0x00212c)) == 0 && bit4(0x00212c) == 1)
    }, 
    "battle_clothes" : {
        "title" : "Battle Clothes",
        "desc" : "Your armour is complete, now you are ready for anything",
        "points" : 10,
        "wincon" : (prev(bit2(0x0021a8)) == 0 && bit2(0x0021a8) == 1)
    }, 
}

spirit_combo = {
    "revival" : {
        "title" : "Revival",
        "desc" : "Ian, Nizba, Dreisa, Yophia will protect you",
        "points" : 5,
        "value" : 0x41
    },
    "totem" : {
        "title" : "Totem Attack",
        "desc" : "Silva's secret move will help you pass large obstacles",
        "points" : 5,
        "value" : 0x1d
    },
    "grand_halo" : {
        "title" : "Grand Halo Blade",
        "desc" : "Mosuke will power up Amidamaru",
        "points" : 5,
        "value" : 0x39
    },
    "cavalry" : {
        "title" : "Ultra Cavalry Charge",
        "desc" : "Black Raven is powered up with Bason's lance",
        "points" : 5,
        "value" : 0x35
    },
    "phantasma" : {
        "title" : "Grande Phantasma",
        "desc" : "Antonio, Jose, Pancho, Zapata, Miguel will summon the dead",
        "points" : 5,
        "value" : 0x45
    },
    "ray" : {
        "title" : "Ray of Light",
        "desc" : "Michael and the X-Laws Angels will blast the enemies away",
        "points" : 5,
        "value" : 0x22
    },
    "jaguar" : {
        "title" : "Jaguar Man",
        "desc" : "Mic and Pascal Avaf will glide you to safety",
        "points" : 5,
        "value" : 0x2a
    }
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

area_id     = byte(0x001e41)
stage_id    = byte(0x001e42)
stage_section = byte(0x001e43)
play_state  = byte(0x001ddd)
stage_timer = dword(0x001dd8)
difficulty  = byte(0x001ddc)

stage_credits_spirit = 0x48

//- Character
attack      = word(0x0022c2)
defense     = word(0x0022c4)
max_sp      = byte(0x0022c0)
yoh_move    = byte(0x0022c6)

//- Collection
function spirit_count() => sum_of(range(0x00235b, 0x002364), a => bitcount(a))
function stage_complete_count() => sum_of(range(0x001dde, 0x001e26), a => bit0(a))
function area_collect_count(stage) => sum_of(collectibles[stage], a => bitcount(a))
function prev_area_collect_count(stage) => sum_of(collectibles[stage], a => prev(bitcount(a)))
function magatama_count() => sum_of(magatama_beads, a => a)
function prev_magatama_count() => sum_of(magatama_beads, a => prev(a))
function tome_pieces() => bit2(0x002366) + (bit3(0x002366)*2)

function completion_perc() => (spirit_count() + stage_complete_count()) / 1.21 // 121 to collect, 122 in total
function completion_count() => (spirit_count() + stage_complete_count())

// ----------------------------------------------------------------------------
// -- Progression
// ----------------------------------------------------------------------------

// 

// Story
for diff in difficulties {
    for ach in progression_ach {
        dflag = difficulty >= difficulties[diff]["id"]
        dtext = "Normal+"
        dpoints = progression_ach[ach]["points"]
        if( difficulties[diff]["name"] == "Hard" ){
            dflag = difficulty == difficulties[diff]["id"]
            dtext = "Hard"
            dpoints = progression_ach[ach]["h_points"]
        }
        achievement(
            title = "Spirit Master: " + progression_ach[ach]["title"] + " ("+dtext+")",
            points = dpoints,
            description = progression_ach[ach]["description"] + " (Difficulty: "+dtext+")",
            id = 0,
            trigger =
                area_id != areas["town_map"]["id"] &&
                play_state == play_states["stage"] &&
                progression_ach[ach]["flag"] &&
                dflag
        )
    }
}

// All Collectibles
for area in collectibles {
    achievement(
        title = "Nook & Cranny: " + areas[area]["name"],
        points = 1,
        description = "Collect every item and open every chest in the "+areas[area]["name"]+" area",
        id = 0,
        trigger =
            area_id != areas["town_map"]["id"] &&
            play_state == play_states["stage"] &&
            prev_area_collect_count(area) >= total_collect[area]-3 &&
            prev_area_collect_count(area) < total_collect[area] &&
            area_collect_count(area) >= total_collect[area]
    )
}

// Magatama Beads
for mag in magatama_ach {
    achievement(
        title = magatama_ach[mag]["title"],
        points = magatama_ach[mag]["points"],
        description = magatama_ach[mag]["desc"],
        id = 0,
        trigger =
            area_id != areas["town_map"]["id"] &&
            play_state == play_states["stage"] &&
            prev_magatama_count() == magatama_ach[mag]["count"] -1 &&
            magatama_count() == magatama_ach[mag]["count"]
    )
}

// Tome Pieces
achievement(
    title = "Tome One (1 Page)",
    points = 1,
    description = "Recover the first page of the 'Tome of the Shaman'",
    id = 0,
    trigger =
        area_id != areas["town_map"]["id"] &&
        play_state == play_states["stage"] &&
        prev(tome_pieces()) == 0 &&
        tome_pieces() == 1
)

for tome in tome_ach {
    achievement(
        title = tome_ach[tome]["title"],
        points = tome_ach[tome]["points"],
        description = tome_ach[tome]["desc"],
        id = 0,
        trigger =
            area_id != areas["town_map"]["id"] &&
            play_state == play_states["stage"] &&
            prev(max_sp) == tome_ach[tome]["max_sp"]-40 &&
            max_sp == tome_ach[tome]["max_sp"]
    )
}

// Spirits
for spirit in spirit_ach {
    achievement(
        title = spirit_ach[spirit]["title"],
        points = spirit_ach[spirit]["points"],
        description = spirit_ach[spirit]["desc"],
        id = 0,
        trigger =
            __ornext(area_id != areas["town_map"]["id"] || stage_section == stage_credits_spirit) &&
            play_state == play_states["stage"] &&
            prev(spirit_count()) == spirit_ach[spirit]["count"]-1 &&
            spirit_count() == spirit_ach[spirit]["count"]
    )
}

// Spirit Unity
for unity in unity_ach {
    achievement(
        title = "Spirit Unity: " + unity_ach[unity]["title"],
        points = unity_ach[unity]["points"],
        description = "You have found the "+unity_ach[unity]["desc"]+" and increased your Spirit Unity",
        id = 0,
        trigger =
            area_id != areas["town_map"]["id"] &&
            play_state == play_states["stage"] &&
            prev(unity_ach[unity]["flag"]) == 0 &&
            unity_ach[unity]["flag"] == 1
    )
}

// Spirit Combo
for combo in spirit_combo {
    achievement(
        title = "Spirit Combo: " + spirit_combo[combo]["title"],
        points = spirit_combo[combo]["points"],
        description = spirit_combo[combo]["desc"],
        id = 0,
        trigger =
            area_id != areas["town_map"]["id"] &&
            play_state == play_states["stage"] &&
            prev(yoh_move) != spirit_combo[combo]["value"] &&
            yoh_move == spirit_combo[combo]["value"]
    )
}

// Equiptment
for equip in equip_ach {
    achievement(
        title = "Yoh's Armoury: " + equip_ach[equip]["title"],
        points = equip_ach[equip]["points"],
        description = equip_ach[equip]["desc"],
        id = 0,
        trigger =
            area_id != areas["town_map"]["id"] &&
            play_state == play_states["stage"] &&
            equip_ach[equip]["wincon"]
    )
}

achievement(
    title = "Completion Rate: 50%",
    points = 10,
    description = "You have completed 50% of the game, now keep going!",
    id = 0,
    trigger =
        __ornext(area_id != areas["town_map"]["id"]) &&
        play_state == play_states["stage"] &&
        prev(completion_count()) >= completion_count() &&
        completion_count() >= 61
)

achievement(
    title = "Completion Rate: 100%",
    points = 50,
    description = "You have completed 100% of the game, amazing!",
    id = 0,
    trigger =
        __ornext(area_id != areas["town_map"]["id"] || stage_section == stage_credits_spirit) &&
        play_state == play_states["stage"] &&
        prev(completion_count()) > 118 &&
        prev(completion_count()) < 122 &&
        completion_count() == 122
)

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

rp_area_inn = word(0x001e41) == 0x1007

emoji = "👻"
emoji_clock = "🕒"
emoji_attack = "⚔️"
emoji_defense = "🛡️"
emoji_yin = "☯️"
emoji_save = "💾"

rich_presence_conditional_display(play_state == play_states["titlescreen"], "{0} Getting ready to play",
    emoji
)

rich_presence_conditional_display(play_state == play_states["map"], "{0} Exploring the World Map {1}{2}/{3} {4}{5}{6}",
    "",
    emoji,
    rich_presence_macro("Number",spirit_count()),
    68,
    emoji_save,
    rich_presence_macro("Number",completion_perc()),
    "%"
)

rich_presence_conditional_display(rp_area_inn, "{0} Resting at the Asakura Inn {1}{2}/{3}",
    "",
    emoji,
    rich_presence_macro("Number",spirit_count()),
    68
)

rich_presence_conditional_display(play_state == play_states["stage"], "{0} {1} S{2} | {3}{4} {5}{6} {7}{8}/{9} {10}{11}/{12} | {13}{14} | {15}",
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
    emoji_yin,
    rich_presence_macro("Number",magatama_count()),
    20,
    emoji_clock,
    rich_presence_macro("Seconds",stage_timer/60),
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?")
)

//-
rich_presence_display("{0} Shaman King: Master of Spirits",emoji)
