// Star Fox 64
// #ID = 10248

game_mode = byte(0x16D6A4)
game_modes = {
    "init": 0x01,
    "intro" : 0x02,
    "main_menu": 0x03,
    "map" : 0x04,
    "game_over": 0x05,
    "going_to_game": 0x06,
    "in_game": 0x07,
    "credits": 0x08
}

addr_first_stageFlags = 0x16E6E0
addr_last_stageFlags = 0x16E6EF

// -------------------------------------
// - Unresolved
// -------------------------------------



// Ticket 57755: No Idea why I didnt unlock this I even finished out the run The sector Z achievement worked where you
//               finish it as quick as possible https://imgur.com/a/tnLNoVT
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: RetroArch (GLideN64)
//               Emulator Version: Star Fox 64 (USA)
achievement(
    title = "C1 - Nebulophiliac", points = 10,
    description = "Visit sectors X, Y, and Z in one run",
    id = 49350, badge = "51191", published = "04/06/2017 23:51:34", modified = "18/06/2023 15:47:09",
    trigger = byte(0x16DA04) == 0x05 && byte(0x16DA0C) == 0x04 && byte(0x16DA10) == 0x03 && byte(0x16E0A4) == 0x12 && 
              byte(0x146602) == 0xFF && word(0x16DC20) == 0x00
)

// Ticket 58941: Achievement didnt pop for me. I completed the game three separate times meeting the criteria, but
//               never got it.
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.9.0
// Ticket 58451: I went through the entire easy path, no lives used and no wingmen lost. I saved Slippy in Sector X but
//               went to Titania anyway, is that the issue?
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.10.4
achievement(
    title = "C1 - Air Force Meritorious Unit Award", points = 25,
    description = "Complete the game (Normal) without losing wingmen or a life",
    id = 49276, badge = "51236", published = "03/06/2017 21:47:00", modified = "10/07/2021 16:09:57",
    trigger = byte(0x16D9C0) > 0x00 && byte(0x16D9C2) > 0x00 && byte(0x16D9C4) > 0x00 && byte(0x16D9C5) > 0x00 && 
              byte(0x16D9C6) > 0x00 && byte(0x16D9C8) > 0x00 && byte(0x16D9C1) > 0x00 && byte(0x16D9C9) > 0x00 && 
              byte(0x16D9CA) > 0x00 && byte(0x16D9CC) > 0x00 && byte(0x16D9CD) > 0x00 && byte(0x16D9CE) > 0x00 && 
              byte(0x16D9D0) > 0x00 && byte(0x16D9D1) > 0x00 && byte(0x16D9D2) > 0x00 && byte(0x16D9D4) > 0x00 && 
              byte(0x16D9D5) > 0x00 && byte(0x16D9D6) > 0x00 && byte(0x16D9D8) > 0x00 && byte(0x16D9D9) > 0x00 && 
              byte(0x16D9DA) > 0x00 && word(0x16E0A4) == 0xFFFF && byte(0x16D9B8) == 0x06 && never(byte(0x157912) <
               prev(byte(0x157912))) && byte(0x16D868) == 0x00 && never(game_mode == 0x01) && repeated(10,
               game_mode == 0x02) && prev(byte(0x16E0A4)) == 0x13
)

// Ticket 58940: Achievement not popping for me. I completed the game on expert without dying once.
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.9.0
achievement(
    title = "C1 - Wright Brothers Master Pilot Award", points = 50,
    description = "Complete the game on Expert without ever dying",
    id = 49340, badge = "51234", published = "04/06/2017 07:15:40", modified = "10/07/2021 16:09:59",
    trigger = word(0x16E0A4) == 0xFFFF && byte(0x16D868) == 0x01 && byte(0x16D9B8) == 0x06 && repeated(10,
               byte(0x147A20) == 0x02) && never(byte(0x157912) < prev(byte(0x157912))) && prev(byte(0x16E0A4)) == 0x13
)



// Ticket 58472: No idea how many times I saved Slippy previously, in Bolse but I changed the route from Sector Z >
//               Area 6 to Sector Z > Bolse and this popped automatically. I definitely saved him at least 5 times with
//               multiple restarts in Sector Z prior to the route change.
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.10.4
achievement(
    title = "C2 - Slippy's Savior", points = 5,
    description = "Save Slippy 5 times in Bolse",
    id = 50030, badge = "51176", published = "27/06/2017 21:26:09", modified = "07/02/2018 05:35:55",
    trigger = repeated(5, word(0x0C2F04) == 0x23D2) && byte(0x16E0A4) == 0x11 && unless(prev(word(0x0C2F04)) == 0x23D2)
)

// -------------------------------------
// - Resolved
// -------------------------------------

// Ticket 62883: I've gotten medals on all levels (including some on Expert) but the achievement won't trigger. Shows
//               'Locked 1/1'. I believe my first medal was at Area 6 if that's any help.
//               Also worth noting that the other achievements for medals all work fine, just this one has issues.
//               Thanks for all your work so far! Really enjoying the set.
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.15.0
// Ticket 59450: I have obtained four medals in total and none of them triggered the achievement. The first medal was
//               from Bolse, could that have caused the issue?
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: Bizhawk
//               Emulator Version: 2.9.1
// Ticket 54604: I got 4 medals already, no luck.
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: RetroArch (Mupen +)
//               Emulator Version: 1.11.1
achievement(
    title = "M1 - Bronze Star Medal", points = 5,
    description = "Earn a medal on any stage (normal)",
    id = 49264, badge = "50990", published = "03/06/2017 17:35:04", modified = "05/12/2021 08:59:30",
    trigger = 
        __ornext(
            game_mode == game_modes["main_menu"] || 
            game_mode == game_modes["map"]
        ) && 
        sum_of(range(addr_first_stageFlags,addr_last_stageFlags), s => bit1(s)) >
        sum_of(range(addr_first_stageFlags,addr_last_stageFlags), s => prev(bit1(s)))
)

// Ticket 59451: Only deflected 179 shots according to the leaderboard, but triggered nonetheless.
//               RetroAchievements Hash: caf9a78db13ee00002ff63a3c0c5eabb
//               Emulator: Bizhawk
//               Emulator Version: 2.9.1
achievement(
    title = "C2 - The Great Defender", points = 10,
    description = "Deflect 200 shots in Sector X before reaching Spyborg or warping",
    id = 49452, badge = "51175", published = "08/06/2017 22:17:23", modified = "11/02/2021 02:55:27",
    trigger = 
        word(0x13ab84) >= 200 &&
        byte(0x16e0a4) == 2 &&
        word(0x16db92) <= 0x4860
)

// -------------------------------------
// - Closed
// -------------------------------------
