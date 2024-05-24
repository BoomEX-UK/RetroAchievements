// Eternal Darkness: Sanity's Requiem
// #ID = 8492

// ----------------------------------------------------------------------------
// -- Version Detect
// ----------------------------------------------------------------------------

versions = {
    0x45 : "US",
    0x50 : "EU"
}

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

locations = {
    "roivas"        : "Roivas Manour",
    "forgotten"     : "Forgotten City",
    "angkor"        : "Angkor Thom",
    "amiens"        : "Amiens",
    "forbidden"     : "Forbidden City",
    "oil"           : "Oil Fields"
}

characters = {
    "alex" : {
        "id" : 0x00,
        "short" : "Alex",
        "long" : "Alex Roivas",
        "era" : "2000 AD",
        "location" : locations["roivas"]
    },
    "pious" : {
        "id" : 0x01,
        "short" : "Pious",
        "long" : "Pious Augustus",
        "era" : "26 BC",
        "location" : locations["forgotten"]
    },
    "ellia" : {
        "id" : 0x02,
        "short" : "Ellia",
        "long" : "Ellia",
        "era" : "1150 AD",
        "location" : locations["angkor"]
    },
    "anthony" : {
        "id" : 0x03,
        "short" : "Anthony",
        "long" : "Anthony",
        "era" : "814 AD",
        "location" : locations["amiens"]
    },
    "karim" : {
        "id" : 0x04,
        "short" : "Karim",
        "long" : "Karim",
        "era" : "565 AD",
        "location" : locations["forgotten"]
    },
    "max" : {
        "id" : 0x05,
        "short" : "Dr Max",
        "long" : "Dr Maximillian Roivas",
        "era" : "1760 AD",
        "location" : locations["roivas"]
    },
    "edwin" : {
        "id" : 0x06,
        "short" : "Dr Edwin",
        "long" : "Dr Edwin Lindsey",
        "era" : "1983 AD",
        "location" : locations["angkor"]
    },
    "paul" : {
        "id" : 0x07,
        "short" : "Paul",
        "long" : "Paul Luther",
        "era" : "1485 AD",
        "location" : locations["amiens"]
    },
    "roberto" : {
        "id" : 0x08,
        "short" : "Roberto",
        "long" : "Roberto Binchi",
        "era" : "1460 AD",
        "location" : locations["forbidden"]
    },
    "edward" : {
        "id" : 0x09,
        "short" : "Dr Edward",
        "long" : "Dr Edward M Roivas",
        "era" : "1952 AD",
        "location" : locations["roivas"]
    },
    "peter" : {
        "id" : 0x0a,
        "short" : "Peter",
        "long" : "Peter Jacob",
        "era" : "1916 AD",
        "location" : locations["amiens"]
    },
    "michael" : {
        "id" : 0x0b,
        "short" : "Michael",
        "long" : "Michael Edwards",
        "era" : "1991 AD",
        "location" : locations["oil"]
    }   
}

areas = {
    0x0043 : "Master Bedroom",
    0x0044 : "2nd Floor Hallway",
    0x0045 : "Main Hall",
    0x0046 : "Dining Room",
    0x0047 : "Hidden Study",
    0x0048 : "2nd Floor Gun Room",
    0x004D : "Library",
    0x004E : "Library (Grandfather Clock Room)",
    0x0051 : "Drawing Room",
    0x0057 : "Main Bathroom",
    0x0059 : "Observatory",
    0x00ae : "Desert",
    0x0155 : "Entrance",
    0x0156 : "Entrance Hallway",
    0x0157 : "Tomb",
    0x0158 : "Tomb",
    0x00b4 : "Hallway",
    0x00b7 : "Four Sigil Room",
    0x00b6 : "Sword Training Room",
    0x00b5 : "Teleportation Room",
    0x00b8 : "Artifact Room",
    0x00a6 : "Tomb Entrance",
    0x014e : "Lair",
    0x00d8 : "Eastern Path",
    0x008a : "Western Path",
    0x0127 : "Trap Hallway West",
    0x00d9 : "Sun Room",
    0x00ea : "Trap Hallway East",
    0x00da : "Night Room",
    0x00a5 : "Trap Hallway North",
    0x00a9 : "Pit",
    0x009f : "Chamber Entrance",
    0x0126 : "Chamber Trap Hallway",
    0x00a0 : "Burning Chamber",
    0x0091 : "Mantarok",
    0x0019 : "High Preist Chamber",
    0x0018 : "France",
    0x0096 : "Cathedral",
    0x0093 : "Cathedral (2nd Floor)",
    0x0015 : "Cathedral Passage",
    0x0069 : "Study",
    0x006d : "Basement",
    0x007b : "Cathedral, 1485 AD",
    0x00dc : "Vestry",
    0x0005 : "Tome Room",
    0x006b : "Bell Tower",
    0x009e : "Stairwell",
    0x005d : "Stargate",
    0x0040 : "High Preist",
    0x010b : "Big Rock",
    0x0451 : "ʎpnʇS",       // Sanity - Chapter 7: cathedral  "Study"" upside down
    0x04e7 : "llɐH uᴉɐW",   // Sanity - "Main Hall" upside down
    0x00f9 : "Study",
    0x00fc : "2nd Floor Hallway",
    0x00fa : "Bathroom",
    0x0100 : "Master Bedroom",
    0x0095 : "Bishops Chamber",
    0x0075 : "Cathedral", // Paul
    0x0068 : "Bishops Chamber", // Paul > Anthony Fight
    0x001b : "Cathedral, 1916 AD",
    0x0067 : "Entrance",
    0x0073 : "Resting Quarters"
}

offsets = {
    "event_flags" : 0x21240
}

event_flags = {
    "se_phone_intermission" : {
        "EU" : 0x00704c51
    },
    "se_hanging_guy" : {
        "EU" : 0x00704c38
    },
    "se_bathtub_girl" : {
        "EU" : 0x00704c3a
    },
    "se_torso_explode" : {
        "EU" : 0x00704c5a
    },
    "se_sounds_a" : {
        "EU" : 0x00704c64
    },
    "se_sounds_b" : {
        "EU" : 0x00704c65
    },
    "se_sounds_c" : {
        "EU" : 0x00704c67
    },
    "se_sounds_d" : {
        "EU" : 0x00704c6b
    },
    "anthony_zombie" : {
        "EU" : 0x00704be8
    },
    "short_sword" : {
        "EU" : 0x00704c3d
    }
}

for ef in event_flags {
    event_flags[ef]["US"] = event_flags[ef]["EU"] + offsets["event_flags"]
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

const_pmask = 0x01FFFFFF
const_location_none = 0xFFFFFFFF
// Jump to Chapter Flag (only wokrs when not playing as alex)
// const_jump_no = 1
// const_jump_yes = 0

// Check initial nightmare sequence was played, mor reliable "Jump to Game" check
stage_zero_played = {
    "EU" : bit0(0x006d95b3),
    "US" : bit0(0x006f7fd3)
}
function new_game_mode(ver) => stage_zero_played[ver] == 1


version_id = byte(0x00000003)

location_id = {
    "US" : dword_be(0x0064d18c),
    "EU" : dword_be(0x0061f934)
}

scripted_play = {
    "US" : dword_be(0x0064d188),
    "EU" : dword_be(0x0061f930)
}

stat_pointer = {
    "US" : dword_be(0x0064d88c),
    "EU" : dword_be(0x0062002c)
}

stat_pointer_value = {
    "US" : (stat_pointer["US"] & const_pmask),
    "EU" : (stat_pointer["EU"] & const_pmask)
}

pious_battle_spirit = {
    "US" : byte(0x0064d88b),
    "EU" : byte(0x0062002b)
}

character_id = {
    "US" : dword_be(0x003003c8),
    "EU" : dword_be(0x00307170)
}

weapon_id = {
    "US" : dword_be(0x005b4e14),
    "EU" : dword_be(0x00588df4),
}

second_character_id = {
    "US" : dword_be(0x003003cc),
    "EU" : dword_be(0x00307174)
}

artifact_id = {
    "US" : dword_be(0x003003d4),
    "EU" : dword_be(0x0030717c)
}

overlay_id = {
    "US" : byte(0x0064c627),
    "EU" : byte(0x0061edd7)
}

sanity_effect_overlay_id_b = {
    "US" : dword_be(0x0064c8c4),
    "EU" : dword_be(0x0061f08c)
}

function current_hp(ver) {
    pointer = stat_pointer_value[ver]
    rval = dword_be(pointer+0x24)&const_pmask
    return word_be(rval+0x30)
}

function max_hp(ver) {
    pointer = stat_pointer_value[ver]
    rval = dword_be(pointer+0x28)&const_pmask
    rval = dword_be(rval+0x8c)&const_pmask
    return word_be(rval+0xe0)
}

function current_stamina(ver) {
    pointer = stat_pointer_value[ver]
    rval = dword_be(pointer+0x28)&const_pmask
    rval = dword_be(rval+0x8c)&const_pmask
    return word_be(rval+0xe6)
}

function current_magick(ver) {
    pointer = stat_pointer_value[ver]
    rval = dword_be(pointer+0x28)&const_pmask
    rval = dword_be(rval+0x8c)&const_pmask
    return word_be(rval+0xe4)
}

function current_sanity(ver) {
    pointer = stat_pointer_value[ver]
    rval = dword_be(pointer+0x28)&const_pmask
    rval = dword_be(rval+0x8c)&const_pmask
    return word_be(rval+0xe2)
}

cheat = {
    "jump" : {
        "US" : byte(0x00301cdc),
        "EU" : byte(0x00308a84)
    },
    "eternal" : {
        "US" : bit5(0x00725e26),
        "EU" : bit5(0x00704be6)
    }
}

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

progression_ach = {
    1 : {
        "id" : 409870,
        "title" : "The Chosen One",
        "desc" : "Complete Chapter 1",
        "character" : 0x01,
        "sub_character" : 0x00,
        "points" : 5,
        "type" : "progression",
        "author" : true,
    },
    3 : {
        "id" : 411989,
        "title" : "Suspicions of Conspiracy",
        "desc" : "Complete Chapter 3",
        "character" : 0x03,
        "sub_character" : 0x00,
        "points" : 5,
        "type" : "progression",
        "author" : true,
    },
    5 : {
        "id" : 411990,
        "title" : "The Lurking Horror",
        "desc" : "Complete Chapter 5",
        "character" : 0x05,
        "sub_character" : 0x00,
        "points" : 5,
        "type" : "progression",
        "author" : true,
    },
    7 : {
        "id" : 411991,
        "title" : "Heresy!",
        "desc" : "Complete Chapter 7",
        "character" : 0x07,
        "sub_character" : 0x00,
        "points" : 10,
        "type" : "progression",
        "author" : true,
    },
    9 : {
        "id" : 411992,
        "title" : "A War to End All Wars",
        "desc" : "Complete Chapter 9",
        "character" : 0x0a, // Chapter 9=0x0a, Chapter 10=0x09 ??
        "sub_character" : 0x00,
        "points" : 10,
        "type" : "progression",
        "author" : true,
    },
    11 : {
        "id" : 411993,
        "title" : "Ashes to Ashes",
        "desc" : "Complete Chapter 11",
        "character" : 0x0b,
        "sub_character" : 0x00,
        "points" : 10,
        "type" : "progression",
        "author" : true,
    }
}

for prog in progression_ach {
    stub = progression_ach[prog]
    if( stub["author"] ){
        triggers = []
        for ver_num in versions {
            ver = versions[ver_num]
            trig = version_id == ver_num && 
                cheat["eternal"][ver] == 0  &&
                new_game_mode(ver) &&
                prev(character_id[ver]) == stub["character"] &&
                character_id[ver] == 0 &&
                prev(second_character_id[ver]) == stub["sub_character"] &&
                second_character_id[ver] == stub["character"]
            array_push(triggers,trig)
        }
        achievement(
            id=stub["id"],
            title=stub["title"],
            description=stub["desc"],
            points=stub["points"],
            type=stub["type"],
            trigger=any_of(triggers,t=>t)
        )
    }
}

// ----------------------------------------------------------------------------
// -- Game Win
// ----------------------------------------------------------------------------

win_ach = {
    1 : {
        "id" : 0,
        "title" : "The Mighty Chattur'gha",
        "desc" : "Complete the game under the Chattur'gha alignment",
        "artifact_id" : 0x01,
        "points" : 25,
        "type" : "win_condition",
        "author" : false, // Wil
    },
    2 : {
        "id" : 411994,
        "title" : "The Boundless Ulyaoth",
        "desc" : "Complete the game under the Ulyaoth alignment",
        "artifact_id" : 0x02,
        "points" : 25,
        "type" : "win_condition",
        "author" : true,
    },
    3 : {
        "id" : 0,
        "title" : "The Madness of Xel'lotath",
        "desc" : "Complete the game under the Xel'lotath alignment",
        "artifact_id" : 0x03,
        "points" : 25,
        "type" : "win_condition",
        "author" : false, // Wil
    }
}

for win in win_ach {
    stub = win_ach[win]
    if( stub["author"] ){
        triggers = []
        for ver_num in versions {
            ver = versions[ver_num]
            trig = version_id == ver_num && 
                cheat["eternal"][ver] == 0  &&
                new_game_mode(ver) &&
                artifact_id[ver] == stub["artifact_id"] &&
                prev(location_id[ver]) == 0x40 &&
                prev(overlay_id[ver]) == 0x06 &&
                overlay_id[ver] == 0x02 
            array_push(triggers,trig)
        }
        achievement(
            id=stub["id"],
            title=stub["title"],
            description=stub["desc"],
            points=stub["points"],
            type=stub["type"],
            trigger=any_of(triggers,t=>t)
        )
    }
}

triggers_winall = []
for ver_num in versions {
    ver = versions[ver_num]
    trig = version_id == ver_num && 
        cheat["eternal"][ver] == 0  &&
        new_game_mode(ver) &&
        prev(location_id[ver]) == 0x40 &&
        location_id[ver] == 0x0137
    array_push(triggers_winall,trig)
}
achievement(
    id=411995,
    title="Hello, Darkness, My Old Friend",
    description="Defeat Pious with each of the alignments on the same file and view the secret epilogue",
    points=25,
    type="",
    trigger=any_of(triggers_winall,t=>t)
)


// ----------------------------------------------------------------------------
// -- Overlay Sanity Effects A -- Uses Menu Overlay
// ----------------------------------------------------------------------------

se_overlay_a = {
    0x00 : {
        "id" : 409867,
        "title" : "Plug & Pray",
        "desc" : "Witness the Blue Screen of Death",
        "effect_id" : 0x0a,
        "points" : 1,
        "author" : true
    },
    0x01 : {
        "id" : 409868,
        "title" : "Tripping Over Cables",
        "desc" : "Your video signal is as weak as your sanity",
        "effect_id" : 0x08,
        "points" : 1,
        "author" : true
    },
    0x02 : {
        "id" : 409869,
        "title" : "Sanity's Redemption",
        "desc" : "Congratulations! You have completed the demo of the game!",
        "effect_id" : 0x0b,
        "points" : 1,
        "author" : true
    },
    0x03 : {
        "id" : 409871,
        "title" : "Who's Been Messing with My Computer?",
        "desc" : "Witness the Pious Augustus screensaver",
        "effect_id" : 0x0c,
        "points" : 1,
        "author" : true
    }
}

for se in se_overlay_a {
    stub = se_overlay_a[se]
    if( stub["author"] ){
        triggers = []
        for ver_num in versions {
            ver = versions[ver_num]
            trig = version_id == ver_num && 
                cheat["eternal"][ver] == 0  &&
                new_game_mode(ver) &&
                location_id[ver] != const_location_none &&
                prev(overlay_id[ver]) == stub["effect_id"] &&
                overlay_id[ver] == 0x02
            array_push(triggers,trig)
        }
        achievement(
            id=stub["id"],
            title=stub["title"],
            description=stub["desc"],
            points=stub["points"],
            type="",
            trigger=any_of(triggers,t=>t)
        )
    }
}

// ----------------------------------------------------------------------------
// -- Overlay Sanity Effects B -- Uses Pointer Overlay
// ----------------------------------------------------------------------------

se_overlay_b = {
    0x00 : {
        "id" : 409872,
        "title" : "Butt Dialled",
        "desc" : "Did you sit on the TV remote?",
        "effect_id" : {
            "US" : 0x800aeff4,
            "EU" : 0x800ac664
        },
        "points" : 1,
        "author" : true
    },
    0x01 : {
        "id" : 409873,
        "title" : "The Silence is Deafening",
        "desc" : "Sound gone, sanity gone",
        "effect_id" : {
            "US" : 0x800aec84,
            "EU" : 0x800ac2f4
        },
        "points" : 1,
        "author" : true
    },
    0x02 : {
        "id" : 409874,
        "title" : "Lights Out",
        "desc" : "Is it a power cut or is someone else in control?",
        "effect_id" : {
            "US" : 0x8009fd08,
            "EU" : 0x8009cec0
        },
        "points" : 1,
        "author" : true
    }
}

for se in se_overlay_b {
    stub = se_overlay_b[se]
    if( stub["author"] ){
        triggers = []
        for ver_num in versions {
            ver = versions[ver_num]
            trig = version_id == ver_num && 
                cheat["eternal"][ver] == 0  &&
                new_game_mode(ver) &&
                location_id[ver] != const_location_none &&
                prev(sanity_effect_overlay_id_b[ver]) == stub["effect_id"][ver] &&
                sanity_effect_overlay_id_b[ver] == 0x00
            array_push(triggers,trig)
        }
        achievement(
            id=stub["id"],
            title=stub["title"],
            description=stub["desc"],
            points=stub["points"],
            type="",
            trigger=any_of(triggers,t=>t)
        )
    }
}

bug_image_use = {
    "EU" : word_be(0x0125d070),
    "US" : word_be(0x012403f0)
}

trigger_bugs = []
for ver_num in versions {
    ver = versions[ver_num]
    trig = version_id == ver_num && 
        cheat["eternal"][ver] == 0  &&
        new_game_mode(ver) &&
        location_id[ver] != const_location_none &&
        prev(bug_image_use[ver]) == 0x02 &&
        bug_image_use[ver] == 0x00
    array_push(trigger_bugs,trig)
}
achievement(
    id=426424,
    title="Tech Support!",
    description="Experience a game-breaking \"bug\"",
    points=1,
    type="",
    trigger=any_of(trigger_bugs,t=>t)
)

// ----------------------------------------------------------------------------
// -- Flag Sanity Effects
// ----------------------------------------------------------------------------

se_flags = {
    0 : {
        "id" : 415199,
        "title" : "The Call is Coming From Inside the House!",
        "desc" : "Playing as Alex, answer the phone..",
        "points" : 1,
        "location" : 0x45,
        "flag" : {
            "EU" : bit7(event_flags["se_phone_intermission"]["EU"]),
            "US" : bit7(event_flags["se_phone_intermission"]["US"])
        },
        "delta_high" : false,
        "author" : true
    },
    2 : {
        "id" : 415200,
        "title" : "Don't Leave Me Hanging",
        "desc" : "Playing as Alex, find a dude just hanging around",
        "points" : 1,
        "location" : 0x51,
        "flag" : {
            "EU" : bit1(event_flags["se_hanging_guy"]["EU"]),
            "US" : bit1(event_flags["se_hanging_guy"]["US"])
        },
        "delta_high" : true,
        "author" : true
    },
    3 : {
        "id" : 426463,
        "title" : "What Lies Beneath",
        "desc" : "Playing as Alex, find a body in the bathtub",
        "points" : 1,
        "location" : 0x57,
        "flag" : {
            "EU" : bit7(event_flags["se_bathtub_girl"]["EU"]),
            "US" : bit7(event_flags["se_bathtub_girl"]["US"])
        },
        "delta_high" : false,
        "author" : true
    },
    4 : {
        "id" : 426465,
        "title" : "I'm Half the Person I Once Was",
        "desc" : "Use the healing spell and suffer the consequences",
        "points" : 1,
        "location" : 0x00,
        "flag" : {
            "EU" : bit2(event_flags["se_torso_explode"]["EU"]),
            "US" : bit2(event_flags["se_torso_explode"]["US"])
        },
        "delta_high" : true,
        "author" : true
    },
    5 : {
        "id" : 429852,
        "title" : "Tomb Raider",
        "desc" : "Playing as Ellia, repair your broken short sword",
        "points" : 1,
        "location" : 0xa9,
        "flag" : {
            "EU" : bit0(event_flags["short_sword"]["EU"]),
            "US" : bit0(event_flags["short_sword"]["US"])
        },
        "delta_high" : false,
        "author" : true
    },
    99 : {
        "id" : 0,
        "title" : "",
        "desc" : "",
        "points" : 0,
        "location" : 0,
        "flag" : {
            "EU" : bit0(0),
            "US" : bit0(0)
        },
        "author" : false
    }
}

for se in se_flags {
    stub = se_flags[se]
    if( stub["author"] ){
        triggers = []
        for ver_num in versions {
            ver = versions[ver_num]
            trig = version_id == ver_num && 
                cheat["eternal"][ver] == 0  &&
                new_game_mode(ver)
            if(stub["location"] > 0) trig = trig && location_id[ver] == stub["location"]
            if(stub["delta_high"]) trig = trig && prev(stub["flag"][ver]) > stub["flag"][ver] 
            else trig = trig && prev(stub["flag"][ver]) < stub["flag"][ver]
            array_push(triggers,trig)
        }
        achievement(
            id=stub["id"],
            title=stub["title"],
            description=stub["desc"],
            points=stub["points"],
            type="",
            trigger=any_of(triggers,t=>t)
        )
    }
}

// Adjusted timing for Event based achievements

knock_triggers = []
for ver_num in versions {
    ver = versions[ver_num]
    knock_flags = {
        0 : bit1(event_flags["se_sounds_b"][ver]),
        1 : bit7(event_flags["se_sounds_a"][ver]),
        2 : bit7(event_flags["se_sounds_c"][ver]),
        3 : bit0(event_flags["se_sounds_d"][ver]),
        4 : bit2(event_flags["se_sounds_b"][ver])
    }
    trig =  version_id == ver_num &&
        cheat["eternal"][ver] == 0  &&
        new_game_mode(ver) &&
        second_character_id[ver] == characters["anthony"]["id"] &&
        sum_of(knock_flags, s => knock_flags[s]) == 5 &&
        prev(location_id[ver]) == 0x4e &&
        location_id[ver] == 0x47
    array_push(knock_triggers,trig)
}
achievement(
    id=428438,
    title="Here I Opened Wide the Door. Darkness There and Nothing More",
    description="Playing as Alex at the end of chapter 3, follow the sounds from the study to the observatory and back again",
    points=1,
    type="missable",
    trigger=any_of(knock_triggers,t=>t)
)

// ----------------------------------------------------------------------------
// -- Special Locations
// ----------------------------------------------------------------------------

sl_flags = {
    0 : {
        "id" : 415201,
        "title" : "Not the Greatest Roof, But It's Up There",
        "desc" : "Playing as Maximilian, walk around on the ceiling",
        "points" : 1,
        "location" : 0x04e7,
        "author" : true
    },
    99 : {
        "id" : 0,
        "title" : "",
        "desc" : "",
        "points" : 0,
        "location" : 0,
        "author" : false
    }
}

for sl in sl_flags {
    stub = sl_flags[sl]
    if( stub["author"] ){
        triggers = []
        for ver_num in versions {
            ver = versions[ver_num]
            trig = version_id == ver_num && 
                cheat["eternal"][ver] == 0  &&
                new_game_mode(ver) &&
                prev(location_id[ver]) == stub["location"] &&
                location_id[ver] != stub["location"] &&
                location_id[ver] != const_location_none
            array_push(triggers,trig)
        }
        achievement(
            id=stub["id"],
            title=stub["title"],
            description=stub["desc"],
            points=stub["points"],
            type="",
            trigger=any_of(triggers,t=>t)
        )
    }
}

// ----------------------------------------------------------------------------
// -- Idle Animation
// ----------------------------------------------------------------------------

idle_flag = {
    "EU" : byte(0x0131d37e),
    "US" : byte(0x01316e9e)
}

trig_idle = []
for ver_num in versions {
    ver = versions[ver_num]
    trig = version_id == ver_num && 
        cheat["eternal"][ver] == 0  &&
        new_game_mode(ver) &&
        character_id[ver] == characters["anthony"]["id"] &&
        bit0(event_flags["anthony_zombie"][ver]) == 1 &&
        weapon_id[ver] != 0x44 &&
        weapon_id[ver] != 0x00 &&
        prev(idle_flag[ver]) == 1 &&
        idle_flag[ver] == 0
    array_push(trig_idle,trig)
}
achievement(
    id=429458,
    title="A Slice of Life",
    description="Witness Anthony practice self-mutilation",
    points=1,
    type="",
    trigger=any_of(trig_idle,t=>t)
)

// ----------------------------------------------------------------------------
// -- Collection Achievements
// ----------------------------------------------------------------------------

CONST_COL_EU_OFFSET = 0x13408

function col_flag( addr ){
    return bit6((dword_be(addr) & const_pmask)+2)
}

collection_achs = {
    "max_letters" : {
        "id" : 423060,
        "title" : "Aaron On the Side of Caution",
        "desc" : "As Maximillian Rovias, find and read all four letters from Aaron Roivas",
        "points" : 5,
        "character" : 0x05,
        "type" : "missable",
        "flags" : { 
            "EU" : {
                0: 0x0103c4f8,
                1: 0x0103c510,
                2: 0x0103c528,
                3: 0x0103c7f0
            },
            "US" : {
                0: 0x010290f0,
                1: 0x01029108,
                2: 0x01029120,
                3: 0x010293e8
            },
         }
    },
    "soldier_letters" : {
        "id" : 424993,
        "title" : "Dear John..",
        "desc" : "As Peter Jacob, find and read all three Soldier's letters",
        "points" : 5,
        "character" : 0x0a,
        "type" : "missable",
        "flags" : { 
            "EU" : {
                0: 0x0103c5b8,
                1: 0x0103c5d0,
                2: 0x0103c5e8
            },
            "US" : {
                0: 0x010291b0,
                1: 0x010291c8,
                2: 0x010291e0
            },
         }
    },
    "elephant_gun" : {
        "id" : 424994,
        "title" : "Thought I Kept This in the Trunk",
        "desc" : "As Edward Roivas, defeat the vampire and obtain the Elephant Gun",
        "points" : 5,
        "character" : 0x09,
        "type" : "missable",
        "flags" : { 
            "EU" : {
                0: 0x0103b830
                },
            "US" : {
                0: 0x01028348
            },
         }
    },
    "max_journal" : {
        "id" : 425074,
        "title" : "Goodbye, Reality",
        "desc" : "As Alex Rovias, find and read all three letters of Maximillian Rovias' journal",
        "points" : 5,
        "character" : 0x00,
        "type" : "missable",
        "flags" : { 
            "EU" : {
                0: 0x0103c6d8,
                1: 0x0103c6f0,
                2: 0x0103c7d8
                },
            "US" : {
                0: 0x010292d0,
                1: 0x010292e8,
                2: 0x010293d0
            },
         }
    }
}

for colach in collection_achs {
    // Meta Data
    base = collection_achs[colach]
    // Triggers
    triggers=[]
    for ver_num in versions {
        ver = versions[ver_num]
        total_collect = length(base["flags"][ver])
        closing_cond = always_false()
        if (total_collect > 1){
            closing_cond = measured(
            sum_of(base["flags"][ver], addr => col_flag(base["flags"][ver][addr])) == total_collect,
            when=version_id== ver_num && character_id[ver] == base["character"]
        )
        } else {
            closing_cond = sum_of(base["flags"][ver], addr => col_flag(base["flags"][ver][addr])) == total_collect &&
            version_id == ver_num &&
            character_id[ver] == base["character"]
        }
        trig = // Measured If
            cheat["eternal"][ver] == 0 &&
            new_game_mode(ver) &&
            sum_of(base["flags"][ver], addr => prev(col_flag(base["flags"][ver][addr]))) == total_collect-1 &&
            closing_cond
        array_push(triggers,trig)
    }
    // Achievement
    achievement(
        id=base["id"],
        title=base["title"],
        description=base["desc"],
        points=base["points"],
        type=base["type"],
        trigger=any_of(triggers, t=>t)
    )
}

// ----------------------------------------------------------------------------
// -- Autopsy Achievements
// ----------------------------------------------------------------------------

autopsy_flag_base = {
    "US" : 0x0061f496,
    "EU" : 0x0064ccf6
} 

ach_autopsy = {
    0 : {
        "id" : 428444,
       "title" : "You Red My Mind",
       "desc" : "As Maximillian Roivas, perform autopies on the Chattur'gha Zombie, Bonethief, Horror, and Guardian",
       "flags" : {
           "EU" : {
               0 : bit0(autopsy_flag_base["EU"]),
               1 : bit3(autopsy_flag_base["EU"]),
               2 : bit1(autopsy_flag_base["EU"]+1),
               3 : bit5(autopsy_flag_base["EU"]+1)
           },
           "US" : {
               0 : bit0(autopsy_flag_base["US"]),
               1 : bit3(autopsy_flag_base["US"]),
               2 : bit1(autopsy_flag_base["US"]+1),
               3 : bit5(autopsy_flag_base["US"]+1)
           }
       },
       "points" : 5,
       "type" : "missable"
    },
    1 : {
        "id" : 428445,
       "title" : "Green Piece",
       "desc" : "As Maximillian Roivas, perform autopies on the Xel'lotath Zombie, Bonethief, Horror, and Guardian",
       "flags" : {
           "EU" : {
               0 : bit1(autopsy_flag_base["EU"]),
               1 : bit4(autopsy_flag_base["EU"]),
               2 : bit2(autopsy_flag_base["EU"]+1),
               3 : bit6(autopsy_flag_base["EU"]+1)
           },
           "US" : {
               0 : bit1(autopsy_flag_base["US"]),
               1 : bit4(autopsy_flag_base["US"]),
               2 : bit2(autopsy_flag_base["US"]+1),
               3 : bit6(autopsy_flag_base["US"]+1)
           }
       },
       "points" : 5,
       "type" : "missable"
    },
    2 : {
        "id" : 428446,
       "title" : "I'm Blue, if I Was Green I Would Die",
       "desc" : "As Maximillian Roivas, perform autopies on the Ulyaoth Zombie, Bonethief, Horror, and Guardian",
       "flags" : {
           "EU" : {
               0 : bit2(autopsy_flag_base["EU"]),
               1 : bit5(autopsy_flag_base["EU"]),
               2 : bit3(autopsy_flag_base["EU"]+1),
               3 : bit7(autopsy_flag_base["EU"]+1)
           },
           "US" : {
               0 : bit2(autopsy_flag_base["US"]),
               1 : bit5(autopsy_flag_base["US"]),
               2 : bit3(autopsy_flag_base["US"]+1),
               3 : bit7(autopsy_flag_base["US"]+1)
           }
       },
       "points" : 5,
       "type" : "missable"
    }
}

for auto_ach in ach_autopsy {
    base = ach_autopsy[auto_ach]
    // Triggers
    triggers=[]
    for ver_num in versions {
        ver = versions[ver_num]
        trig = version_id == ver_num && 
            cheat["eternal"][ver] == 0 &&
            new_game_mode(ver) &&
            sum_of(base["flags"][ver], s=> prev(base["flags"][ver][s])) == 3 &&
            sum_of(base["flags"][ver], s=> base["flags"][ver][s]) == 4
        array_push(triggers,trig)
    }
    achievement(
        id=base["id"],
        title=base["title"],
        description=base["desc"],
        points=base["points"],
        type=base["type"],
        trigger=any_of(triggers, t=>t)
    )
}

// ----------------------------------------------------------------------------
// -- Damageless Room
// ----------------------------------------------------------------------------

dl_room = {
    0x00 : {
        "id" : 410009,
        "title" : "Oh, My Darkness!",
        "desc" : "Defeat Pious Augustus without taking damage",
        "points" : 10,
        "room" : 0x0040,
    }    
}

for dl in dl_room {
    stub = dl_room[dl]
    triggers = []
    for ver_num in versions {
        ver = versions[ver_num]
        trig = version_id == ver_num && 
            cheat["eternal"][ver] == 0  &&
            new_game_mode(ver) &&
            once(
                location_id[ver] == stub["room"] &&
                prev(overlay_id[ver]) == 1 &&
                overlay_id[ver] == 2 &&
                never(
                    location_id[ver] == const_location_none ||
                    (
                        pious_battle_spirit[ver] == 0x01 &&
                        prev(stat_pointer[ver]) == stat_pointer[ver] &&
                        prev(current_hp(ver)) > current_hp(ver)
                    )
                )
            ) &&
            trigger_when(
                prev(overlay_id[ver]) == 2 &&
                overlay_id[ver] == 4
            )
        array_push(triggers,trig)
    }
    achievement(
        id=stub["id"],
        title=stub["title"],
        description=stub["desc"],
        points=stub["points"],
        type="",
        trigger=any_of(triggers,t=>t)
    )
}

// ----------------------------------------------------------------------------
// -- All I Wanna Do is Go the Distance
// ----------------------------------------------------------------------------

sword_flag = {
    "EU" : bit5(0x00704c18),
    "US" : bit5(0x00725e58)
}

stage_win = {
    "EU" : bit3(0x00704c67),
    "US" : bit3(0x00725ea7) 
}

trig_sword=[]
for ver_num in versions {
    ver = versions[ver_num]
    trig =
        cheat["eternal"][ver] == 0 &&
        new_game_mode(ver) &&
        sword_flag[ver] == 0 &&
        // character_id[ver] == characters["anthony"]["id"] &&
        once(
            prev(location_id[ver]) == 0x75 &&
            location_id[ver] == 0x68 &&
            never(
                version_id != ver_num ||
                weapon_id[ver] != 0
            )
        ) &&
        trigger_when(
            stage_win[ver] > prev(stage_win[ver])
        )
    array_push(trig_sword,trig)
}
achievement(
    id=429853,
    title="All I Wanna Do is Go the Distance",
    description="Do not collect the Two-Handed Sword in Anthony's chapter. In Paul's chapter, defeat the Monk using only your fists",
    points=10,
    type="missable",
    trigger=any_of(trig_sword, t=>t)
)

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🌑"
emoji_heart = "❤️"
emoji_wand = "🪄"
emoji_sanity_gone = "🫨"
emoji_sanity_bad = "😵‍💫"
emoji_sanity_ok = "😐"
emoji_sane = "🙂"

rp_sanity = {}
for num in range(0,24) {
    rp_sanity[num] = emoji_sanity_gone
}
for num in range(25,49) {
    rp_sanity[num] = emoji_sanity_bad
}
for num in range(50,75) {
    rp_sanity[num] = emoji_sanity_ok
}

emoji_artifact = {
    0x01 : "🔴",
    0x02 : "🔵",
    0x03 : "🟢"
}

rp_characters = {}
rp_locations = {}
for c in characters {
    rp_characters[characters[c]["id"]] = characters[c]["short"]
    rp_locations[characters[c]["id"]] = characters[c]["location"]
}

rp_areas = {}
for l in areas {
    rp_areas[l] = " (" + areas[l] + ")"
}

for version_value in versions {
    version = versions[version_value]
    rich_presence_conditional_display(version_id == version_value && location_id[version] != const_location_none && stat_pointer[version] != 0,"{0} {1} ‣ {2}{3} ‣ {4}{5}/{6} {7}{8} {9}",
        rich_presence_lookup("artifact",artifact_id[version],emoji_artifact,fallback=emoji),
        rich_presence_lookup("character",character_id[version],rp_characters,fallback="Nobody"),
        rich_presence_lookup("location",character_id[version],rp_locations,fallback="Nowhere"),
        rich_presence_lookup("area",location_id[version],rp_areas,fallback=""),
        emoji_heart,
        rich_presence_macro("Number",current_hp(version)),
        rich_presence_macro("Number",max_hp(version)),
        emoji_wand,
        rich_presence_macro("Number",current_magick(version)),
        rich_presence_lookup("sanity",current_sanity(version),rp_sanity,fallback=emoji_sane)
    )
}

rich_presence_display("{0} Entering the Darkness", emoji)

// ----------------------------------------------------------------------------
// -- Test Achievements
// ----------------------------------------------------------------------------

create_test_achievements = true

if (create_test_achievements) {

    for version_value in versions {
        ver = versions[version_value]
        achievement(
            id=0,
            title="[TEST] HP Pointer " + ver,
            description="Test achievement, do not upload",
            points=0,
            trigger=current_hp(ver) == 0
        )
        achievement(
            id=0,
            title="[TEST] Magick Pointer " + ver,
            description="Test achievement, do not upload",
            points=0,
            trigger=current_magick(ver) == 0
        )
        achievement(
            id=0,
            title="[TEST] Sanity Pointer " + ver,
            description="Test achievement, do not upload",
            points=0,
            trigger=current_sanity(ver) == 0
        )
        achievement(
            id=0,
            title="[TEST] Max HP " + ver,
            description="Test achievement, do not upload",
            points=0,
            trigger=max_hp(ver) == 0
        )
    }

}