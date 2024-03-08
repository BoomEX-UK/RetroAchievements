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
        "name" : "Trap Hallway",
        "location" : "cambodia"
    },
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

version_id = byte(0x00000003)

location_id = {
    "US" : dword_be(0x0064d18c),
    "EU" : dword_be(0x0061f934)
}

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🌑"

rp_areas = {}
for a in areas {
    rp_areas[a] = locations[areas[a]["location"]]["name"] + ": " + areas[a]["name"]
} 

for version_value in versions {
    version = versions[version_value]
    rich_presence_conditional_display(version_id == version_value && location_id[version] != 0xFFFFFFFF,"{0} {1} ‣ ",
        emoji,
        rich_presence_lookup("rparea",location_id[version],rp_areas,fallback="Location Unknown")
    )
}

rich_presence_display("{0} Entering the Darkness", emoji)
