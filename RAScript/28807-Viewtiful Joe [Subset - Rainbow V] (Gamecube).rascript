// Viewtiful Joe [Subset - Rainbow V]
// #ID = 28807

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

characters = {
    "Joe" : 0x00,
    "Silvia" : 0x06,
    "Blue" : 0x07,
    "Alastor" : 0x08
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

pmask = 0x1ffffff // Pointer Masking
difficulty = byte(0x0026ee11)
stage_combo = word_be(0x0026edf8)
episode_number = byte(0x0026ee7a)
stage_number = byte(0x0026ee7b)
character = byte(0x0026ee7d)
lives = byte(0x26ee12)

stage_base_address = 0x0026f450
stage_base_addresses = []
for i in range(0,6) array_push(stage_base_addresses,stage_base_address+i)

rainbow_base_address = 0x0026f478
rainbow_base_addresses = []
for i in range(0,6) array_push(rainbow_base_addresses,rainbow_base_address+i)

battles_clear = byte(0x0026f51c)
rainbow_v_stage_count = bitcount(0x0026f518) + bitcount(0x0026f519)

// ----------------------------------------------------------------------------
// -- Achievements
// ----------------------------------------------------------------------------

for char in characters {
    for episode in range(0,6) {
        stage_address = stage_base_addresses[episode] + (difficulty*10)
        rainbow_address = rainbow_base_addresses[episode] + (difficulty*10)
        achievement(
            id=0,
            title="Rainbow " + char + ": Episode " + (episode+1),
            description="Playing as " + char + ", achieve an overall rating of Rainbow V in Episode " + (episode+1) + " on Adult difficulty or higher",
            points=10,
            trigger=
                stage_combo != 0xFFFF &&
                difficulty > 0 &&
                prev(byte(stage_address)) == 0x05 &&
                byte(stage_address) == 0 &&
                byte(rainbow_address) > 0 &&
                character == characters[char]
        )
    }
}

for char in characters {
    stage_address = stage_base_addresses[6] + (difficulty*10)
    rainbow_address = rainbow_base_addresses[6] + (difficulty*10)
    achievement(
        id=0,
        title="Pot of Gold: " + char,
        description="Playing as " + char + ", achieve an overall rating of Rainbow V in every Episode on Adult difficulty or higher",
        points=50,
        trigger=
            never(
                stage_combo != 0xFFFF ||
                difficulty > 0 ||
                byte(stage_address) != 0x00
            ) &&
            byte(stage_address) == 0 &&
            sum_of(stage_base_addresses,s=>byte(s+ (difficulty*10))) == 0 &&
            tally_of(rainbow_base_addresses,7,s=>once(byte(s+(difficulty*10)) > 0)) &&
            character == characters[char]
    )
}

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

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
emoji_rainbow = "🌈"

rich_presence_conditional_display(stage_combo == 0xFFFF,
    "{0} Getting Ready to Play",
    emoji
)

rich_presence_conditional_display(stage_combo >= 0x0800,
    "{0}x{3} {4} ‣ Episode {1}, stage {2} ‣ Taking a well earned break",
    rich_presence_lookup("character",character,emoji_character,fallback="?"),
    rich_presence_macro("Number",episode_number+1),
    rich_presence_macro("Number",stage_number+1),
    rich_presence_macro("Number",lives),
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?")
)

rich_presence_display("{0}x{3} {6} ‣ Episode {1}, Stage {2} ‣ {4}{5}/{7}",
    rich_presence_lookup("character",character,emoji_character,fallback="?"),
    rich_presence_macro("Number",episode_number+1),
    rich_presence_macro("Number",stage_number+1),
    rich_presence_macro("Number",lives),
    emoji_rainbow,
    rich_presence_macro("Number",rainbow_v_stage_count),
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?"),
    rich_presence_macro("Number",battles_clear)
)

// ----------------------------------------------------------------------------
// -- Dummy Achievements
// ----------------------------------------------------------------------------

achievement(
    title="[VOID] Boss HP",
    description="Boss HP Pointer",
    points=0,
    trigger=word_be( (dword_be(0x002c7228) & pmask) + 0x00000fac) == 0x00
)