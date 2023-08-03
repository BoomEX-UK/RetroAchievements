// Gex 3: Deep Cover Gecko
// #ID = 10223

// Cheat Code:
// Pause game, hold R and enter
// B, A, B, Z, C-Left, C-Right, C-Up, Z

active_game = byte(0x0A54F3)
function game_active() => active_game == 1

level_id_current    = byte(0x0A557A)
level_id_previous   = byte(0x0A5578)

level_ids = {
    "cheesy_rider": 0x12,
    "funky_town": 0x1a,
    "the_abyssmal": 0x13
}

fly_count = word(0x0A54DC)
the_abysmal_showing_star = byte(0x0A54F0)
game_status = word(0x0A5488)
osd_timer = word(0x084f70)

// -------------------------------------
// - Unresolved
// -------------------------------------

// -------------------------------------
// - Resolved
// -------------------------------------

// Ticket 57565: Achievement pops when getting near or collecting the final collectible but the timer is under 2m20s
//               remaining.
//               RetroAchievements Hash: 6770DDEC84EB21A5E0D0F55DFD52A01A
//               Emulator: RetroArch (Mupen64Plus-Next (2.4-Vulkan bc24153))
//               Emulator Version: 1.15.0
// Ticket 57470: The same problem as in this Achievement :
//               
//               https://retroachievements.org/achievement/48883
//               RetroAchievements Hash: 6770DDEC84EB21A5E0D0F55DFD52A01A
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.14.0
achievement(
    title = "Cheese Whiz", points = 10,
    description = "Complete Cheesy Rider with at least 2m20s left.",
    id = 48884, badge = "49596", published = "28/05/2017 06:36:38", modified = "11/04/2023 22:54:10",
    trigger =
        once(level_id_current == level_ids["cheesy_rider"] && osd_timer == 0x1c20) &&
        never(osd_timer < ((2*60)+20)*30 || level_id_current != level_ids["cheesy_rider"]) &&
        trigger_when(
            fly_count == 50 &&
            word(0x0a5488) == 0x1557
        )
)

// Ticket 57403: Didn't trigger even though I finished the stage with way more than 3:00 remaining, the challenge is
//               viewed as active, but something's still not right. The many attempts there were to fix the logic might
//               have something to do with it.
//               RetroAchievements Hash: 6770DDEC84EB21A5E0D0F55DFD52A01A
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.14.0
achievement(
    title = "Abyssmal Performance", points = 10,
    description = "Complete The Abyssmal with at least 3m left.",
    id = 48883, badge = "49594", published = "28/05/2017 06:36:35", modified = "11/04/2023 22:54:04",
    trigger =
        once(level_id_current == level_ids["the_abyssmal"] && osd_timer == 0x2328) &&
        never(osd_timer < (3*60)*30 || level_id_current != level_ids["the_abyssmal"]) &&
        trigger_when(
            fly_count == 50 &&
            word(0x0a5488) == 0x1557
        )
)


// -------------------------------------
// - Closed
// -------------------------------------
