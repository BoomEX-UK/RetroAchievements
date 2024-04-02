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
    "r_manor" : {
        "name" : "Roivas Manour",
    },
    "persia" : {
        "name" : "Forgotten City",
    },
    "cambodia" : {
        "name" : "Angkor Thom",
    },
    "mantorok" : {
        "name" : "Mantorok",
    },
    "europe" : {
        "name" : "Amiens"
    }
}

characters = {
    "alex" : {
        "id" : 0x00,
        "short" : "Alex",
        "long" : "Alex Roivas",
        "era" : "2000 AD"
    },
    "pious" : {
        "id" : 0x01,
        "short" : "Pious",
        "long" : "Pious Augustus",
        "era" : "26 BC"
    },
    "ellia" : {
        "id" : 0x02,
        "short" : "Ellia",
        "long" : "Ellia",
        "era" : "1150 AD"
    },
    "anthony" : {
        "id" : 0x03,
        "short" : "Anthony",
        "long" : "Anthony",
        "era" : "814 AD"
    },
    "karim" : {
        "id" : 0x04,
        "short" : "Karim",
        "long" : "Karim",
        "era" : "565 AD"
    },
    "max" : {
        "id" : 0x05,
        "short" : "Dr Max",
        "long" : "Dr Maximillian Roivas",
        "era" : "1760 AD"
    },
    "edwin" : {
        "id" : 0x06,
        "short" : "Dr Edwin",
        "long" : "Dr Edwin Lindsey",
        "era" : "1983 AD"
    },
    "paul" : {
        "id" : 0x07,
        "short" : "Paul",
        "long" : "Paul Luther",
        "era" : "1485 AD"
    },
    "roberto" : {
        "id" : 0x08,
        "short" : "Roberto",
        "long" : "Roberto Binchi",
        "era" : "1460 AD"
    },
    "edward" : {
        "id" : 0x09,
        "short" : "Dr Edward",
        "long" : "Dr Edward M Roivas",
        "era" : "1952 AD"
    },
    "peter" : {
        "id" : 0x0a,
        "short" : "Peter",
        "long" : "Peter Jacob",
        "era" : "1916 AD"
    },
    "michael" : {
        "id" : 0x0b,
        "short" : "Michael",
        "long" : "Michael Edwards",
        "era" : "1991 AD"
    }   
}

areas = {
    0x43 : {
        "name" : "Master Bedroom",
        "location" : "r_manor"
    },
    0x44 : {
        "name" : "2nd Floor Hallway",
        "location" : "r_manor"
    },
    0x45 : {
        "name" : "Main Hall",
        "location" : "r_manor"
    },
    0x46 : {
        "name" : "Dining Room",
        "location" : "r_manor"
    },
    0x47 : {
        "name" : "Hidden Study",
        "location" : "r_manor"
    },
    0x48 : {
        "name" : "2nd Floor Gun Room",
        "location" : "r_manor"
    },
    0x4D : {
        "name" : "Library",
        "location" : "r_manor"
    },
    0x4E : {
        "name" : "Library (Grandfather Clock Room)",
        "location" : "r_manor"
    },
    0x51 : {
        "name" : "Drawing Room",
        "location" : "r_manor"
    },
    0x57 : {
        "name" : "Main Bathroom",
        "location" : "r_manor"
    },
    0x59 : {
        "name" : "Observatory",
        "location" : "r_manor"
    },
    0xae : {
        "name" : "Desert",
        "location" : "persia"
    },
    0x0155 : {
        "name" : "Entrance",
        "location" : "persia"
    },
    0x0156 : {
        "name" : "Entrance Hallway",
        "location" : "persia"
    },
    0x0157 : {
        "name" : "Tomb",
        "location" : "persia"
    },
    0x0158 : {
        "name" : "Tomb",
        "location" : "persia"
    },
    0x00b4 : {
        "name" : "Hallway",
        "location" : "persia"
    },
    0x00b7 : {
        "name" : "Four Sigil Room",
        "location" : "persia"
    },
    0x00b6 : {
        "name" : "Sword Training Room",
        "location" : "persia"
    },
    0x00b5 : {
        "name" : "Teleportation Room",
        "location" : "persia"
    },
    0x00b8 : {
        "name" : "Artifact Room",
        "location" : "persia"
    },
    0x00a6 : {
        "name" : "Tomb Entrance",
        "location" : "cambodia"
    },
    0x014e : {
        "name" : "Lair",
        "location" : "mantorok"
    },
    0x00d8 : {
        "name" : "Eastern Path",
        "location" : "cambodia"
    },
    0x008a : {
        "name" : "Western Path",
        "location" : "cambodia"
    },
    0x0127 : {
        "name" : "Trap Hallway West",
        "location" : "cambodia"
    },
    0x00d9 : {
        "name" : "Sun Room",
        "location" : "cambodia"
    },
    0x00ea : {
        "name" : "Trap Hallway East",
        "location" : "cambodia"
    },
    0x00da : {
        "name" : "Night Room",
        "location" : "cambodia"
    },
    0x00a5 : {
        "name" : "Trap Hallway North",
        "location" : "cambodia"
    },
    0x00a9 : {
        "name" : "Pit",
        "location" : "cambodia"
    },
    0x009f : {
        "name" : "Chamber Entrance",
        "location" : "cambodia"
    },
    0x0126 : {
        "name" : "Chamber Trap Hallway",
        "location" : "cambodia"
    },
    0x00a0 : {
        "name" : "Burning Chamber",
        "location" : "cambodia"
    },
    0x0091 : {
        "name" : "Mantarok",
        "location" : "cambodia"
    },
    0x0019 : {
        "name" : "High Preist Chamber",
        "location" : "cambodia"
    },
    0x0018 : {
        "name" : "France",
        "location" : "europe"
    },
    0x0096 : {
        "name" : "Cathedral",
        "location" : "europe"
    },
    0x0093 : {
        "name" : "Cathedral (2nd Floor)",
        "location" : "europe"
    },
    0x0015 : {
        "name" : "Cathedral Passage",
        "location" : "europe"
    },
    0x0069 : {
        "name" : "Study",
        "location" : "europe"
    },
    0x006d : {
        "name" : "Basement",
        "location" : "europe"
    },
    0x007b : {
        "name" : "Cathedral",
        "location" : "europe"
    },
    0x00dc : {
        "name" : "Vestry",
        "location" : "europe"
    },
    0x0005 : {
        "name" : "Tome Room",
        "location" : "europe"
    },
    0x006b : {
        "name" : "Bell Tower",
        "location" : "europe"
    },
    0x009e : {
        "name" : "Stairwell",
        "location" : "europe"
    },
    0x005d : {
        "name" : "Stargate",
        "location" : "r_manor"
    },
    0x0040 : {
        "name" : "High Preist",
        "location" : "mantorok"
    },
    0x010b : {
        "name" : "Big Rock",
        "location" : "mantorok"
    },
    0x0451 : {
        "name" : "ʎpnʇS",
        "location" : "europe"
        // Sanity - Chapter 7: cathedral  "Study Upsidedown"
    },
    0x04e7 : {
        "name" : "llɐH uᴉɐW",
        "location" : "r_manor"
        // Sanity - Chapter 7: cathedral  "Study Upsidedown"
    },
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
const_jump_no = 1
const_jump_yes = 0

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
                prev(cheat["jump"][ver]) == const_jump_no &&
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
                prev(cheat["jump"][ver]) == const_jump_no &&
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
        prev(cheat["jump"][ver]) == const_jump_no &&
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
                cheat["jump"][ver] == const_jump_no &&
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
                cheat["jump"][ver] == const_jump_no &&
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

// ----------------------------------------------------------------------------
// -- Flag Sanity Effects
// ----------------------------------------------------------------------------

se_flags = {
    0 : {
        "id" : 415199,
        "title" : "The Call is Coming From Inside the House!",
        "desc" : "Playing as Alex, answer the phone",
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
                location_id[ver] == stub["location"]
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
            cheat["jump"][ver] == const_jump_no &&
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
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🌑"
emoji_heart = "❤️"
emoji_wand = "🪄"
emoji_sanity = "🫨"

emoji_artifact = {
    0x01 : "🔴",
    0x02 : "🔵",
    0x03 : "🟢"
}

rp_areas = {}
for a in areas {
    rp_areas[a] = locations[areas[a]["location"]]["name"] + ": " + areas[a]["name"]
} 

rp_characters = {}
for c in characters {
    rp_characters[characters[c]["id"]] = characters[c]["short"]
}

for version_value in versions {
    version = versions[version_value]
    rich_presence_conditional_display(version_id == version_value && location_id[version] != const_location_none && stat_pointer[version] != 0,"{0} {9} ‣ {1} ‣ {2}{3}/{4} {5}{6} {7}{8}",
        rich_presence_lookup("artifact",artifact_id[version],emoji_artifact,fallback=emoji),
        rich_presence_lookup("area",location_id[version],rp_areas,fallback="Location Unknown"),
        emoji_heart,
        rich_presence_macro("Number",current_hp(version)),
        rich_presence_macro("Number",max_hp(version)),
        emoji_wand,
        rich_presence_macro("Number",current_magick(version)),
        emoji_sanity,
        rich_presence_macro("Number",current_sanity(version)),
        rich_presence_lookup("character",character_id[version],rp_characters,fallback="Character Unknown")
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