// Alice in Wonderland
// #ID = 4097

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
    trigger = (byte(0x00C0BA) == 0x04 || byte(0x00C0BA) == 0x05) && trigger_when(byte(0x00C0BF) < prev(byte(0x00C0BF)))
)

// Ticket 61374: Did what the game specified of giving the cane to the NPC that needed it who then gave me the compass, but the achievement didn't trigger.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0
achievement(
    title = "Now I Know Where North Is", points = 1,
    description = "Get a Compass.",
    id = 253760, badge = "294615", published = "01/10/2022 12:02:45", modified = "01/01/2023 22:10:12",
    trigger = bit4(0x00C0AB) == 0x01 && prev(bit4(0x00C0AB)) == 0x00 && byte(0x00C0BA) >= 0x01 && byte(0x00C0B2) == 0x01
)

// Ticket 61400: Achievement did not trigger when I picked up the item.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0
achievement(
    title = "Achoo!", points = 1,
    description = "Get a Handkerchief.",
    id = 253991, badge = "294833", published = "02/10/2022 13:14:41", modified = "01/01/2023 22:10:13",
    trigger = bit5(0x00C0AB) == 0x01 && prev(bit5(0x00C0AB)) == 0x00 && byte(0x00C0BA) >= 0x01 && byte(0x00C0B2) == 0x01
)

// Ticket 59366: Did not trigger when I picked it up.  Might be similar to the hammer where it depends on which direction it's picked up?
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Nintendo - Game Boy Advance (mGBA))
//              Emulator Version: 1.15.0
achievement(
    title = "Fantasia 2000", points = 1,
    description = "Get Conductor wand.",
    id = 266820, badge = "295110", published = "15/11/2022 08:41:46", modified = "01/01/2023 22:10:13",
    trigger = bit2(0x00C0AB) == 0x01 && prev(bit2(0x00C0AB)) == 0x00 && byte(0x00C0BA) >= 0x01 && byte(0x00C0B2) == 0x01
)

// Ticket 61401: Achievement did not trigger when I got the item.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0
achievement(
    title = "Cutest Key I Ever Saw", points = 1,
    description = "Get Rabbit Key.",
    id = 268917, badge = "297628", published = "23/11/2022 13:19:17", modified = "01/01/2023 22:10:14",
    trigger = bit0(0x00C0AB) == 0x01 && prev(bit0(0x00C0AB)) == 0x00 && byte(0x00C0BA) >= 0x01 && byte(0x00C0B2) == 0x01
)

// Ticket 61402: Did the boss fight as the achievement asked, but it didn't trigger.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//              Emulator Version: v1.15.0
achievement(
    title = "Dumbledum and Dumber", points = 5,
    description = "Win boss fight against Dumble Dee and Dumbledum and Get Heart Suit.",
    id = 253992, badge = "295112", published = "02/10/2022 13:37:24", modified = "01/01/2023 22:10:14",
    trigger = bit1(0x00C0AA) == 0x00 && prev(bit1(0x00C0AA)) == 0x01 && byte(0x008DB3) != 0x80 && byte(0x00C0B2) == 0x01
)

// Ticket 60474: I had to redo this battle damageless several times for it to trigger.  The achievement stays primed after beating the bosses and returns you to the overworld.  I was eventully able to get the achievement but it seems to be unstable.  I suspect that the boss HPs values might be inconsistent locations.
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RetroArch (Gambatte)
//      Emulator Version: 1.15.0
achievement(
    title = "Dumfrey & Deever Tweed [m]", points = 10,
    description = "Win boss fight against Dumble Dee and Dumbledum without getting damage.",
    id = 266291, badge = "295111", published = "14/11/2022 09:33:48", modified = "05/01/2023 09:19:57",
    trigger = byte(0x00C0BF) == 0x10 && trigger_when(byte(0x00C2DE) == 0x05) && trigger_when(byte(0x00C2CA) == 0x05) && 
              byte(0x00C0BA) == 0x05 && disable_when(byte(0x00C0BA) < prev(byte(0x00C0BA)), until=prev(byte(0x00C0BF))
               == 0x0F) &&
              (always_false() || (never(byte(0x00C0BA) == 0x00)))
)

// Ticket 61974: Traded the Handkerchief with Mr Dodo in return for the Tweedle hats and achievement didn't trigger
//              RetroAchievements Hash: 265de745b9b6c8e84e02acbf80d0428e
//              Emulator: RALibRetro (Gambatte v0.5.0)
//              Emulator Version: 1.6
achievement(
    title = "Double Dee's", points = 1,
    description = "Get Hats from Dumbledee and Dumbledum.",
    id = 253990, badge = "294834", published = "02/10/2022 13:13:31", modified = "01/01/2023 22:10:13",
    trigger = bit1(0x00C0AB) == 0x01 && prev(bit1(0x00C0AB)) == 0x00 && byte(0x00C0BA) >= 0x01 && byte(0x00C0B2) == 0x01
)
