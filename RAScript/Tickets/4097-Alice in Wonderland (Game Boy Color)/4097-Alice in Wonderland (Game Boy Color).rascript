// Alice in Wonderland
// #ID = 4097

// Guide: https://www.deadpark.com/articles/alice-in-wonderland-gbc/

health = byte(0x00C0BA)
level_id = byte(0x00C0BF)
levels = {
    "intro": 0x0d,
    "house_1": 0x00,
    "house_2": 0x01,
    "house_3": 0x03,
    
    "mad_hatter_boss": 0x02,
    "clock_boss": 0x0a,
    "bottle_river": 0x0a,
    
    "white_rabbit_house_1": 0x06,
    "white_rabbit_house_2": 0x07,
    
    "boss_tweedle": 0x10
}

falling_damage_taken = byte(0x00c0c3)

screen_id = word(0x00c167)
screens = {
    "ready": 0x551F,
    "falling_down": 0x5148,
    "beach": 0x4B74,
    "mad_hatter_party": 0x4000,
    "tweedle_maze": 0x6B39
}

items = {
    "rabbit_key":       bit0(0x00C0AB), // screens["beach"]
    "dee_hats":         bit1(0x00C0AB), // screens["beach"]
    "cond_wand":        bit2(0x00C0AB), // screens["tweedle_maze"]
    "hammer":           bit3(0x00C0AB), // 
    "compass":          bit4(0x00C0AB), // screens["beach"]
    "handkercheif":     bit5(0x00C0AB), // screens["mad_hatter_party"]
    "cookie_hammer":    bit6(0x00C0AB), // 
    "walrus_cane":      bit7(0x00C0AB)  // level_id == levels["white_rabbit_house_1"]
}

locked_suits = {
    "heart":    bit1(0x00C0AA),
    "club":     bit4(0x00C0AA),
    "diamond":  bit0(0x00C0AA),
    "spade":    bit3(0x00C0AA)
}

hits_dee = byte(0x00c2ca)
hits_dum = byte(0x00c2de)

// -------------------------------------
// - Unresolved
// -------------------------------------

// -------------------------------------
// - Resolved
// -------------------------------------

// Ticket 61372: Active challenge icon remains even when you fail the challenge of the achievement and triggers randomly at certain points in the game afterwards.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0

// Ticket 60342: Achievement triggered while trying to troubleshoot the others by just going to enter an earlier stage.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RALibRetro (Gambatte)
//              Emulator Version: 1.5
achievement(
    title = "I'm Freeeeee.... Free Faaling [m]", points = 10,
    description = "Don’t lose any health while falling down the hole.",
    id = 240782, badge = "267431", published = "16/08/2022 12:01:15", modified = "23/12/2022 21:32:32",
    trigger = 
        once(
            falling_damage_taken == 0 &&
            screen_id == screens["falling_down"]
        ) &&
        never(
            prev(screen_id) != screens["falling_down"] ||
            falling_damage_taken > 0
        ) &&
        trigger_when(
            prev(screen_id) == screens["falling_down"] &&
            screen_id == screens["ready"]
        )
)

// Ticket 61374: Did what the game specified of giving the cane to the NPC that needed it who then gave me the compass, but the achievement didn't trigger.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0
achievement(
    title = "Now I Know Where North Is", points = 1,
    description = "Get a Compass.",
    id = 253760, badge = "294615", published = "01/10/2022 12:02:45", modified = "01/01/2023 22:10:12",
    trigger =
        prev(items["compass"]) == 0x00 &&
        items["compass"] == 0x01 &&
        screen_id == screens["beach"]
)

// Ticket 61401: Achievement did not trigger when I got the item.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0
achievement(
    title = "Cutest Key I Ever Saw", points = 1,
    description = "Get Rabbit Key.",
    id = 268917, badge = "297628", published = "23/11/2022 13:19:17", modified = "01/01/2023 22:10:14",
    trigger =
        prev(items["rabbit_key"]) == 0x00 &&
        items["rabbit_key"] == 0x01 &&
        screen_id == screens["beach"]
)

// Ticket 61400: Achievement did not trigger when I picked up the item.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0
achievement(
    title = "Achoo!", points = 1,
    description = "Get a Handkerchief.",
    id = 253991, badge = "294833", published = "02/10/2022 13:14:41", modified = "01/01/2023 22:10:13",
    trigger = 
        prev(items["handkercheif"]) == 0x00 &&
        items["handkercheif"] == 0x01 &&
        screen_id == screens["mad_hatter_party"]
)


// Ticket 61974: Traded the Handkerchief with Mr Dodo in return for the Tweedle hats and achievement didn't trigger
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RALibRetro (Gambatte v0.5.0)
//              Emulator Version: 1.6
achievement(
    title = "Double Dee's", points = 1,
    description = "Get Hats from Dumbledee and Dumbledum.",
    id = 253990, badge = "294834", published = "02/10/2022 13:13:31", modified = "01/01/2023 22:10:13",
    trigger = 
        prev(items["dee_hats"]) == 0x00 &&
        items["dee_hats"] == 0x01 &&
        screen_id == screens["beach"]
)

// Ticket 59366: Did not trigger when I picked it up.  Might be similar to the hammer where it depends on which direction it's picked up?
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Nintendo - Game Boy Advance (mGBA))
//              Emulator Version: 1.15.0
achievement(
    title = "Fantasia 2000", points = 1,
    description = "Get Conductor wand.",
    id = 266820, badge = "295110", published = "15/11/2022 08:41:46", modified = "01/01/2023 22:10:13",
    trigger =
        prev(items["cond_wand"]) == 0x00 &&
        items["cond_wand"] == 0x01 &&
        screen_id == screens["tweedle_maze"]
)

// Ticket 61402: Did the boss fight as the achievement asked, but it didn't trigger.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0
achievement(
    title = "Dumbledum and Dumber", points = 5,
    description = "Win boss fight against Dumble Dee and Dumbledum and Get Heart Suit.",
    id = 253992, badge = "295112", published = "02/10/2022 13:37:24", modified = "01/01/2023 22:10:14",
    trigger = 
        level_id == levels["boss_tweedle"] &&
        prev(locked_suits["heart"]) == 1 &&
        locked_suits["heart"] == 0
)

// Ticket 60474: I had to redo this battle damageless several times for it to trigger.  The achievement stays primed after beating the bosses and returns you to the overworld.  I was eventully able to get the achievement but it seems to be unstable.  I suspect that the boss HPs values might be inconsistent locations.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: 1.15.0
achievement(
    title = "Dumfrey & Deever Tweed [m]", points = 10,
    description = "Win boss fight against Dumble Dee and Dumbledum without getting damage.",
    id = 266291, badge = "295111", published = "14/11/2022 09:33:48", modified = "05/01/2023 09:19:57",
    trigger = 
        once(level_id == levels["boss_tweedle"] && hits_dee == 0 && hits_dum == 0 && health == 5) &&
        never(level_id != levels["boss_tweedle"] || health < prev(health) ) &&
        trigger_when(
            prev(locked_suits["heart"]) == 1 &&
            locked_suits["heart"] == 0
        )
)

// -------------------------------------
// - Closed
// -------------------------------------
