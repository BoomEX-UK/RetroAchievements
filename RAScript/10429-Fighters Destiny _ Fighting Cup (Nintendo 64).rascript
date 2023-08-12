// Fighters Destiny | Fighting Cup
// #ID = 10429

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

winstyles = {
    "ringout"   : {
        "id": 0,
        "name" : "Ringout"
    },
    "judge"     : {
        "id": 1,
        "name" : "Judge"
    },
    "throwdown" : {
        "id": 2,
        "name" : "Throwdown"
    },
    "counter"   : {
        "id": 3,
        "name" : "Counter"
    },
    "knockdown" : {
        "id": 4,
        "name" : "Knockdown"
    },
    "special"   : {
        "id": 5,
        "name" : "Special"
    },
}

stages = {
    0x00 : "Fire Mountain",
    0x01 : "Desert",
    0x02 : "Highlands",
    0x03 : "Hong Kong",
    0x04 : "Coliseum",
    0x05 : "Jungle",
    0x06 : "Ninja Room",
    0x07 : "Suspension Bridge",
    0x08 : "Palace",
    0x09 : "Observation",
    0x0a : "Pasture",
    0x0b : "Joker's Room",
    0x0c : "Blue Hell Mountain",
    0x0d : "Palace"
}

round_status = {
    "stage_intro": 0x00,
    "ready": 0x01,
    "fighting": 0x02,
    "win_onstage": 0x03,
    "win_offstage": 0x04,
    "win_judge": 0x06,
    "replay": 0x07,
    "continue": 0x08,
    "fight_over": 0x09
}

difficulty = {
    "easy"      : 0x00,
    "normal"    : 0x01,
    "hard"      : 0x02,
    "crazy"     : 0x03
}

game_modes = {
    "vs_com"            : 0x00,
    "record_attack"     : 0x02,
    "master_challenge"  : 0x03,
    "training"          : 0x04,
    "options"           : 0x05
}

characters = {
    "ryuji": {
        "name": "Ryuji",
        "normal_id": 0x00,
        "alt_id": 0x0e
    },
    "bob": {
        "name": "Bob",
        "normal_id": 0x01,
        "alt_id": 0x0f
    },
    "pierre": {
        "name": "Pierre",
        "normal_id": 0x02,
        "alt_id": 0x10
    },
    "meiling": {
        "name": "Meiling",
        "normal_id": 0x03,
        "alt_id": 0x11
    },
    "leon": {
        "name": "Leon",
        "normal_id": 0x04,
        "alt_id": 0x12
    },
    "abdul": {
        "name": "Abdul",
        "normal_id": 0x05,
        "alt_id": 0x13
    },
    "ninja": {
        "name": "Ninja",
        "normal_id": 0x06,
        "alt_id": 0x14
    },
    "tomahawk": {
        "name": "Tomahawk",
        "normal_id": 0x07,
        "alt_id": 0x15
    },
    "valarie": {
        "name": "Valarie",
        "normal_id": 0x08,
        "alt_id": 0x16
    },
    "boro": {
        "name": "Boro",
        "normal_id": 0x09,
        "alt_id": 0x17
    },
    "ushi": {
        "name": "Ushi",
        "normal_id": 0x0a,
        "alt_id": 0x18
    },
    "joker": {
        "name": "Joker",
        "normal_id": 0x0b,
        "alt_id": 0x19
    },
    "master": {
        "name": "Master",
        "normal_id": 0x0c,
        "alt_id": 0x1a
    },
    "robert": {
        "name": "Robert",
        "normal_id": 0x0d,
        "alt_id": 0x1b
    }
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

current_screen_id           = byte(0x2ef654)
const_screen_boot           = 0x00
const_screen_intro          = 0x0c
const_screen_menus          = 0x0b
const_screen_survival       = 0x06
const_screen_fastest        = 0x07
const_screen_rodeo          = 0x08

current_screen_staging      = byte(0x22aa98)
const_staging_fight         = 0x0a
const_staging_char_select   = 0x02

current_stage_number = byte(0x2ef678)

round_info = {
    "state" : byte(0x209740),
    "winner": byte(0x209744)
}
const_winner_p1 = 0
const_winner_p2 = 1

p1_victory_info = {
    "rounds_won": byte(0x209754),
    "round_win_style": {
        1 : byte(0x20975b),
        2 : byte(0x20975a),
        3 : byte(0x209759),
        4 : byte(0x209758),
        5 : byte(0x20975f),
        6 : byte(0x20975e),
        7 : byte(0x20975d),
        8 : byte(0x20975c)
    }
}

p2_victory_info = {
    "rounds_won": byte(0x20b61c),
    "round_win_style": {
        1 : byte(0x20b623),
        2 : byte(0x20b622),
        3 : byte(0x20b621),
        4 : byte(0x20b620),
        5 : byte(0x20b627),
        6 : byte(0x20b626),
        7 : byte(0x20b625),
        8 : byte(0x20b624)
    }

}

current_stage_id = byte(0x22a84f)

timer_stage = float(0x22a834)
timer_round = float(0x22a834)
fight_pause = byte(0x22a833)

fight_round_status = byte(0x209740)

fight_difficulty = byte(0x22a85f)

function in_game() =>   current_screen_id != const_screen_intro &&
                        current_screen_id != const_screen_menus &&
                        current_screen_staging == const_staging_fight

game_mode = byte(0x2ef65b)

p1_character = byte(0x2ef621)
// p2_character = 

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

for ws in winstyles {
    wslogic = []
    for i in range(1,8) {
        array_push(wslogic,
            prev(p1_victory_info["rounds_won"]) == i-1 &&
            p1_victory_info["rounds_won"] == i &&
            p1_victory_info["round_win_style"][i] == winstyles[ws]["id"]
        )
    }

    achievement(
        title = "Win Stlye: " + winstyles[ws]["name"],
        points = 1,
        description = "Win a Vs Com round with a '" + winstyles[ws]["name"] + "' victory (Difficulty: Normal+)",
        id = 0,
        trigger =   in_game() &&
                    game_mode == game_modes["vs_com"] &&
                    fight_difficulty >= difficulty["normal"] &&
                    round_info["winner"] == const_winner_p1 &&
                    any_of(wslogic, t=>t)
    )
}

for wins in [10,25,50,75,100] {
    achievement(
        title = "Record Attack - Survive " + wins,
        points = 1,
        description = "Survive " + wins + " rounds in Record Attack - Survival (Difficulty: Normal+)",
        id = 0,
        trigger =   in_game() &&
                    fight_difficulty >= difficulty["normal"] &&
                    game_mode == game_modes["record_attack"] &&
                    current_screen_id == const_screen_survival &&
                    prev(current_stage_number) == wins-1 &&
                    current_stage_number == wins
    )
}

// ----------------------------------------------------------------------------
// -- Other Achievements
// ----------------------------------------------------------------------------

achievement(
    title = "Win Style: 7-0",
    points = 5,
    description = "Win a Vs Com fight without losing a round (Difficulty Normal+)",
    id = 0,
    trigger =   in_game() &&
                fight_difficulty >= difficulty["normal"] &&
                game_mode == game_modes["vs_com"] &&
                once(
                    prev(fight_round_status) == round_status["stage_intro"] &&
                    fight_round_status == round_status["ready"]
                ) &&
                never(!in_game() || p2_victory_info["rounds_won"] > 0) &&
                trigger_when(
                    prev(fight_round_status) != round_status["fight_over"] &&
                    fight_round_status == round_status["fight_over"]
                )
                
)

for chr in characters {
    for diff in ["normal","crazy"] {
        diffdetail = {
            "normal": {
                "name":"Normal",
                "title": "Respected",
                "points": 5
            },
             "crazy": {
                "name":"Crazy",
                "title": "Mastered",
                "points": 10
            }
        }
        achievement(
            title = diffdetail[diff]["title"] + ": " + characters[chr]["name"],
            points = diffdetail[diff]["points"],
            description = "Complete Vs Com mode using " + characters[chr]["name"] + "on difficulty " + diffdetail[diff]["name"],
            id = 0,
            trigger =   in_game() &&
                        fight_difficulty >= difficulty[diff] &&
                        game_mode == game_modes["vs_com"] &&
                        prev(current_stage_number) == 0x09 &&
                        current_stage_number == 0x0a &&
                       __ornext(p1_character == characters[chr]["normal_id"] || p1_character == characters[chr]["alt_id"])
                
        )
    }
}

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------
