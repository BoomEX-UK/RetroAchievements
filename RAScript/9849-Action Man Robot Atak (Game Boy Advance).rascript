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
    0x01 : "Infernal Jungle",
    0x1f : "Aztec Ruins",
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
    0x06 : "Like a Bird",
    0x83 : "Surf Atak",
    0x1b : "Rats Attack!",
    0x19 : "Tunnel of the Secret Base",
    0x1d : "Professor Moran",
    0x0c : "Kongo",
    0x21 : "Strength Through Unity",
    0x10 : "Doctor X",
    // Additional Advanced, Time Attack and Free Play
    0x02 : "Spiders' Domain",
    0x03 : "Crocoland",
    0x20 : "Bow Powa!",
    0x82 : "Shooting Rocks",
    0x0a : "Climbing the Volcano Pt.1",
    0x0b : "Climbing the Volcano Pt.2",
    0x14 : "Jurassic Volcano Pt.1",
    0x15 : "Jurassic Volcano Pt.2",
    0x16 : "Jurassic Volcano Pt.3",
    0x18 : "Bats' Nest",
    0x05 : "Shells",
    0x07 : "Air Patrol",
    0x84 : "Surfin' Island X",
    0x1c : "Dangerous Water",
    0x1a : "Crazy Vapour",
    0x1e : "Regeneration Tower",
    0x0d : "Count Down Part 2",
    0x22 : "The Teleport's Corner"
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
        "description" : "Queen Spider Battle",
        "points" : 3
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
        "description" : "T-Rex Battle",
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
    },
    "moran" : {
        "win_stage" : 0x1d,
        "title" : "Total Moran",
        "description" : "Professor Moran Lab",
        "points" : 3
    },
    "kongo" : {
        "win_stage" : 0x0c,
        "title" : "Monkey Business",
        "description" : "Kongo",
        "points" : 3
    },
    "drx" : {
        "win_stage" : 0x10,
        "title" : "Action Force Victory",
        "description" : "Dr X Battle",
        "points" : 10
    }
}

advanced_ach = {
    "web" : {
        "win_stage" : 0x02,
        "title" : "Web of Flies",
        "description" : "Spiders Domain area",
        "points" : 3
    },
    "spider" : {
        "win_stage" : 0x20,
        "title" : "Beau Power",
        "description" : "Bow Powa! area",
        "points" : 3
    },
    "volcano" : {
        "win_stage" : 0x0b,
        "title" : "Volcano Biking area",
        "description" : "Climbing the Volcano",
        "points" : 4
    },
    "bats" : {
        "win_stage" : 0x18,
        "title" : "Flying Rats",
        "description" : "Bats' Nest area",
        "points" : 4
    },
    "air" : {
        "win_stage" : 0x07,
        "title" : "Patrolling the Skies",
        "description" : "Air Patrol area",
       "points" : 4
    },
    "water" : {
        "win_stage" : 0x1c,
        "title" : "Crawling through the sewers",
        "description" : "Dangerous Water area",
        "points" : 5
    },
    "regen" : {
        "win_stage" : 0x1e,
        "title" : "Regenerative Destruction",
        "description" : "Regeneration Tower area",
        "points" : 5
    },
    "tele" : {
        "win_stage" : 0x0d,
        "title" : "Beam Me Up",
        "description" : "The Teleport's Corner area",
        "points" : 10
    },
    "drx" : {
        "win_stage" : 0x10,
        "title" : "Action Force Advanced",
        "description" : "Dr X Battle",
        "points" : 25
    }
}

time_ach = {
    "croc" : {
        "win_stage" : 0x03,
        "title" : "CrocoMan",
        "description" : "Crocoland area",
        "points" : 4
    },
    "rocks" : {
        "win_stage" : 0x82,
        "title" : "Rock n Roll",
        "description" : "Shooting Rocks area",
        "points" : 4
    },
    "j_volcano" : {
        "win_stage" : 0x16,
        "title" : "Dinosaurs & Lava",
        "description" : "Jurrasic Volcano area",
        "points" : 5
    },
    "shells" : {
        "win_stage" : 0x05,
        "title" : "Flynt Sells Sea Shells",
        "description" : "Shells area",
        "points" : 5
    },
    "surf_x" : {
        "win_stage" : 0x84,
        "title" : "Crusing the Coastline",
        "description" : "Surfin' Island X",
        "points" : 5
    },
    "vapour" : {
        "win_stage" : 0x1a,
        "title" : "Pungent Pathway",
        "description" : "Crazy Vapour area",
        "points" : 5
    },
    "cd2" : {
        "win_stage" : 0x0d,
        "title" : "King Kongo",
        "description" : "Count Down Part 2 area",
        "points" : 10
    },
    "drx" : {
        "win_stage" : 0x10,
        "title" : "Action Force Against The Clock",
        "description" : "Dr X Battle",
        "points" : 25
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
bonus_total_adventure = byte(0x00047f)
bonus_total_advanced = byte(0x00047e)
lives = byte(0x000133)
health_platform = byte(0x00012c)
health_race = byte(0x0001ca)
character_flags = 0x000104
stage_time_frames = dword(0x00044c)
stage_time_seconds = stage_time_frames / 60
checkpoint_x = dword(0x0000c8)
time_attack_remaining_frames = dword(0x000494)
time_attack_remaining_seconds = time_attack_remaining_frames / 60
weapon_id = byte(0x000138)

function challenge_on(stage){
    return
        once(
            (prev(stage_id) != stage && stage_id == stage) ||
            (stage_id == stage && prev(in_game_loading_flag) != 00 && in_game_loading_flag == 00)
        ) && never(
            stage_id != stage || (in_game_loading_flag != 00 && in_game_loading_flag != 06)
        )
}

// ----------------------------------------------------------------------------
// -- Achievements Carried Forwards
// ----------------------------------------------------------------------------

legacy_weapon_ach = {
    1 : {
        "id" : 58420,
        "title" : "Certified Weeb",
        "description" : "Pick up a fresh batch of shurikens",
        "points" : 1,
        "badge" : "72738",
        "trigger" : (prev(weapon_id) != 0x01 && weapon_id == 0x01)
    },
    2 : {
        "id" : 58421,
        "title" : "Gun Man!",
        "description" : "Pick up a Rocket Launcher",
        "points" : 1,
        "badge" : "72739",
        "trigger" : (prev(weapon_id) != 0x03 && weapon_id == 0x03)
    },
    3 : {
        "id" : 58422,
        "title" : "Ripper Boomerang",
        "description" : "Pick up the boomerang",
        "points" : 1,
        "badge" : "72740",
        "trigger" : (prev(weapon_id) != 0x05 && weapon_id == 0x05)
    },
    4 : {
        "id" : 58423,
        "title" : "License to Kill",
        "description" : "Pick up the assault rifle",
        "points" : 1,
        "badge" : "72741",
        "trigger" : (prev(weapon_id) != 0x02 && weapon_id == 0x02)
    }
}

legacy_challenge_ach = {
    1 : {  // Done
        "id" : 58427,
        "title" : "Ready for Action",
        "description" : "Collect All 84 bonuses in level 'Infernal Jungle' and finish the stage without getting hit",
        "points" : 5,
        "badge" : "73966",
        "win_stage" : 0x01,
        "trigger" : (bonus_collected == bonus_total_adventure && never(prev(health_platform) > health_platform))
    },
    2 : { // Done
        "id" : 58428,
        "title" : "Out of Ammo!",
        "description" : "Complete 'Aztec Ruins' with all bonuses collected and without pressing B",
        "points" : 5,
        "badge" : "72761",
        "win_stage" : 0x1f,
        "trigger" : (bonus_collected == bonus_total_adventure && never(bit1(0x0000d0) == 1))
    },
    3 : { // Done
        "id" : 58429,
        "title" : "Show the Way",
        "description" : "Complete 'Dirt Board In Action' collecting 10 bonuses or less",
        "points" : 10,
        "badge" : "73967",
        "win_stage" : 0x81,
        "trigger" : (bonus_collected <= 10)
    },
    4 : { // Done
        "id" : 58430,
        "title" : "Killer Queen",
        "description" : "Defeat 'Queen Spider' without getting hit",
        "points" : 10,
        "badge" : "73968",
        "win_stage" : 0x0e,
        "trigger" : never(prev(health_platform) > health_platform)
    },
    5 : { // Done
        "id" : 58431,
        "title" : "Righteous Man",
        "description" : "Complete 'MTX' without turning back (pressing the left button)",
        "points" : 10,
        "badge" : "73975",
        "win_stage" : 0x09,
        "trigger" : never(bit5(0x0000d0) == 1)
    },
    6 : { // Done
        "id" : 58432,
        "title" : "Pathfinder",
        "description" : "Collect all bonuses in 'Lost Temple' without getting hit",
        "points" : 10,
        "badge" : "72762",
        "win_stage" : 0x17,
        "trigger" : (never(prev(health_platform) > health_platform) && bonus_collected == bonus_total_adventure)
    },
    7 : { // Done
        "id" : 58433,
        "title" : "My Precious!",
        "description" : "Complete Section 3 of 'Welcome to Dinoland' without getting hit",
        "points" : 10,
        "badge" : "73982",
        "win_stage" : 0x13,
        "trigger" : never(prev(health_platform) > health_platform)
    },
    8 : { // Done
        "id" : 58434,
        "title" : "Shake A Leg",
        "description" : "Complete 'Beach Games' without using double jump or getting hit",
        "points" : 10,
        "badge" : "73978",
        "win_stage" : 0x04,
        "trigger" : never(prev(health_platform) > health_platform || bit5(character_flags) == 1)
    },
    9 : { // Done
        "id" : 58435,
        "title" : "Jurassic Punch",
        "description" : "Defeat the T-rex in 40 seconds or less",
        "points" : 10,
        "badge" : "73976",
        "win_stage" : 0x0f,
        "trigger" : (prev(stage_time_frames) < stage_time_frames && stage_time_seconds <= 40)
    },
    10 : { // Done
        "id" : 58436,
        "title" : "Police Helicopter",
        "description" : "Collect All bonuses on 'Like a Bird' without getting hit",
        "points" : 10,
        "badge" : "73979",
        "win_stage" : 0x06,
        "trigger" : (never(prev(health_platform) > health_platform) && bonus_collected == bonus_total_adventure)
    },
    11 : { // Done
        "id" : 58437,
        "title" : "Rad waves",
        "description" : "Complete 'Surf Atak' without collecting any Bonuses",
        "points" : 10,
        "badge" : "73981",
        "win_stage" : 0x83,
        "trigger" : (bonus_collected == 0)
    },
    12 : { // Done
        "id" : 58438,
        "title" : "Rattatak!",
        "description" : "Complete 'Rats Attack!' avoiding all checkpoints",
        "points" : 10,
        "badge" : "73969",
        "win_stage" : 0x1b,
        "trigger" : (checkpoint_x == 0x00003800)
    },
    13 : { // Done
        "id" : 58439,
        "title" : "White Flag",
        "description" : "Complete 'Tunnel of the Secret Base' without pressing A or dying",
        "points" : 10,
        "badge" : "73970",
        "win_stage" : 0x19,
        "trigger" : never(health_platform == 0 || bit0(0x0000d0) == 1)
    },
    14 : { // Done
        "id" : 58440,
        "title" : "Quick atak!",
        "description" : "Complete 'Professor Moran' with all Bonuses in less than 115 seconds",
        "points" : 25,
        "badge" : "72744",
        "win_stage" : 0x1d,
        "trigger" : (bonus_collected == bonus_total_adventure && prev(stage_time_frames) < stage_time_frames && stage_time_seconds < 115)
    },
    15 : { // Done
        "id" : 58441,
        "title" : "Timers Out for Kongo",
        "description" : "Complete 'Kongo' with 1 second left in the timer",
        "points" : 10,
        "badge" : "73971",
        "win_stage" : 0x0c,
        "trigger" : (time_attack_remaining_frames > 0x39 && time_attack_remaining_frames <= 0x75)
    },
    16 : { // Done
        "id" : 58442,
        "title" : "We Got the Power",
        "description" : "Complete 'Strength Through Unity' without using checkpoints and collecting 25 bonuses or less",
        "points" : 50,
        "badge" : "73972",
        "win_stage" : 0x21,
        "trigger" :  (checkpoint_x == 0x00004800 && bonus_collected<=25)
    },
    17 : { // Done
        "id" : 58443,
        "title" : "End of the Line",
        "description" : "Defeat Doctor X without getting hit",
        "points" : 25,
        "badge" : "73973",
        "win_stage" : 0x10,
        "trigger" : never(prev(health_platform) > health_platform)
    },
}

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

for ach in adventure_ach {
    stub = adventure_ach[ach]
    achievement(
        title       = "Adventure Man: " + stub["title"],
        description = "Complete the " + stub["description"] + " on Adventure Mode (No Passwords)",
        points = stub["points"],
        trigger     = not_cheating() && 
                    game_mode == game_modes["adventure"]["id"] &&
                    stage_id == stub["win_stage"] &&
                    play_state != play_states["menu"]["id"] &&
                    stage_won() &&
                    lockout_cheats_all() 
    )
}

for ach in advanced_ach {
    stub = advanced_ach[ach]
    achievement(
        title       = "Advanced Man: " + stub["title"],
        description = "Complete the " + stub["description"] + " on Advanced Mode (Pw JUNGLE Allowed)",
        points = stub["points"],
        trigger     = not_cheating() && 
                    game_mode == game_modes["advanced"]["id"] &&
                    stage_id == stub["win_stage"] &&
                    play_state != play_states["menu"]["id"] &&
                    stage_won() &&
                    lockout_cheats_advanced() 
    )
}

for ach in time_ach {
    stub = time_ach[ach]
    achievement(
        title       = "Speedy Man: " + stub["title"],
        description = "Complete the " + stub["description"] + " on Time Attack Mode (Pw HURRY Allowed)",
        points = stub["points"],
        trigger     = not_cheating() && 
                    game_mode == game_modes["time_attack"]["id"] &&
                    stage_id == stub["win_stage"] &&
                    play_state != play_states["menu"]["id"] &&
                    stage_won() &&
                    lockout_cheats_timeattack() 
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
        trigger     = not_cheating() && 
                    play_state != play_states["menu"]["id"] &&
                    stub["trigger"]
    )
}

for ach in legacy_challenge_ach {
    stub = legacy_challenge_ach[ach]
    achievement(
        id          = stub["id"],
        title       = stub["title"],
        description = stub["description"] + " (Pw JUNGLE Allowed)",
        points      = stub["points"],
        badge       = stub["badge"], 
        trigger     = 
            not_cheating() && 
            challenge_on(stub["win_stage"]) &&
            stage_id == stub["win_stage"] &&
            play_state != play_states["menu"]["id"] &&
            trigger_when(stage_won()) &&
            stub["trigger"] && 
            lockout_cheats_advanced()
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

rich_presence_conditional_display( play_state > 0 && game_mode == game_modes["adventure"]["id"], "{0}x{6} {1} | {2}{3}/{4} | {5}",
    emoji,
    rich_presence_lookup("modes",game_mode,rp_game_modes,fallback="?"),
    emoji_coin,
    rich_presence_macro("Number",bonus_collected),
    rich_presence_macro("Number",bonus_total_adventure),
    rich_presence_lookup("stages",stage_id,stages,fallback="?"),
    rich_presence_macro("Number",lives)
)

rich_presence_conditional_display( play_state > 0, "{0}x{7} {1} | {2}{3}/{4}[{5}] | {6}",
    emoji,
    rich_presence_lookup("modes",game_mode,rp_game_modes,fallback="?"),
    emoji_coin,
    rich_presence_macro("Number",bonus_collected),
    rich_presence_macro("Number",bonus_total_advanced),
    rich_presence_macro("Number",bonus_total_adventure),
    rich_presence_lookup("stages",stage_id,stages,fallback="?"),
    rich_presence_macro("Number",lives)
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


///////////////////////


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

