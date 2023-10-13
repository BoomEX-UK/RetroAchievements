// Destruction Derby 64
// #ID = 10158

const_wreck = 0
const_race  = 1

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

car_names = {
    0x00 : "Car 2",
    0x01 : "Car 1",
    0x02 : "Car 9",
    0x03 : "Car 3",
    0x04 : "Car 222",
    0x05 : "Car 6",
    0x06 : "Car 7",
    0x07 : "Car 18",
    0x08 : "Car 49",
    0x09 : "Car 89",
    0x0a : "Car 31",
    0x0b : "Car 50",
    0x0c : "Baja Buggy",
    0x0d : "Low Rider",
    0x0e : "Woody Wagon",
    0x0f : "Pickup",
    0x10 : "Taxi Cab",
    0x11 : "Blue Deamon",
    0x12 : "Rag Top",
    0x13 : "Hot Rod",
    0x14 : "Ambulance",
    0x15 : "Hatchback",
    0x16 : "Street Rocket",
    0x17 : "Police Car"
}

current_track = byte(0x0958B4)
tracks = {
    // Wreck
    "junkyard" : {
        "id" : 0x00,
        "name" : "The Junkyard",
        "type" : const_wreck
    },
    "aztec" : {
        "id" : 0x01,
        "name" : "Aztec Ruins",
        "type" : const_wreck
    },
    "urban" : {
        "id" : 0x02,
        "name" : "Urban Mayhem",
        "type" : const_wreck
    },
    "zero" : {
        "id" : 0x03,
        "name" : "Ground Zero",
        "type" : const_wreck
    },
    // Race
    "metro" : {
        "id" : 0x04,
        "name" : "Metro Challenge",
        "type" : const_race
    },
    "seascape" : {
        "id" : 0x05,
        "name" : "Seascape Sprint",
        "type" : const_race
    },
    "bayou" : {
        "id" : 0x06,
        "name" : "Bayou Run",
        "type" : const_race
    },
    "terminal" : {
        "id" : 0x07,
        "name" : "Terminal Impact",
        "type" : const_race
    },
    "destruction" : {
        "id" : 0x08,
        "name" : "Destruction Junction",
        "type" : const_race
    },
    "sunset" : {
        "id" : 0x09,
        "name" : "Sunset Canyon",
        "type" : const_race
    },
    "alpine" : {
        "id" : 0x0a,
        "name" : "Alpine Ridge",
        "type" : const_race
    },
    "midnyte" : {
        "id" : 0x0b,
        "name" : "Midnyte Rumble",
        "type" : const_race
    },
}

screens = {
    "race_over"             : 0x1d,
    "derby_results"         : 0x22,
    "race_results"          : 0x23,
    "current_standings"     : 0x24
}

race_total_score            = dword(0x11EF48)
race_results_total_score    = dword(0x095CD4)
in_game                     = byte(0x083AEB)
cars_remaining              = byte(0x1DCCA8)
exp_level                   = word(0x0958B0)
cinematic_camera            = byte(0x09562b)

// Cheats
cheat_all_leagues   = byte(0x1253fa)
cheat_all_cars      = byte(0x1253fb)
cheat_damage_boost  = byte(0x12540d)
cheat_overtime      = byte(0x12540e)
cheat_invincible    = byte(0x12540f)

screen_id = byte(0x11eee8)

function cheatprotection() => cheat_all_leagues + cheat_all_cars +
    cheat_damage_boost + cheat_overtime + cheat_invincible == 0
function demo_mode() => prev(cinematic_camera) == 1

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
        current_track == tracks["alpine"]["id"] &&
        word(0x126188) == 0x0F && 
        prev(race_results_total_score) == 0x87 &&
        race_results_total_score == 0x00
)



// -------------------------------------
// - Leaderboards
// -------------------------------------

for car in cars {
    leaderboard(
        title = "High Score - " + car_names[cars[car]],
        description = "Smash your way to the top with " + car_names[cars[car]],
        start  =    cheatprotection() &&
                    prev(screen_id) == screens["race_over"] &&
                    __ornext(screen_id == screens["derby_results"] || screen_id == screens["race_results"]) &&
                    car_selected == cars[car] &&
                    race_total_score > 0,
        cancel =    always_false(),
        submit =    always_true(),
        value =     measured(race_total_score),
        format = "SCORE",
        lower_is_better = false,
        id = 0
    )
}

for track in tracks {
    leaderboard(
        title = "Course Record - " + tracks[track]["name"],
        description = "Get the highest score on " + tracks[track]["name"],
        start  =    cheatprotection() &&
                    prev(screen_id) == screens["race_over"] &&
                    __ornext(screen_id == screens["derby_results"] || screen_id == screens["race_results"]) &&
                    current_track == tracks[track]["id"] &&
                    race_total_score > 0,
        cancel =    always_false(),
        submit =    always_true(),
        value =     measured(race_total_score),
        format = "SCORE",
        lower_is_better = false,
        id = 0
    )
}

