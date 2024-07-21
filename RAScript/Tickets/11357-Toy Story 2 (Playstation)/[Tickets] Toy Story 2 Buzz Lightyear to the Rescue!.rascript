// Toy Story 2: Buzz Lightyear to the Rescue!
// #ID = 11357

// Ticket 70455: It's not enough to just grab that sheep, you need to go down to the shelf that is just below and grab
//               the extra life as well.
//               
//               If you don't do it, the achievement is not activated, the owner needs to change the description
//               RetroAchievements Hash: cc7ff3b414ccf3373c6dbe5a496f3071
//               Emulator: RetroArch (Swanstation)
//               Emulator Version: 1.17.0
// Ticket 69299: Didn't trigger
//               RetroAchievements Hash: cc7ff3b414ccf3373c6dbe5a496f3071
//               Emulator: DuckStation
//               Emulator Version: 0.1-6292-g0bc42c38 (dev)
// Ticket 69224: Ach doesn't trigger. I did it like 100 times from a fresh save and everything
//               RetroAchievements Hash: Unknown
//               Emulator: RetroArch (swanstation)
//               Emulator Version: 1.12
// Ticket 67768: Achievement refused to unlock after attempting and completing the requirement twice.
//               
//               Video link:
//               https://www.youtube.com/watch?v=4N2rqV-0EG0
//               RetroAchievements Hash: cc7ff3b414ccf3373c6dbe5a496f3071
//               Emulator: DuckStation
//               Emulator Version: 0.1-6283-g1d751d33

/* Backup Logic
achievement(
    title = "[backup]Andy's House - Challenge III", points = 5,
    description = "Find the sheep at the wall shelves in Andy's House without using the armchair",
    id = 0, badge = "264447", published = "10/12/2020 06:00:56", modified = "04/08/2022 07:14:03",
    trigger = byte(0x0CD335) != 0x00 && byte(0x0A15AC) == 0x01 && prev(byte(0x1506FF)) == 0x10 && byte(0x1506FF) == 0x00 &&
              never((dword(0x0A1138) < 0x3B8F7 && dword(0x0A1138) > 0x369BA)) &&
              (always_false() || (unless(once(byte(0x0A1030) != 0x02 && byte(0x0A15AC) == 0x01 && byte(0x0D4879) == 0xFF))))
)
*/


modes = {
    "menu" : 0x00,
    "results" : 0x01,
    "in_game" : 0x02
}

items = {
    "sheep" : 0x06
}

game_mode = byte(0x0a1260)
map_id = byte(0x0a15ac)
sheep_count = word(0x0a11f8)
item_id = word(0x0c32dc)


position = {
    "x" : dword(0x0b2188),
    "y" : dword(0x0b218c),
    "z" : dword(0x0b2190)
}

ac3_x_offset = 0x0006c000
function armchair_reset() => dword(0x0d4878) != 0

trig_on = once(
    position["x"] < 0x00076500 &&
    item_id == items["sheep"]
)

trig_off = never(
    (position["x"] < 0x00057000 ||
    position["x"] > 0x00a0b500) ||
    (position["y"] > 0x0003ba00 &&
    position["y"] < 0xFFFF5000) ||
    (position["z"] > 0x00004e00 &&
    position["z"] < 0xFFFB0000) ||
    armchair_reset() ||
    map_id != 1 ||
    game_mode != modes["in_game"]
)

trig_win = prev(sheep_count) < sheep_count

achievement(
    title = "Andy's House - Challenge III", points = 5,
    description = "Find the sheep at the wall shelves in Andy's House without using the armchair",
    id = 134282,
    trigger= trig_on && trig_off && trigger_when(trig_win)
)

// Ticket 69265: did the route, I fell several times but never went on Slinky's island (also haven't even unlocked
//               rocket boots). Got to duck and ach didn't pop
//               RetroAchievements Hash: cc7ff3b414ccf3373c6dbe5a496f3071
//               Emulator: RetroArch (swanstation)
//               Emulator Version: 1.12
// Ticket 68209: Started by reentering the level, then completed the requirements of the achievement. It did not pop.
//               RetroAchievements Hash: cc7ff3b414ccf3373c6dbe5a496f3071
//               Emulator: DuckStation
//               Emulator Version: version 0.1-6283
// Ticket 68101: I've completed the requirements for this achievement multiple times, even quitting out of the level
//               between attempts to be certain it's resetting the try, and can't get it to pop.
//               RetroAchievements Hash: Unknown
//               Emulator: DuckStation
//               Emulator Version: 0.1-6283-g1d751d33
// Ticket 67728: fulfilled the requirements but cant seem to get the achievement to pop
//               RetroAchievements Hash: cc7ff3b414ccf3373c6dbe5a496f3071
//               Emulator: RetroArch (none)
//               Emulator Version: PCSX-ReArmed
// Ticket 67208: I did this achievement without touching Slinky's island or using the rocket shoes. The achievement did
//               not activate both times I did it.
//               RetroAchievements Hash: cc7ff3b414ccf3373c6dbe5a496f3071
//               Emulator: RetroArch (Swan Station)
//               Emulator Version: PSX
achievement(
    title = "Alleys and Gullies - Challenge III", points = 5,
    description = "Find the duck on the other side of the pool without stepping on Slinky's island and without using the rocket boots",
    id = 134307, badge = "264440", published = "10/12/2020 06:04:40", modified = "22/06/2023 15:09:24",
    trigger = byte(0x0CD335) != 0x00 && prev(byte(0x0C3DF2)) == 0x66 && byte(0x0C3DF2) == 0x00 &&
              dword(0x0B2190) > 0x9D7FA && once(byte(0x0A15AC) == 0x05 && byte(0x0A12B4) == 0x04) &&
              never(byte(0x0A15AC) != 0x05) && never(byte(0x0A1030) == 0x02) &&
              (always_false() || (unless(once(byte(0x0A1260) == 0x02 && byte(0x0A15AC) == 0x05 && dword(0x0B2188) > 0x2FFA &&
                    dword(0x0B2188) < 0x3F806 && dword(0x0B2190) > 0xBFF3B && dword(0x0B2190) < 0xCE6F9)
                ) && unless(once(byte(0x0A1260) == 0x02 && byte(0x0A15AC) == 0x05 && word(0x0A12C0) > 0x00))))
)

// Ticket 74167: Я прошла до конца забрала инопланетянина но достижение не получила
//               RetroAchievements Hash: Unknown
//               Emulator: RetroArch (pcsx_rearmed)
//               Emulator Version: 1.19.1
achievement(
    title = "Al's Space Land - Challenge III", points = 5,
    description = "Find the alien at the end of the laser section in Al's Space Land without passing through there, and without pushing the box",
    id = 166529, badge = "264425", published = "17/08/2021 00:36:03", modified = "04/08/2022 07:09:29",
    trigger = never(byte(0x0CD335) == 0x00) && byte(0x0A15AC) == 0x08 && prev(byte(0x0C317A)) == 0x66 &&
              byte(0x0C317A) == 0x00 &&
              never((word(0x0A1138) <= 0x9BCE && dword(0x0B2188) <= 0x51F8F && dword(0x0B2188) >= 0x43048 &&
                  dword(0x0B2190) <= 0x15E61 && word(0x13A94C) == 0x34E8 && dword(0x0B2190) >= 0x1099)
              ) &&
              (always_false() || (unless(once(word(0x0A1138) <= 0xB6D3 && dword(0x0B2188) <= 0x16674 && dword(0x0B2188) >= 0x94A2 &&
                    dword(0x0B2190) <= 0xFFFFFC45 && dword(0x0B2190) >= 0xFFFF1154)
                ) && unless(once(once(byte(0x0A15AC) == 0x08 && dword(0x0A10EC) > 0x96) && word(0x13A94C) != 0x34E8)) &&
                unless((byte(0x0A15AC) == 0x08 && dword(0x0A10EC) < 0x22B))))
)
