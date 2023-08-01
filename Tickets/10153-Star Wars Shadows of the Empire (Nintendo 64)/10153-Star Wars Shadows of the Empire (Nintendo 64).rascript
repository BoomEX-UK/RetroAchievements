// Star Wars: Shadows of the Empire
// #ID = 10153



current_level_time = float(0x0e0dd0)
active_save_slot = byte(0x18bbfe)

file_stats = {
    "difficulty": 0x18bbfc,
    "cp_imperial_fighter": 0x18BC71,
    "current_stage": 0x18BC03
}

stage_challengePoints = byte(0x18dca2)
stage_lives = byte(0x0E0EB0)

function get_file_stats( stat ){
    return byte(file_stats[stat]+(active_save_slot*0x76))
}

main_menu_id = byte(0x0DD746)
const_titlescreen    = 0
const_saveSelect     = 3
const_saveLoaded     = 2

// Hoth 0x00
hoth_phase = byte(0x0E183C)
const_hoth_drone = 0
const_hoth_atst = 1
const_hoth_atat1 = 2
const_hoth_atat2 = 3
const_hoth_results = 4

// Sewers 0x07
dianoga_hp = float(0x1be114)
sewer_underwaterTime = float(0x0e0e30)

// Xisor 0x08
gladiator_hp = float(0x19fa88)
gladiator_phase = byte(0x19fa4c)

const_glad_fullbody     = 00
const_glad_noLegs       = 01
const_glad_headOnly     = 02

weapon_selected_xizor = byte(0x1B006E)


// -------------------------------------
// - Unresolved
// -------------------------------------

// -------------------------------------
// - Resolved
// -------------------------------------

// Ticket 56455: Had to reset this achievement for an event. Upon entering the level from my save I had originally used
//               to play through on here, the achievement popped.
//               RetroAchievements Hash: C7B40352AAD8D863D88D51672F9A0087
//               Emulator: RetroArch (ParaLLEI)
//               Emulator Version: 1.12.0

achievement(
    title = "A Freighter of Valuables", points = 10,
    description = "Get all the Challenge Points on the Imperial Freighter.",
    id = 56693, badge = "59165", published = "26/12/2017 19:17:12", modified = "19/10/2019 15:45:02",
    trigger =
        current_level_time > 2 &&
        get_file_stats("current_stage") == 0x06 &&
        prev(stage_challengePoints) == 0x09 &&
        stage_challengePoints == 0x0a
)

// Ticket 57038: I used every weapon except the Stunner against Gladiator and this achievement triggered anyway.
//               If it's of any indication, it triggered right after the result screen, at the start of the cutscene of
//               the Skyhook level.
//               RetroAchievements Hash: C7B40352AAD8D863D88D51672F9A0087
//               Emulator: RetroArch (Mupen64Plus-Next 2.5-Vulkan 5a63aad)
//               Emulator Version: 1.14.0
achievement(
    title = "My name is Gladiator", points = 10,
    description = "Destroy the Gladiator Droid with just the laser.",
    id = 56703, badge = "59241", published = "26/12/2017 19:18:21", modified = "12/09/2020 17:13:47",
    trigger = 
        get_file_stats("current_stage") == 0x08 &&
        once(prev(gladiator_hp) == 750 && gladiator_hp < 750 && gladiator_phase == const_glad_fullbody) &&
        trigger_when(gladiator_hp < 1 && gladiator_phase == const_glad_headOnly) &&
        never(weapon_selected_xizor != 0x00) &&
        never(stage_lives == 0xFF) &&
        never(main_menu_id == const_titlescreen)
)


// Ticket 57039: For some reason, it didn't trigger when i defeated Gladiator the first time. When i went back to
//               defeat Gladiator with just laser, it somehow triggered.
//               RetroAchievements Hash: C7B40352AAD8D863D88D51672F9A0087
//               Emulator: RetroArch (Mupen64Plus-Next 2.5-Vulkan 5a63aad)
//               Emulator Version: 1.14.0
achievement(
    title = "Xizor's Palace", points = 5,
    description = "Travel through Xizor's Palace and destroy it cutting off the Skyhook.",
    id = 56699, badge = "59156", published = "26/12/2017 19:18:02", modified = "19/10/2019 15:45:02",
    trigger = 
        get_file_stats("current_stage") == 0x08 &&
        gladiator_phase == const_glad_headOnly &&
        prev(gladiator_hp) >= 1 &&
        gladiator_hp < 1 
)

// Ticket 59310: I killed the Giant Diagona (sp..?) without coming up for air, as the cheevo stated, but the cheevo
//               didn't pop. I waited for the boss area to "drain", as well as competed the rest of the level, but
//               still no cheevo pop.
//               RetroAchievements Hash: C7B40352AAD8D863D88D51672F9A0087
//               Emulator: RetroArch (Mupen64Plus)
//               Emulator Version: 1.10.0
achievement(
    title = "Extreme Toilet Plunger", points = 10,
    description = "Kill the Giant Dianoga in the Sewers without coming up for air or losing a life.",
    id = 56698, badge = "59206", published = "26/12/2017 19:17:53", modified = "09/10/2020 02:47:58",
    trigger = 
        get_file_stats("current_stage") == 0x07 &&
        once(prev(dianoga_hp) == 450 && dianoga_hp < 450 && sewer_underwaterTime > 0) &&
        never(sewer_underwaterTime == 0) && 
        trigger_when(dianoga_hp < 1)
)

// Ticket 56480: за 21 секунду проходил все равно трофей не падает
//               RetroAchievements Hash: C7B40352AAD8D863D88D51672F9A0087
//               Emulator: RetroArch (Основной)
//               Emulator Version: 1.3
achievement(
    title = "Speedy in a Speeder", points = 5,
    description = "Complete the first stage of the Battle of Hoth in 25 seconds or less. (Any Difficulty)",
    id = 56671, badge = "59175", published = "26/12/2017 19:12:01", modified = "12/09/2020 17:10:15",
    trigger =
        get_file_stats("current_stage") == 0x00 &&
        prev(hoth_phase) == const_hoth_drone &&
        trigger_when(hoth_phase == const_hoth_atst) &&
        once(prev(current_level_time) == 0 && current_level_time > 0 && get_file_stats("current_stage") == 0x00) &&
        never(current_level_time == 00 || tally(45*25,prev(current_level_time) != current_level_time) || get_file_stats("current_stage") != 00)
)

// Ticket 58400: I didn't actually unlock this one, but it triggered. I was playing the level on hard, failed, went
//               back to the main menu, started a different level (I think Gall Spaceportl), and it triggered. Guessing
//               it needs to reset on changing level, or if it already does, I guess the level ID must not change soon
//               enough to prevent the achievement popping, but haven't looked at the code.
//               RetroAchievements Hash: C7B40352AAD8D863D88D51672F9A0087
//               Emulator: RetroArch (Mupen64-Next)
//               Emulator Version: 1.14.0
achievement(
    title = "No Need For Tow Cables", points = 10,
    description = "Destroy the AT-ATs without the use of Tow Cables (On Hard or Jedi).",
    id = 56670, badge = "59174", published = "26/12/2017 19:11:52", modified = "06/01/2021 01:35:58",
    trigger =
        get_file_stats("current_stage") == 0x00 &&
        get_file_stats("difficulty") > 0x02 &&
        prev(hoth_phase) == const_hoth_atat2 &&
        hoth_phase == const_hoth_results &&
        stage_challengePoints == 0
)


// -------------------------------------
// - Closed
// -------------------------------------