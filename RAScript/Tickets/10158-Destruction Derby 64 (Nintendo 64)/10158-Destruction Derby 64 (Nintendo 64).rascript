// Destruction Derby 64
// #ID = 10158

car_selected = byte(0x0958C0)
cars = {
    "car_2": 0x00,
    "car_1": 0x01,
    "car_9": 0x02,
    "car_3": 0x03,
    "car_222": 0x04,
    "car_6": 0x05,
    "car_7": 0x06,
    "car_18": 0x07,
    "car_49": 0x08,
    "car_89": 0x09,
    "car_31": 0x0a,
    "car_50": 0x0b,
    "baja_buggy": 0x0c,
    "low_rider": 0x0d,
    "woody_wagon": 0x0e,
    "pickup": 0x0f,
    "taxi_cab":0x10,
    "blue_demon":0x11,
    "rag_top": 0x12,
    "hot_rod": 0x13,
    "ambulance": 0x14,
    "hatchback": 0x15,
    "street_rocket": 0x16,
    "police_car": 0x17
}

current_track = byte(0x0958B4)
tracks = {
    // Wreck
    "junkyard"      : 0x00,
    "aztec_ruins"   : 0x01,
    "urban_mayhem"  : 0x02,
    "ground_zero"   : 0x03,
    // Race
    "metro_challenge"       : 0x04,
    "seascape_sprint"       : 0x05,
    "unkown0x06"            : 0x06,
    "terminal_impact"       : 0x07,
    "destruction_junction"  : 0x08,
    "bayou_run"             : 0x09,
    "alpine_ridge"          : 0x0a,
    "midnyte_rumble"        : 0x0b
}

race_total_score            = dword(0x11EF48)
race_results_total_score    = dword(0x095CD4)
in_game                     = byte(0x083AEB)
cars_remaining              = byte(0x1DCCA8)
exp_level                   = word(0x0958B0)

// Cheats
cheat_all_leagues   = byte(0x1253fa)
cheat_all_cars      = byte(0x1253fb)
cheat_damage_boost  = byte(0x12540d)
cheat_overtime      = byte(0x12540e)
cheat_invincible    = byte(0x12540f)

function cheatprotection() => cheat_all_leagues + cheat_all_cars +
    cheat_damage_boost + cheat_overtime + cheat_invincible == 0

// -------------------------------------
// - Unresolved
// -------------------------------------

// -------------------------------------
// - Resolved
// -------------------------------------

// Ticket 58424: Same issue as the previous tickets, Seascape track, using the rag top after completing the lowrider
//               achievement
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RetroArch (Parallel)
//               Emulator Version: 1.15.0
achievement(
    title = "Nothing Left But Rags", points = 25,
    description = "Get a score of at least 450 in a race or arena with the Rag Top",
    id = 48447, badge = "49279", published = "23/05/2017 07:15:43", modified = "22/10/2019 16:39:01",
    trigger =
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["rag_top"] &&
        prev(race_total_score) < 450 &&
        race_total_score >= 450
)

// Ticket 58433: Unlocked at the start of a race with the pickup, after finishing the professional cup with the Police
//               Car
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RALibRetro (Parallel)
//               Emulator Version: 1.15.0
achievement(
    title = "Riding Hot", points = 25,
    description = "Get a score of at least 750 in a race or arena with the Hot Rod",
    id = 48448, badge = "49280", published = "23/05/2017 07:15:44", modified = "22/10/2019 16:39:01",
    trigger =
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["hot_rod"] &&
        prev(race_total_score) < 750 &&
        race_total_score >= 750
)

// Ticket 58422: Working through the vehicle specific score achievement on the seascape track. This popped at the start
//               of the race after just completing the same achievement with the Woody Van
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RetroArch (Parallel)
//               Emulator Version: 1.15.0
achievement(
    title = "Flying Like a Rocket", points = 25,
    description = "Get a score of at least 450 in a race or arena with the Street Rocket",
    id = 48437, badge = "49272", published = "23/05/2017 07:15:16", modified = "02/12/2020 00:49:54",
    trigger =
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["street_rocket"] &&
        prev(race_total_score) < 450 &&
        race_total_score >= 450
)

// Ticket 58425: Unlocked at the start of the race, Seascape track, after scoring 667 with the Rag Top previously.
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RetroArch (Parallel)
//               Emulator Version: 1.15.0
achievement(
    title = "Only Playing Fare", points = 25,
    description = "Get a score of at least 650 in a race or arena with the Taxi",
    id = 48438, badge = "49270", published = "23/05/2017 07:15:27", modified = "02/12/2020 00:49:00",
    trigger =
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["taxi_cab"] &&
        prev(race_total_score) < 650 &&
        race_total_score >= 650
)

// Ticket 60908: Earned when starting Arcade Amateur Seascape Sprint, after having run the same race earlier as the Low
//               Rider
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RetroArch (Mupen64Plus-Next 2.5-Vulkan 4353b0a)
//               Emulator Version: 1.15.0
achievement(
    title = "I'm a Little Demon", points = 25,
    description = "Get a score of at least 450 in a race or arena with the Blue Demon",
    id = 48441, badge = "49273", published = "23/05/2017 07:15:32", modified = "02/12/2020 00:50:34",
    trigger =   
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["blue_demon"] &&
        prev(race_total_score) < 450 &&
        race_total_score >= 450
)

// Ticket 58423: Doing the vehicle specific achievements on Seascape, this popped at the start of the race after doing
//               the previous challenge with the Speed Demon
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RALibRetro (Parallel)
//               Emulator Version: 1.15.0
achievement(
    title = "Riding Low, Hitting Hard", points = 25,
    description = "Get a score of at least 500 in a race or arena with the Low Rider",
    id = 48442, badge = "49274", published = "23/05/2017 07:15:34", modified = "02/12/2020 00:49:48",
    trigger =
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["low_rider"] &&
        prev(race_total_score) < 500 &&
        race_total_score >= 500
)

// Ticket 58427: Popped at race start with the hatchback after scoring 550 with the taxi before it.
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RetroArch (Parralel)
//               Emulator Version: 1.15.0
achievement(
    title = "Get Off My Back", points = 25,
    description = "Get a score of at least 450 in a race or arena Hatchback",
    id = 48443, badge = "49275", published = "23/05/2017 07:15:35", modified = "02/12/2020 00:49:38",
    trigger =
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["hatchback"] &&
        prev(race_total_score) < 450 &&
        race_total_score >= 450
)

// Ticket 60911: Earned when starting Arcade Legend Seascape Sprint after completing a previous run with the ambulance
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RetroArch (Mupen64Plus-Next (2.5-Vulkan 4353b0a))
//               Emulator Version: 1.15.0
// Ticket 58426: Popped at race start with the baja buggy after scoring 612 with the Taxi, arcade mode, seascape track
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RetroArch (Parallel)
//               Emulator Version: 1.15.0
achievement(
    title = "Bugging Around", points = 25,
    description = "Get a score of at least 500 in a race or arena with the Baja Buggy",
    id = 48444, badge = "49276", published = "23/05/2017 07:15:37", modified = "02/12/2020 00:50:10",
    trigger =
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["baja_buggy"] &&
        prev(race_total_score) < 500 &&
        race_total_score >= 500
)


// Ticket 63143: The achievement triggered at wrong tume.
//               I've selected Arcade->Novice->The Junkyard and selected Woody Wagon, and after pressing start after
//               the rumble pack warning, the achievement triggered.
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RAP64
//               Emulator Version: 1.0
achievement(
    title = "Hitting Hard With My Woody", points = 25,
    description = "Get a score of at least 400 in a race or arena Woody Wagon",
    id = 48446, badge = "49278", published = "23/05/2017 07:15:41", modified = "22/10/2019 16:39:01",
    trigger = 
        in_game == 0x01 && 
        cheatprotection()  &&
        car_selected == cars["woody_wagon"] &&
        prev(race_total_score) < 400 &&
        race_total_score >= 400
)


// -------------------------------------
// - Closed
// -------------------------------------

// Ticket 58432: Unlocked despite coming second in the Junkyard arena. Using the police car.
//               RetroAchievements Hash: 7FCCB47498EEC06E96AE9372247D1E90
//               Emulator: RALibRetro (Parallel)
//               Emulator Version: 1.15.0
achievement(
    title = "They Call Me a Pro", points = 10,
    description = "Win 1st in every race & arena in Professional",
    id = 48451, badge = "49309", published = "23/05/2017 07:20:44", modified = "22/10/2019 16:39:01",
    trigger =
        cheatprotection()  &&
        exp_level == 0x02 &&
        current_track == tracks["alpine_ridge"] &&
        word(0x126188) == 0x0F && 
        prev(race_results_total_score) == 0x87 &&
        race_results_total_score == 0x00
)