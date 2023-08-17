// Magmax
// #ID = 1820

stage_id = byte(0x00000d)
game_state = byte(0x000086)
game_states = {
    "titlescreen": 0x00,
    "demo": 0x01,
    "ingame": 0x02
}

meigetsu    = byte(0x0006b7)
location    = byte(0x000000)
robot_phase = byte(0x00008b)
lives       = byte(0x000058)
score       = (byte(0x0600)*100) +
              (byte(0x0601)*1000) +
              (byte(0x0602)*10000) +
              (byte(0x0603)*100000) +
              (byte(0x0604)*1000000) +
              (byte(0x0605)*10000000)
distance    = word(0x000e)

locations = {
    "overground": 0x00,
    "underground": 0x01
}

meigetsu_state = {
    "off": 0xFF,
    "on": 0x55
}

// -------------------------------------
// - Unresolved
// -------------------------------------



// -------------------------------------
// - Resolved
// -------------------------------------

// Ticket: 60893	
//      Triggered after first loop, but shouldn’t have triggered until completion of third loop. Achievement removed from my profile.
//      RetroAchievements Hash: acd1b9c97b312fe4ea6422a525c72dab
//      Emulator: RetroArch (Mesen)
//      Emulator Version: 1.15.0
achievement(
    title = "MEIGETSU !", points = 50,
    description = "Finish 3 Loops for MEIGETSU",
    id = 20533, badge = "20243", published = "28/01/2015 13:25:37", modified = "12/12/2021 18:24:45",
    trigger =   game_state == game_states["ingame"] &&
                prev(meigetsu) == meigetsu_state["off"] &&
                meigetsu == meigetsu_state["on"]
)

// Ticket: 54304	
//      I reached the dragon in "fighter" form (i.e. no upgrades/one hit from defeat) and this achievement immediately triggered.
//      RetroAchievements Hash: acd1b9c97b312fe4ea6422a525c72dab
//      Emulator: RALibRetro (Mesen 0.9.9)
//      Emulator Version: 1.4
achievement(
    title = "Plains Stage 2 (Above ground)", points = 10,
    description = "Beat the Babylon Dragon Ship",
    id = 20521, badge = "20238", published = "28/01/2015 12:49:52", modified = "12/12/2021 18:24:49",
    trigger =   game_state == game_states["ingame"] &&
                once( stage_id == 0x0a ) &&
                never(game_state != game_states["ingame"]) &&
                trigger_when(stage_id == 0x02 )&&
                prev(stage_id) == 0x0e &&
                location == locations["overground"]
)

// Ticket: 50828	
//      This triggered just by reaching the boss with the MagMax. It's possible the other one I reported triggered for that reason as well, and I only thought it was when I got hit because I happened to right when the achievement I got before that one finished displaying. It's... hard to explain, sorry, but basically: these "stage mastered" achievements likely just pop when you get to the boss with the MagMax.
//      RetroAchievements Hash: acd1b9c97b312fe4ea6422a525c72dab
//      Emulator: RetroArch (Mesen 0.9.9)
//      Emulator Version: 1.10.3
achievement(
    title = "Plains Stage 2 mastered (Above ground)", points = 10,
    description = "Beat the Babylon Dragon Ship with MagMax recomposed!",
    id = 20523, badge = "20238", published = "28/01/2015 12:50:16", modified = "12/12/2021 18:24:44",
    trigger =   game_state == game_states["ingame"] &&
                once( stage_id == 0x0a ) &&
                never(game_state != game_states["ingame"]) &&
                trigger_when(stage_id == 0x02 )&&
                prev(stage_id) == 0x0e &&
                location == locations["overground"] &&
                robot_phase == 0x05
)

// Ticket: 50827	
//      This triggered when I got hit by the boss as the fully reconstructed MagMax, not when I beat the boss. I actually lost the MagMax.
//      RetroAchievements Hash: acd1b9c97b312fe4ea6422a525c72dab
//      Emulator: RetroArch (Mesen 0.9.9)
//      Emulator Version: 1.10.3
achievement(
    title = "Machine City Stage mastered (Above ground)", points = 10,
    description = "Beat the Babylon Dragon Ship with MagMax recomposed!",
    id = 20519, badge = "20240", published = "28/01/2015 12:49:26", modified = "12/12/2021 18:24:50",
    trigger =   game_state == game_states["ingame"] &&
                trigger_when(stage_id == 0x09 )&&
                prev(stage_id) == 0x0f &&
                location == locations["overground"] &&
                robot_phase == 0x05
)

// -------------------------------------
// - Closed
// -------------------------------------



// -------------------------------------
// - Non Ticket Fixes (Bonus)
// -------------------------------------

achievement(
    title = "Plains Stage 2 mastered (Underground)", points = 10,
    description = "Beat the Babylon Dragon Ship with MagMax recomposed!",
    id = 20524, badge = "20237", published = "28/01/2015 12:50:19", modified = "12/12/2021 18:24:48",
    trigger =   game_state == game_states["ingame"] &&
                once( stage_id == 0x0a ) &&
                never(game_state != game_states["ingame"]) &&
                trigger_when(stage_id == 0x02 )&&
                prev(stage_id) == 0x0e &&
                location == locations["underground"] &&
                robot_phase == 0x05
)

// -------------------------------------
// - Leaderboards
// -------------------------------------

leaderboard(
    title = "High Score",
    description = "How many points can you get?",
    start  =    prev(lives) == 0x00 &&
                lives == 0xFF &&
                game_state == game_states["ingame"],
    cancel =    always_false(),
    submit =    always_true(),
    value =     measured(score),
    format = "SCORE",
    lower_is_better = false,
    id = 73993
)

leaderboard(
    title = "High Score - Meigetsu",
    description = "How many points can you get? (Must be in Meigetsu mode)",
    start  =    prev(lives) == 0x00 &&
                lives == 0xFF &&
                game_state == game_states["ingame"] &&
                meigetsu == meigetsu_state["on"],
    cancel =    always_false(),
    submit =    always_true(),
    value =     measured(score),
    format = "SCORE",
    lower_is_better = false,
    id = 73995
)

leaderboard(
    title = "Distance Travelled (meters)",
    description = "How far did you travel with Magmax?",
    start  =    prev(lives) == 0x00 &&
                lives == 0xFF &&
                game_state == game_states["ingame"],
    cancel =    always_false(),
    submit =    always_true(),
    value =     measured(distance),
    format = "VALUE",
    lower_is_better = false,
    id = 73994
)

leaderboard(
    title = "Distance Travelled (meters) - Meigetsu",
    description = "How far did you travel with Magmax?",
    start  =    prev(lives) == 0x00 &&
                lives == 0xFF &&
                game_state == game_states["ingame"] &&
                meigetsu == meigetsu_state["on"],
    cancel =    always_false(),
    submit =    always_true(),
    value =     measured(distance),
    format = "VALUE",
    lower_is_better = false,
    id = 73996
)