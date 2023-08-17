// Starshot: Space Circus Fever
// #ID = 14337

level_id = byte(0x0990C0)
level_ids = {
    "starship":         0x02,
    "tensuns":          0xA0,
    "killer_expo":      0xEC,
    "primitron":        0x8C,
    "ultima_crash":     0x65,
    "earth":            0x03,
    "techno_mummy":     0x9D,
    "virtua_circus":    0x16
}

active_save_id = low4(0x098293)
const_save1 = 0x08
const_save2 = 0x0a
const_save3 = 0x0c
const_save4 = 0x0e
const_save1b = 0x00
const_save2b = 0x02
const_save3b = 0x04
const_save4b = 0x06

level_flags = {
    const_save1 : {    
        "tensuns":          bit6(0x0982a7),
        "killer_expo":      bit5(0x0982a7),
        "primitron":        bit4(0x0982a7),
        "ultima_crash":     bit3(0x0982a7),
        "earth":            bit1(0x0982a7),
        "techno_mummy":     bit0(0x0982a7),
        "virtua_circus":    bit7(0x0982a6)
    },
    const_save2: {    
        "tensuns":          bit6(0x098322),
        "killer_expo":      bit5(0x098322),
        "primitron":        bit4(0x098322),
        "ultima_crash":     bit3(0x098322),
        "earth":            bit1(0x098322),
        "techno_mummy":     bit0(0x098322),
        "virtua_circus":    bit7(0x098321)
    },
    const_save3: {    
        "tensuns":          bit6(0x09839d),
        "killer_expo":      bit5(0x09839d),
        "primitron":        bit4(0x09839d),
        "ultima_crash":     bit3(0x09839d),
        "earth":            bit1(0x09839d),
        "techno_mummy":     bit0(0x09839d),
        "virtua_circus":    bit7(0x09839c)
    },
    const_save4: {    
        "tensuns":          bit6(0x098418),
        "killer_expo":      bit5(0x098418),
        "primitron":        bit4(0x098418),
        "ultima_crash":     bit3(0x098418),
        "earth":            bit1(0x098418),
        "techno_mummy":     bit0(0x098418),
        "virtua_circus":    bit7(0x09841f)
    }
}

debug_mode_off = bit0(0x0e10c6) == 0

// -------------------------------------
// - Unresolved
// -------------------------------------

// -------------------------------------
// - Resolved
// -------------------------------------

// Ticket 57634: i have several achievements for completing planets that arent triggering and i have completed the
//               respective planets. so far i have the first 2 (Ten suns and Killer expo) completed and neither have
//               triggered
//               RetroAchievements Hash: 42af1992978229bbb5f560571708e25e
//               Emulator: RetroArch (Mupen 64Plus-next)
//               Emulator Version: 1.14.0
achievement(
    title = "Tensuns", points = 10,
    description = "Force Virtua Circus to leave Planet Tensuns",
    id = 76733, badge = "82185", published = "07/05/2019 09:55:01", modified = "05/07/2020 08:36:01",
    trigger =
        debug_mode_off &&
        level_id == level_ids["tensuns"] &&
        (
            (
                __ornext(active_save_id == const_save1 || active_save_id == const_save1b) &&
                prev(level_flags[const_save1]["tensuns"]) == 0 &&
                level_flags[const_save1]["tensuns"] == 1
            ) || (
                __ornext(active_save_id == const_save2 || active_save_id == const_save2b) &&
                prev(level_flags[const_save2]["tensuns"]) == 0 &&
                level_flags[const_save2]["tensuns"] == 1
            ) || (
                __ornext(active_save_id == const_save3 || active_save_id == const_save3b) &&
                prev(level_flags[const_save3]["tensuns"]) == 0 &&
                level_flags[const_save3]["tensuns"] == 1
            ) || (
                __ornext(active_save_id == const_save4 || active_save_id == const_save4b) &&
                prev(level_flags[const_save4]["tensuns"]) == 0 &&
                level_flags[const_save4]["tensuns"] == 1
            )
        )

)

// Ticket 57705: Didnt Trigger upon completing the level like its supposed too
//               RetroAchievements Hash: 42af1992978229bbb5f560571708e25e
//               Emulator: RetroArch (Mupen 64Plus-next)
//               Emulator Version: 1.14.0
achievement(
    title = "Primitron", points = 10,
    description = "Find the Surprise-Laying Bird on Planet Primitron",
    id = 76735, badge = "82190", published = "07/05/2019 09:55:08", modified = "16/05/2021 23:11:35",
    trigger =
        debug_mode_off &&
        level_id == level_ids["primitron"] &&
        (
            (
                __ornext(active_save_id == const_save1 || active_save_id == const_save1b) &&
                prev(level_flags[const_save1]["primitron"]) == 0 &&
                level_flags[const_save1]["primitron"] == 1
            ) || (
                __ornext(active_save_id == const_save2 || active_save_id == const_save2b) &&
                prev(level_flags[const_save2]["primitron"]) == 0 &&
                level_flags[const_save2]["primitron"] == 1
            ) || (
                __ornext(active_save_id == const_save3 || active_save_id == const_save3b) &&
                prev(level_flags[const_save3]["primitron"]) == 0 &&
                level_flags[const_save3]["primitron"] == 1
            ) || (
                __ornext(active_save_id == const_save4 || active_save_id == const_save4b) &&
                prev(level_flags[const_save4]["primitron"]) == 0 &&
                level_flags[const_save4]["primitron"] == 1
            )
        )
)

// Ticket 57791: Along with the rest of the level complete achievements this one didnt pop either
//               RetroAchievements Hash: 42af1992978229bbb5f560571708e25e
//               Emulator: RetroArch (Mupen 64Plus-next)
//               Emulator Version: 1.14.0
achievement(
    title = "Ultima Crash", points = 10,
    description = "Bring back Laika the ghost dog from Planet Ultima Crash",
    id = 76736, badge = "82187", published = "07/05/2019 09:55:11", modified = "16/05/2021 21:29:14",
    trigger =
        debug_mode_off &&
        level_id == level_ids["ultima_crash"] &&
        (
            (
                __ornext(active_save_id == const_save1 || active_save_id == const_save1b) &&
                prev(level_flags[const_save1]["ultima_crash"]) == 0 &&
                level_flags[const_save1]["ultima_crash"] == 1
            ) || (
                __ornext(active_save_id == const_save2 || active_save_id == const_save2b) &&
                prev(level_flags[const_save2]["ultima_crash"]) == 0 &&
                level_flags[const_save2]["ultima_crash"] == 1
            ) || (
                __ornext(active_save_id == const_save3 || active_save_id == const_save3b) &&
                prev(level_flags[const_save3]["ultima_crash"]) == 0 &&
                level_flags[const_save3]["ultima_crash"] == 1
            ) || (
                __ornext(active_save_id == const_save4 || active_save_id == const_save4b) &&
                prev(level_flags[const_save4]["ultima_crash"]) == 0 &&
                level_flags[const_save4]["ultima_crash"] == 1
            )
        )
)

// Ticket 57792: Along with the rest of the level complete achievements this one didnt pop either
//               RetroAchievements Hash: 42af1992978229bbb5f560571708e25e
//               Emulator: RetroArch (Mupen 64Plus-next)
//               Emulator Version: 1.14.0
achievement(
    title = "Earth", points = 10,
    description = "Bring back the last Earthling Survivor from Planet Earth",
    id = 76737, badge = "82188", published = "07/05/2019 09:55:16", modified = "17/05/2021 02:52:56",
    trigger =
        debug_mode_off &&
        level_id == level_ids["earth"] &&
        (
            (
                __ornext(active_save_id == const_save1 || active_save_id == const_save1b) &&
                prev(level_flags[const_save1]["earth"]) == 0 &&
                level_flags[const_save1]["earth"] == 1
            ) || (
                __ornext(active_save_id == const_save2 || active_save_id == const_save2b) &&
                prev(level_flags[const_save2]["earth"]) == 0 &&
                level_flags[const_save2]["earth"] == 1
            ) || (
                __ornext(active_save_id == const_save3 || active_save_id == const_save3b) &&
                prev(level_flags[const_save3]["earth"]) == 0 &&
                level_flags[const_save3]["earth"] == 1
            ) || (
                __ornext(active_save_id == const_save4 || active_save_id == const_save4b) &&
                prev(level_flags[const_save4]["earth"]) == 0 &&
                level_flags[const_save4]["earth"] == 1
            )
        )
)

// Ticket 57793: Along with the rest of the level complete achievements this one didnt pop either
//               RetroAchievements Hash: 42af1992978229bbb5f560571708e25e
//               Emulator: RetroArch (Mupen 64Plus-next)
//               Emulator Version: 1.14.0
achievement(
    title = "Techno Mummy", points = 10,
    description = "Bring back the Malfunction Machine from Planet Techno Mummy",
    id = 76738, badge = "82189", published = "07/05/2019 09:55:19", modified = "16/05/2021 17:42:10",
    trigger = 
        debug_mode_off &&
        level_id == level_ids["techno_mummy"] &&
        (
            (
                __ornext(active_save_id == const_save1 || active_save_id == const_save1b) &&
                prev(level_flags[const_save1]["techno_mummy"]) == 0 &&
                level_flags[const_save1]["techno_mummy"] == 1
            ) || (
                __ornext(active_save_id == const_save2 || active_save_id == const_save2b) &&
                prev(level_flags[const_save2]["techno_mummy"]) == 0 &&
                level_flags[const_save2]["techno_mummy"] == 1
            ) || (
                __ornext(active_save_id == const_save3 || active_save_id == const_save3b) &&
                prev(level_flags[const_save3]["techno_mummy"]) == 0 &&
                level_flags[const_save3]["techno_mummy"] == 1
            ) || (
                __ornext(active_save_id == const_save4 || active_save_id == const_save4b) &&
                prev(level_flags[const_save4]["techno_mummy"]) == 0 &&
                level_flags[const_save4]["techno_mummy"] == 1
            )
        )
)

// Ticket 57790: Along with the rest of the level complete achievements this one didnt pop either
//               RetroAchievements Hash: 42af1992978229bbb5f560571708e25e
//               Emulator: RetroArch (Mupen 64Plus-next)
//               Emulator Version: 1.14.0
achievement(
    title = "Virtua Circus", points = 25,
    description = "Destroy the Interior Commands on Virtua Circus",
    id = 76739, badge = "82191", published = "07/05/2019 09:55:22", modified = "17/05/2021 03:02:50",
    trigger = 
        debug_mode_off &&
        prior(level_id) == level_ids["virtua_circus"] &&
        level_id == level_ids["starship"] &&
        (
            (
                __ornext(active_save_id == const_save1 || active_save_id == const_save1b) &&
                prev(level_flags[const_save1]["virtua_circus"]) == 0 &&
                level_flags[const_save1]["virtua_circus"] == 1
            ) || (
                __ornext(active_save_id == const_save2 || active_save_id == const_save2b) &&
                prev(level_flags[const_save2]["virtua_circus"]) == 0 &&
                level_flags[const_save2]["virtua_circus"] == 1
            ) || (
                __ornext(active_save_id == const_save3 || active_save_id == const_save3b) &&
                prev(level_flags[const_save3]["virtua_circus"]) == 0 &&
                level_flags[const_save3]["virtua_circus"] == 1
            ) || (
                __ornext(active_save_id == const_save4 || active_save_id == const_save4b) &&
                prev(level_flags[const_save4]["virtua_circus"]) == 0 &&
                level_flags[const_save4]["virtua_circus"] == 1
            )
        )
)

// -------------------------------------
// - Closed
// -------------------------------------
