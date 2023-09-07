// Action Man: Robot Atak
// #ID = 9848

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

screens = {
    "init" : {
        "id" : 0x00,
        "name" : "Loading the game"
    },
    "menu" : {
        "id" : 0x03,
        "name" : "Main Menu"
    },
    "adventure" : {
        "id" : 0x04,
        "name" : "Adventure Mode"
    },
    "advance" : {
        "id" : 0x05,
        "name" : "Advance Mode"
    },
    "time" : {
        "id" : 0x06,
        "name" : "Time Attack"
    },
    "free_play" : {
        "id" : 0x07,
        "name" : "Free Play Mode"
    },
    "options" : {
        "id" : 0x08,
        "name" : "Options Menu"
    },
    "password" : {
        "id" : 0x09,
        "name" : "Password Screen"
    },
}

game_modes = {
    "adventure" : {
        "id" : 0x00,
        "name" : "Adventure"
    },
    "advanced" : {
        "id" : 0x01,
        "name" : "Advanced"
    },
    "time_attack" : {
        "id" : 0x02,
        "name" : "Time Attack"
    },
    "free_play" : {
        "id" : 0x03,
        "name" : "Free Play"
    }
}

play_states = {
    "menu" : {
        "id" : 0x00,
        "name" : "Menu"
    },
    "platform" : {
        "id" : 0x02,
        "name" : "Platformer"
    },
    "race" : {
        "id" : 0x03,
        "name" : "Mode 9"
    }
}

stage_types = {
    0x02 : "Platform",
    0x03 : "Race"
}

stages = {
    //- Adventure
    0x01 : "Infernal Jungle",   // P Jungle 1
    0x1f : "Aztec Ruins",       // P Ruines 1
    0x81 : "Dirt Board in Action",
    0x0e : "Queen Spider",
    0x08 : "MTX Pt.1",
    0x09 : "MTX Pt.2",
    0x17 : "Lost Temple",
    0x11 : "Welcome to Dinoland Pt.1",
    0x12 : "Welcome to Dinoland Pt.2",
    0x13 : "Welcome to Dinoland Pt.3",
    0x04 : "Beach Games",
    0x0f : "T-Rex",
    0x06 : "Like a Bird",   // Canopee 1
    0x83 : "Surf Atak",
    0x1b : "Rats Attack!",
    0x19 : "Tunnel of the Secret Base",
    0x1d : "Professor Moran",
    0x0c : "Kongo",
    0x21 : "Strength Through Unity",
    0x10 : "Doctor X",
    // Additional Advanced, Time Attack and Free Play
    0x02 : "Spiders' Domain",   // P Jungle 2
    0x03 : "Crocoland",         // P Jungle 3
    0x07 : "Bow Powa!",         // P Ruines 2
}

boss_levels = {
    0x0e : "Boss 1", // Queen Spider
    0x0f : "Boss 2", // T-Rex
    0x10 : "Boss 3"  // Doctor X
}

race_levels = {
    0x81 : "Slope",
    0x83 : "Surf"
}

legacy_weapon_ach = {
    1 : {
        "id" : 58420,
        "title" : "Certified Weeb",
        "description" : "Pick up a fresh batch of shurikens",
        "points" : 1,
        "badge" : "72738",
        "trigger" : always_false()
    },
    2 : {
        "id" : 58421,
        "title" : "Gun Man!",
        "description" : "Pick up a rocket launcher (?)",
        "points" : 1,
        "badge" : "72739",
        "trigger" : always_false()
    },
    3 : {
        "id" : 58422,
        "title" : "Ripper Boomerang",
        "description" : "Pick up the boomerang",
        "points" : 1,
        "badge" : "72740",
        "trigger" : always_false()
    },
    4 : {
        "id" : 58423,
        "title" : "License to Kill",
        "description" : "Pick up the assault rifle",
        "points" : 1,
        "badge" : "72741",
        "trigger" : always_false()
    }
}

adventure_ach = {
    "jungle" : {
        "win_stage" : 0x1f,
        "title" : "Through the Thickets",
        "description" : "Jungle Area",
        "points" : 1
    },
    "slope" : {
        "win_stage" : 0x81,
        "title" : "Sandboarding",
        "description" : "Desert Surf",
        "points" : 1
    },
    "spider" : {
        "win_stage" : 0x0e,
        "title" : "Queen of the Web",
        "description" : "Queen Spider",
        "points" : 5
    },
    "motorcross" : {
        "win_stage" : 0x09,
        "title" : "Mad Motorcross",
        "description" : "MTX challenge",
        "points" : 2
    },
    "temple" : {
        "win_stage" : 0x17,
        "title" : "Temple of Doom",
        "description" : "Lost Temple",
        "points" : 2
    },
    "dino" : {
        "win_stage" : 0x13,
        "title" : "A Dino Saw Us",
        "description" : "Dinoland Area",
        "points" : 2
    },
    "beach" : {
        "win_stage" : 0x04,
        "title" : "Life's a Beach",
        "description" : "Beach Area",
        "points" : 2
    },
    "t-rex" : {
        "win_stage" : 0x0f,
        "title" : "Get Rex",
        "description" : "T-Rex",
        "points" : 5
    },
    "bird" : {
        "win_stage" : 0x06,
        "title" : "Helepack",
        "description" : "Flying Area",
        "points" : 3
    },
    "surf" : {
        "win_stage" : 0x83,
        "title" : "Surfboarding",
        "description" : "Ocean Surf",
        "points" : 3
    },
    "underground" : {
        "win_stage" : 0x19,
        "title" : "Beneath the Streets",
        "description" : "Underground Tunnel",
        "points" : 3
    }
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

cheats = bitcount(0x000440)
function not_cheating() => cheats == 0

function stage_unlocks() => sum_of(range(0x000430,0x000433), a => bitcount(a))

//- Pauselock Cheat Protection
function lockout_cheats_all() => unless(
    once(
        screen_id == screens["password"]["id"] &&
        stage_unlocks() > prev(stage_unlocks())
    )
)
function lockout_cheats_advanced() => unless(
    once(
        screen_id == screens["password"]["id"] &&
        stage_unlocks() > prev(stage_unlocks()) &&
        stage_unlocks() > 7 // JUNGLE
    )
)
function lockout_cheats_timeattack() => unless(
    once(
        screen_id == screens["password"]["id"] &&
        stage_unlocks() > prev(stage_unlocks()) &&
        stage_unlocks() > 13 // HURRY
    )
)

in_game_loading_flag = byte(0x00044a)
function stage_won() => prev(in_game_loading_flag) == 0x00 && in_game_loading_flag == 0x06

screen_id = byte(0x000444)
stage_id = word(0x002e20)
game_mode = byte(0x000484)
play_state = byte(0x00008b) + byte(0x000097)
bonus_collected = byte(0x00047d)
bonus_total = byte(0x00047e)

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

for ach in adventure_ach {
    stub = adventure_ach[ach]
    achievement(
        // id          = stub["id"],
        title       = "Adventure Man: " + stub["title"],
        description = "Complete the " + stub["description"] + " on Adventure Mode (No Passwords)",
        points = stub["points"],
        // badge       = stub["badge"], 
        trigger     = not_cheating() && 
                    stage_id == stub["win_stage"] &&
                    play_state != play_states["menu"]["id"] &&
                    stage_won() &&
                    lockout_cheats_all() 
    )
}

// ----------------------------------------------------------------------------
// -- Collection Achievements
// ----------------------------------------------------------------------------

for ach in legacy_weapon_ach {
    stub = legacy_weapon_ach[ach]
    achievement(
        id          = stub["id"],
        title       = stub["title"],
        description = stub["description"],
        points      = stub["points"],
        badge       = stub["badge"], 
        trigger     = not_cheating() && stub["trigger"]
    )
}

// ----------------------------------------------------------------------------
// -- Challenge Achievements
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rp_game_modes = {}
for mode in game_modes {
    stub = game_modes[mode]
    rp_game_modes[stub["id"]] = stub["name"]
}

emoji = "👨"
emoji_warn = "⚠️"
emoji_coin = "🪙"

rich_presence_conditional_display( !not_cheating(), "{0} Cheats Enabled, Achievements Disabled",emoji_warn)

rich_presence_conditional_display( play_state == play_states["platform"]["id"], "{0} {1} | {2}{3}/{4} | {5}",
    emoji,
    rich_presence_lookup("modes",game_mode,rp_game_modes,fallback="?"),
    emoji_coin,
    rich_presence_macro("Number",bonus_collected),
    rich_presence_macro("Number",bonus_total),
    rich_presence_lookup("stages",stage_id,stages,fallback="?")
)
rich_presence_conditional_display( play_state == play_states["race"]["id"], "{0} Racing",
    emoji
)

rich_presence_display("{0} Being the greatest Hero of them all",emoji)

// ----------------------------------------------------------------------------
// -- To Be Reviewed
// ----------------------------------------------------------------------------

// $0030: distance traveled left to right (starts from 00)
function distance_traveled_left_to_right_starts_from_00() => byte(0x000030)
function distance_traveled_left_to_right_starts_from_00() => word(0x000030)

// $0034: distance traveled (left to right)
//        13= minimum
function distance_traveled_left_to_right() => byte(0x000034)

// $008B: 2 == in level
function in_level() => byte(0x00008B)

// $0098: tracks flynt distance in bike
function tracks_flynt_distance_in_bike() => byte(0x000098)
function tracks_flynt_distance_in_bike() => word(0x000098)

// $00CA: Checkpoints
function checkpoints() => byte(0x0000CA)

// $00F5: Altitude
function altitude() => byte(0x0000F5)

// $012C: Health Bar
function health_bar() => byte(0x00012C)

// $0133: Tracks life counter
function tracks_life_counter() => byte(0x000133)

// $0134: Tracks how many times you've died
function tracks_how_many_times_you_ve_died() => byte(0x000134)

// $0138: weapons
function weapons() => byte(0x000138)

// $047D: Bonuses for all lvs, resets when the level changes
function bonuses_for_all_lvs_resets_when_the_level_changes() => byte(0x00047D)

// $0494: Dong time
function dong_time() => byte(0x000494)
function dong_time() => word(0x000494)

// $04A3: tracks stages, starts from 00
function tracks_stages_starts_from_00() => byte(0x0004A3)

// $25F4: frame counts
function frame_counts() => word(0x0025F4)

// $25F5: tracks time
function tracks_time() => byte(0x0025F5)

// $90DA: Trex's health
function trex_s_health() => byte(0x0090DA)

// $90E2: first boss health bar
//        (varies between lvs)
function first_boss_health_bar() => byte(0x0090E2)

achievement(
    title = "Rad waves", points = 10,
    description = "Complete level 11 without collecting any Bonuses",
    id = 58437, badge = "73981", published = "14/03/2018 00:16:20", modified = "27/11/2022 17:40:40",
    trigger = once(tracks_stages_starts_from_00() == 0x11 && tracks_flynt_distance_in_bike() == 0x733) && never(bonuses_for_all_lvs_resets_when_the_level_changes() > prev(bonuses_for_all_lvs_resets_when_the_level_changes())) && 
              never(tracks_stages_starts_from_00() != 0x11) && bonuses_for_all_lvs_resets_when_the_level_changes() == 0x00 && trigger_when(tracks_flynt_distance_in_bike() == 0x0D) && 
              unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "Rattatak!", points = 10,
    description = "Complete level 12 avoiding all checkpoints",
    id = 58438, badge = "73969", published = "14/03/2018 00:16:27", modified = "19/11/2020 15:28:53",
    trigger = once(distance_traveled_left_to_right_starts_from_00() == 0x0C) && once(distance_traveled_left_to_right_starts_from_00() == 0x4D) && once(distance_traveled_left_to_right_starts_from_00() == 0x8E) && 
              once(distance_traveled_left_to_right_starts_from_00() == 0x160) && distance_traveled_left_to_right_starts_from_00() >= 0x36E && never(tracks_stages_starts_from_00() != 0x15) && 
              never(checkpoints() > 0x00) && unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "White Flag", points = 10,
    description = "Complete level 13 without using the atak button or dying",
    id = 58439, badge = "73970", published = "14/03/2018 00:16:34", modified = "27/11/2022 18:15:25",
    trigger = distance_traveled_left_to_right_starts_from_00() == 0x402 && never(bit1(0x002E7C) == 0x01) && never(tracks_stages_starts_from_00() != 0x16) && 
              never(tracks_life_counter() < prev(tracks_life_counter())) && once(distance_traveled_left_to_right_starts_from_00() == 0x0F) && once(distance_traveled_left_to_right_starts_from_00() ==
               0x23) && once(distance_traveled_left_to_right_starts_from_00() == 0x47) && once(distance_traveled_left_to_right_starts_from_00() == 0x59) && unless(once(dword(0x007D08) ==
               0x55424544)) && never(tracks_how_many_times_you_ve_died() > 0x00)
)

achievement(
    title = "Quick atak!", points = 25,
    description = "Complete level 14 with all Bonuses in less than 115 seconds",
    id = 58440, badge = "72744", published = "14/03/2018 00:16:42", modified = "09/05/2020 05:57:05",
    trigger = tracks_stages_starts_from_00() == 0x19 && never(tracks_stages_starts_from_00() != 0x19) && repeated(112, bonuses_for_all_lvs_resets_when_the_level_changes() >
               prev(bonuses_for_all_lvs_resets_when_the_level_changes())) && once(distance_traveled_left_to_right_starts_from_00() >= 0x323) && bonuses_for_all_lvs_resets_when_the_level_changes() == 0x70 && tracks_time() <=
               0x28 && never(tracks_time() > 0x28) && unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "Timers Out for Kongo", points = 10,
    description = "Complete level 15 with 1 second left in the timer",
    id = 58441, badge = "73971", published = "14/03/2018 00:16:47", modified = "09/05/2020 06:03:25",
    trigger = always_true() && unless(once(dword(0x007D08) == 0x55424544)) &&
              ((dong_time() <= 0xA2 && tracks_stages_starts_from_00() == 0x1A && distance_traveled_left_to_right_starts_from_00() >= 0x30C && never(dong_time() >
                 0xA2) && unless(tracks_stages_starts_from_00() < 0x1A) && unless(distance_traveled_left_to_right_starts_from_00() > 0x1D)) ||
               (unless(screen_id != 0x09) && unless(once(byte(0x00424C) != 0x10)) && unless(once(byte(0x00424C) !=
                 0x61)) && unless(once(byte(0x00424C) != 0x41)) && unless(once(byte(0x00424C) != 0x51)) && 
                unless(once(byte(0x00424C) != 0x10)) && never(screen_id == 0x04) && never(screen_id == 0x09)))
)

achievement(
    title = "We Got the Power", points = 50,
    description = "Complete level 16 without using checkpoints and collecting 25 bonuses or less",
    id = 58442, badge = "73972", published = "14/03/2018 00:16:54", modified = "09/05/2020 06:03:02",
    trigger = tracks_stages_starts_from_00() == 0x1D && never(tracks_stages_starts_from_00() != 0x1D) && bonuses_for_all_lvs_resets_when_the_level_changes() < 0x26 && never(bonuses_for_all_lvs_resets_when_the_level_changes()
               >= 0x26) && never(checkpoints() > 0x00) && never(checkpoints() >= 0x05) && checkpoints() == 0x00 && 
              once(distance_traveled_left_to_right_starts_from_00() == 0x00) && once(distance_traveled_left_to_right_starts_from_00() == 0x0F) && once(distance_traveled_left_to_right_starts_from_00() == 0x2E) && 
              once(distance_traveled_left_to_right_starts_from_00() == 0x60) && distance_traveled_left_to_right_starts_from_00() >= 0x2D5 && unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "End of the Line", points = 25,
    description = "Defeat Doctor X without getting hit",
    id = 58443, badge = "73973", published = "14/03/2018 00:16:59", modified = "09/05/2020 06:02:52",
    trigger = tracks_stages_starts_from_00() == 0x1F && never(tracks_stages_starts_from_00() != 0x1F) && health_bar() == 0x3C && never(health_bar()
               < prev(health_bar())) && once(byte(0x0090F3) == 0x27) && once(byte(0x0090F3) == 0x02) && byte(0x0090F3)
               == 0x00 && once(byte(0x0090F3) == 0x80) && unless(once(dword(0x007D08) == 0x55424544))
)


achievement(
    title = "Police Helicopter", points = 10,
    description = "Collect All bonuses in level 10 without getting hit",
    id = 58436, badge = "73979", published = "14/03/2018 00:16:12", modified = "27/11/2022 17:54:50",
    trigger = health_bar() >= 0x3C && never(health_bar() < prev(health_bar())) && repeated(61, bonuses_for_all_lvs_resets_when_the_level_changes() >
               prev(bonuses_for_all_lvs_resets_when_the_level_changes())) && distance_traveled_left_to_right_starts_from_00() == 0x131 && never(tracks_stages_starts_from_00() != 0x10) && 
              unless(once(dword(0x007D08) == 0x55424544)) && never(in_level() != 0x02)
)


achievement(
    title = "Jurassic Punch", points = 10,
    description = "Defeat the T-rex in 40 seconds or less",
    id = 58435, badge = "73976", published = "14/03/2018 00:15:10", modified = "09/05/2020 06:06:59",
    trigger = once(trex_s_health() == 0xC2) && tracks_stages_starts_from_00() == 0x0F && once(trex_s_health() == 0x78) && trex_s_health()
               == 0x00 && tracks_time() <= 0x0A && never(tracks_time() > 0x0A) && never(tracks_stages_starts_from_00() != 0x0F) && 
              unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "Shake A Leg", points = 10,
    description = "Complete level 8 without using double jump or getting hit",
    id = 58434, badge = "73978", published = "14/03/2018 00:15:05", modified = "09/05/2020 06:07:30",
    trigger = never(bit5(0x000104) == 0x01) && never(health_bar() < prev(health_bar())) && never(health_bar() !=
               0x3C) && tracks_stages_starts_from_00() == 0x0C && once(distance_traveled_left_to_right_starts_from_00() == 0x09) && once(distance_traveled_left_to_right_starts_from_00() == 0x17) && 
              once(checkpoints() == 0x07) && distance_traveled_left_to_right_starts_from_00() == 0x124 && never(tracks_stages_starts_from_00() != 0x0C) && 
              once(checkpoints() == 0x00) && unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "My Precious!", points = 10,
    description = "Collect the hidden 1-up on level 7 and keep going without getting hit from there on",
    id = 58433, badge = "73982", published = "14/03/2018 00:14:46", modified = "09/05/2020 06:07:41",
    trigger = distance_traveled_left_to_right_starts_from_00() == 0x1CF && never(tracks_stages_starts_from_00() != 0x0B) && tracks_stages_starts_from_00() == 0x0B && 
              never(once(health_bar() < prev(health_bar()))) && unless(once(dword(0x007D08) == 0x55424544)) &&
              ((distance_traveled_left_to_right_starts_from_00() == 0x3E && once(tracks_life_counter() > prev(tracks_life_counter())) && altitude() == 0xC0 && 
                unless(checkpoints() < 0x11)) ||
               (once(altitude() == 0xC0) && once(distance_traveled_left_to_right_starts_from_00() == 0x3D) && once(tracks_life_counter() >
                 prev(tracks_life_counter())) && unless(checkpoints() < 0x11)) ||
               (once(altitude() == 0xC0) && once(distance_traveled_left_to_right_starts_from_00() == 0x3F) && once(tracks_life_counter() >
                 prev(tracks_life_counter())) && unless(checkpoints() < 0x11)) ||
               (once(altitude() == 0xA1) && once(distance_traveled_left_to_right_starts_from_00() == 0x3D) && once(tracks_life_counter() >
                 prev(tracks_life_counter())) && unless(checkpoints() < 0x11)) ||
               (once(altitude() == 0xA3) && once(distance_traveled_left_to_right_starts_from_00() == 0x3E) && once(tracks_life_counter() >
                 prev(tracks_life_counter())) && unless(checkpoints() < 0x11)) ||
               (once(altitude() == 0xA2) && once(distance_traveled_left_to_right_starts_from_00() == 0x3F) && once(tracks_life_counter() >
                 prev(tracks_life_counter())) && unless(checkpoints() < 0x11)) ||
               (once(altitude() == 0xB9) && once(distance_traveled_left_to_right_starts_from_00() == 0x3E) && once(tracks_life_counter() >
                 prev(tracks_life_counter())) && unless(checkpoints() < 0x11)))
)

achievement(
    title = "Pathfinder", points = 10,
    description = "Collect all bonuses in level 6 without getting hit",
    id = 58432, badge = "72762", published = "14/03/2018 00:14:35", modified = "09/05/2020 06:07:55",
    trigger = repeated(110, bonuses_for_all_lvs_resets_when_the_level_changes() > prev(bonuses_for_all_lvs_resets_when_the_level_changes())) && tracks_stages_starts_from_00() == 0x0A && health_bar() >= 0x3C && 
              never(health_bar() < prev(health_bar())) && never(tracks_stages_starts_from_00() != 0x0A) && distance_traveled_left_to_right_starts_from_00() == 0xD3 && 
              unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "Righteous Man", points = 10,
    description = "Complete level 5 without turning back (pressing the left button)",
    id = 58431, badge = "73975", published = "14/03/2018 00:14:29", modified = "09/05/2020 06:08:19",
    trigger = tracks_stages_starts_from_00() == 0x07 && distance_traveled_left_to_right() >= 0x00 && never(bit5(0x002E7C) == 0x01) && repeated(93,
               distance_traveled_left_to_right_starts_from_00() > prev(distance_traveled_left_to_right_starts_from_00())) && once(checkpoints() == 0x06) && once(checkpoints() == 0x10) && 
              once(checkpoints() == 0x1F) && once(checkpoints() == 0x22) && once(checkpoints() == 0x26) && 
              once(checkpoints() == 0x02) && once(checkpoints() == 0x05) && once(checkpoints() == 0x17) && 
              once(checkpoints() == 0x14) && once(checkpoints() == 0x18) && once(checkpoints() == 0x1E) && 
              once(checkpoints() == 0x24) && never(tracks_stages_starts_from_00() != 0x07) && distance_traveled_left_to_right_starts_from_00() == 0x2B2 && 
              unless(once(dword(0x007D08) == 0x55424544))
)

// Ticket 60689: Doesnt trigger in Adventure Mode or Free Play.
//               RetroAchievements Hash: d4fecd09b810dba8a76c5766e713e49f
//               Emulator: RetroArch (mGBA 0.11)
//               Emulator Version: 1.15
achievement(
    title = "Killer Queen", points = 10,
    description = "Defeat Queen Spider in level 4 without getting hit",
    id = 58430, badge = "73968", published = "14/03/2018 00:13:08", modified = "27/11/2022 16:44:06",
    trigger = once(tracks_stages_starts_from_00() == 0x05 && first_boss_health_bar() == 0x58) && health_bar() >= 0x3C && never(health_bar() <
               prev(health_bar())) && trigger_when(first_boss_health_bar() == 0x00) && never(tracks_stages_starts_from_00() != 0x05) && 
              unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "Show the Way", points = 10,
    description = "Complete level 3 collecting 10 bonuses or less",
    id = 58429, badge = "73967", published = "14/03/2018 00:12:51", modified = "09/05/2020 06:08:36",
    trigger = tracks_stages_starts_from_00() == 0x03 && never(bonuses_for_all_lvs_resets_when_the_level_changes() > prev(bonuses_for_all_lvs_resets_when_the_level_changes())) && once(tracks_flynt_distance_in_bike() == 0x4B) && 
              never(tracks_stages_starts_from_00() != 0x03) && tracks_flynt_distance_in_bike() == 0x14 && never(bonuses_for_all_lvs_resets_when_the_level_changes() > 0x0B) && 
              never(tracks_flynt_distance_in_bike() == 0x7E34) && unless(once(dword(0x007D08) == 0x55424544))
)

achievement(
    title = "Out of Ammo!", points = 5,
    description = "Complete level 2 with all bonuses collected without pressing b",
    id = 58428, badge = "72761", published = "14/03/2018 00:12:24", modified = "21/09/2022 23:41:46",
    trigger = trigger_when(repeated(102, bonuses_for_all_lvs_resets_when_the_level_changes() > prev(bonuses_for_all_lvs_resets_when_the_level_changes()))) && trigger_when(once(distance_traveled_left_to_right_starts_from_00() ==
               0x2B9)) && once(bonuses_for_all_lvs_resets_when_the_level_changes() == 0x00) && in_level() == 0x02 && unless(once(dword(0x007D08) ==
               0x55424544)) &&
              (always_false() || (never(bit1(0x002E7C) == 0x01) && never(tracks_stages_starts_from_00() != 0x01) && never((prev(tracks_life_counter()) == 0x00 &&
                 tracks_life_counter() == 0x03))))
)

achievement(
    title = "Ready for Action", points = 5,
    description = "Collect All bonuses in level 1 without getting hit",
    id = 58427, badge = "73966", published = "14/03/2018 00:12:10", modified = "09/05/2020 06:08:55",
    trigger = tracks_stages_starts_from_00() == 0x00 && health_bar() >= 0x3C && never(health_bar() < prev(health_bar())) && 
              repeated(84, bonuses_for_all_lvs_resets_when_the_level_changes() > prev(bonuses_for_all_lvs_resets_when_the_level_changes())) && once(distance_traveled_left_to_right_starts_from_00() == 0x2E5) && 
              never(tracks_stages_starts_from_00() != 0x00) && unless(once(dword(0x007D08) == 0x55424544))
)




leaderboard(
    id = 4472, title = "1. Infernal Jungle",
    description = "Complete Leve 1 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x00 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2E5,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4530, title = "2. Aztec Ruins",
    description = "Complete Level 2 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x01 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2B9,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4529, title = "3. Spiders Domain",
    description = "Complete Level 3 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x02 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x29B,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4506, title = "5. Crocoland",
    description = "Complete Level 5 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x04 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x1B3,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4507, title = "6. Queen Spider",
    description = "Beat the Queen Spider in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x05 && in_level() == 0x02 && first_boss_health_bar() == 0x58,
    cancel = in_level() != 0x02,
    submit = first_boss_health_bar() == 0x00,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4508, title = "7. Bow Powa!",
    description = "Complete Level 7 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x06 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2B5,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4509, title = "8.1 MTX (part 1)",
    description = "Complete Level 8 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x07 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0x53,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2B5,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4572, title = "8.2 MTX (part 2)",
    description = "Complete Level 8 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x07 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0x6E,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2B5,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4511, title = "10.1 Climbing the Volcano (part 1)",
    description = "Complete Level 10 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x09 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0x53,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2B5,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4577, title = "10.2 Climbing the Volcano (part 1)",
    description = "Complete Level 10 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x09 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0x6E,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2CE,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4512, title = "11. Lost Temple",
    description = "Complete Level 11 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x0A && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0xD3,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4513, title = "12.1 Welcome to Dinoland (part 1)",
    description = "Complete Level 12 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x0B && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x230,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4573, title = "12.2 Welcome to Dinoland (part 2)",
    description = "Complete Level 12 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x0B && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0x5D,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x10E,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4574, title = "12.3 Welcome to Dinoland (part 3)",
    description = "Complete Level 12 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x0B && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0x92,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x1CF,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4514, title = "13. Beach Games",
    description = "Complete Level 13 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x0C && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = word(0x00F7CC) != 0x00 && prev(word(0x00F7CC)) == 0x00,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4515, title = "14.1 Jurassic Volcano (part 1)",
    description = "Complete Level 14 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x0D && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0x77,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x176,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4575, title = "14.2 Jurassic Volcano (part 2)",
    description = "Complete Level 14 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x0D && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0x49,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x10E,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4576, title = "14.3 Jurassic Volcano (part 3)",
    description = "Complete Level 14 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x0D && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20 && 
             byte(0x000084) == 0xAF,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x1CD,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4547, title = "15. Bat\"s Nest",
    description = "My Leaderboard Description",
    start  = tracks_stages_starts_from_00() == 0x0E && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0xD3,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4517, title = "16. T-Rex",
    description = "Beat the T-Rex in the Fastest Time!",
    start  = tracks_stages_starts_from_00() == 0x05 && in_level() == 0x02 && trex_s_health() == 0xC2,
    cancel = in_level() != 0x02,
    submit = trex_s_health() == 0xC2,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4518, title = "17. Like a Bird",
    description = "Complete Level 17 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x10 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x130,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4520, title = "19. Shells",
    description = "Complete Level 19 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x12 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x124,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4521, title = "20. Air Patrol",
    description = "Complete Level 20 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x13 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x149,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4523, title = "22. Rats Atak!",
    description = "Complete Level 22 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x15 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x371,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4524, title = "23. Tunnel of the Secret Base",
    description = "Complete Level 23 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x16 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x402,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4525, title = "24. Dangerous Water",
    description = "Complete Level 24 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x17 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x361,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4526, title = "25. Crazy Vapour",
    description = "Complete Level 25 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x18 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x38D,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4527, title = "26. Profesor Moran",
    description = "Complete Level 26 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x19 && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x324,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4522, title = "29. Count Down part 2",
    description = "Complete Level 29 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x1C && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2FA,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4528, title = "27. Kongo",
    description = "Complete Level 27 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x1A && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x30C,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4516, title = "28. Regeneration Chamber",
    description = "Complete Level 28 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x1B && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x307,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4544, title = "30. Strength Through Unity",
    description = "Complete Level 30 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x1D && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2D9,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4545, title = "31. The Teleport\"s Corner",
    description = "Complete Level 31 in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x1E && distance_traveled_left_to_right() > 0x13 && in_level() == 0x02 && distance_traveled_left_to_right_starts_from_00() < 0x20,
    cancel = in_level() != 0x02,
    submit = distance_traveled_left_to_right_starts_from_00() == 0x2D9,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

leaderboard(
    id = 4546, title = "32. Doctor X",
    description = "Beat Doctor X in the fastest time!",
    start  = tracks_stages_starts_from_00() == 0x05 && in_level() == 0x02 && byte(0x0090F3) == 0xB4,
    cancel = in_level() != 0x02,
    submit = byte(0x0090F3) == 0xB4,
    value = frame_counts(),
    format = "FRAMES", lower_is_better = true
)

