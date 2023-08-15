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

training_types = {
    0x00 : "Normal",
    0x01 : "Aerial",
    0x02 : "Special",
    0x03 : "Escape"
}

round_status = {
    "stage_intro"   : 0x00,
    "ready"         : 0x01,
    "fighting"      : 0x02,
    "win_onstage"   : 0x03,
    "win_offstage"  : 0x04,
    "win_judge"     : 0x06,
    "replay"        : 0x07,
    "continue"      : 0x08,
    "fight_over"    : 0x09
}

mc_round_status = {
    "spin_match"    : 0x00,
    "continue_save" : 0x01,
    "quit_save"     : 0x02,
    "continue_spin" : 0x03,
    "winning_pose"  : 0x04,
    "finish"        : 0x05,

}

difficulty = {
    "easy"      : 0x00,
    "normal"    : 0x01,
    "hard"      : 0x02,
    "crazy"     : 0x03
}

game_modes = {
    "vs_com" : { 
        "id": 0x00,
        "name": "Vs Com"
    },
    "battle": { 
        "id": 0x01,
        "name": "2P Battle"
    },
    "record_attack" : { 
        "id": 0x02,
        "name": "Record Attack"
    },
    "master_challenge" : { 
        "id": 0x03,
        "name": "Master Challenge"
    },
    "training" : { 
        "id": 0x04,
        "name": "Training"
    },
    "options" : { 
        "id": 0x05,
        "name": "Options"
    },
}

characters = {
    "ryuji": {
        "name": "Ryuji",
        "normal_id": 0x00,
        "alt_id": 0x0e,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 7
    },
    "bob": {
        "name": "Bob",
        "normal_id": 0x01,
        "alt_id": 0x0f,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 4
    },
    "pierre": {
        "name": "Pierre",
        "normal_id": 0x02,
        "alt_id": 0x10,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 4
    },
    "meiling": {
        "name": "Meiling",
        "normal_id": 0x03,
        "alt_id": 0x11,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 8
    },
    "leon": {
        "name": "Leon",
        "normal_id": 0x04,
        "alt_id": 0x12,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 10
    },
    "abdul": {
        "name": "Abdul",
        "normal_id": 0x05,
        "alt_id": 0x13,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 4
    },
    "ninja": {
        "name": "Ninja",
        "normal_id": 0x06,
        "alt_id": 0x14,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 4
    },
    "tomahawk": {
        "name": "Tomahawk",
        "normal_id": 0x07,
        "alt_id": 0x15,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 4
    },
    "valarie": {
        "name": "Valarie",
        "normal_id": 0x08,
        "alt_id": 0x16,
        "mc_mode": true,
        "unlockable": false,
        "is_unlocked" : 1,
        "max_combo": 10
    },
    "boro": {
        "name": "Boro",
        "normal_id": 0x09,
        "alt_id": 0x17,
        "mc_mode": true,
        "unlockable": true,
        "is_unlocked" : byte(0x30734a),
        "max_combo": 4
    },
    "ushi": {
        "name": "Ushi",
        "normal_id": 0x0a,
        "alt_id": 0x18,
        "mc_mode": false,
        "unlockable": true,
        "is_unlocked" : byte(0x307349),
        "max_combo": 5
    },
    "joker": {
        "name": "Joker",
        "normal_id": 0x0b,
        "alt_id": 0x19,
        "mc_mode": false,
        "unlockable": true,
        "is_unlocked" : byte(0x307348),
        "max_combo": 5
    },
    "master": {
        "name": "Master",
        "normal_id": 0x0c,
        "alt_id": 0x1a,
        "mc_mode": false,
        "unlockable": true,
        "is_unlocked" : byte(0x30734f),
        "max_combo": 8
    },
    "robert": {
        "name": "Robert",
        "normal_id": 0x0d,
        "alt_id": 0x1b,
        "mc_mode": false,
        "unlockable": true,
        "is_unlocked" : byte(0x30734e),
        "max_combo":2
    }
}

mc_characters = {}
for char in characters {
    if( characters[char]["mc_mode"] == true ){
        mc_characters[char] = characters[char]
    }
}

unlock_characters = {}
for char in characters {
    if( characters[char]["unlockable"] == true ){
        unlock_characters[char] = characters[char]
    }
}

combo_characters = {}
for char in characters {
    if( characters[char]["max_combo"] > 0 ){
        combo_characters[char] = characters[char]
    } 
}

Hirari_moves = {
    "jump"      : 0x84,
    "jump_l"    : 0x85,
    "jump_r"    : 0x86,
    "duck"      : 0x87,
    "duck_l"    : 0x88,
    "duck_r"    : 0x89,
    "hop"       : 0xd8,
    "hop2"      : 0xd5,
    "lean"      : 0xb1,
    "h1"        : 0xd5,
    "h2"        : 0xd6,
    "h3"        : 0xd7,
    "duck_2"    : 0xd8,
    "lean_back" : 0xd9,
    "lean_r"    : 0xda
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

current_training_id         = byte(0x2ef686)

round_info = {
    "state" : byte(0x209740),
    "winner": byte(0x209744),
    "mc_state": byte(0x22c223) // Master Challenge Mode
}
const_rstate_stagepan = 0

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

current_stage_number = byte(0x2ef678)
current_round_number = p1_victory_info["rounds_won"] + p2_victory_info["rounds_won"]
current_stage_id = byte(0x22a84f)

timer_stage = float(0x22a834)
timer_round = float(0x20d7d8)
fight_pause = byte(0x22a833)

fight_difficulty = byte(0x22a85f)

function in_game() =>   current_screen_id != const_screen_intro &&
                        current_screen_id != const_screen_menus &&
                        current_screen_staging == const_staging_fight

game_mode = byte(0x2ef65b)

p1_character    = byte(0x2ef621)
p1_move         = byte(0x209f4c)
p1_combo        = byte(0x20b773)
p2_character    = byte(0x22a84d)

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
        title = "Win Style: " + winstyles[ws]["name"],
        points = 1,
        description = "Win a Vs Com round with a '" + winstyles[ws]["name"] + "' victory (Difficulty: Normal+)",
        id = 0,
        trigger =   in_game() &&
                    game_mode == game_modes["vs_com"]["id"] &&
                    fight_difficulty >= difficulty["normal"] &&
                    round_info["winner"] == const_winner_p1 &&
                    any_of(wslogic, t=>t)
    )
}

for wins in [10,25,50,75,100] {
    points = {
        10: 1,
        25: 3,
        50: 5,
        75: 10,
        100: 25
    }
    achievement(
        title = "Record Attack - Survive " + wins,
        points = points[wins],
        description = "Survive " + wins + " rounds in Record Attack - Survival (Difficulty: Normal+)",
        id = 0,
        trigger =   in_game() &&
                    fight_difficulty >= difficulty["normal"] &&
                    game_mode == game_modes["record_attack"]["id"] &&
                    current_screen_id == const_screen_survival &&
                    prev(current_stage_number) == wins-1 &&
                    current_stage_number == wins
    )
}

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
                "title": "Insane",
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
                        game_mode == game_modes["vs_com"]["id"] &&
                        prev(current_stage_number) == 0x09 &&
                        current_stage_number == 0x0a &&
                       __ornext(p1_character == characters[chr]["normal_id"] || p1_character == characters[chr]["alt_id"])
                
        )
    }
}

for diff in ["normal","crazy"] {
    diff_text = {
        "normal" : {
            "name" : "Normal",
            "text" : "Normal+"
        },
        "crazy" : {
            "name": "Crazy",
            "text" : "Crazy"
        }
    }
    achievement(
        title = "No Continue: " + diff_text[diff]["name"],
        points = 5,
        description = "Complete Vs Com mode without using a continue (Difficulty " + diff_text[diff]["text"] + ")",
        id = 0,
        trigger =   in_game() &&
                    fight_difficulty >= difficulty[diff] &&
                    game_mode == game_modes["vs_com"]["id"] &&
                    once(
                        prev(round_info["state"]) == round_status["stage_intro"] &&
                        round_info["state"] == round_status["ready"] &&
                        current_stage_number == 0x00
                        
                    ) &&
                    never(!in_game() || round_info["state"] == round_status["continue"]) &&
                    trigger_when(
                        prev(current_stage_number) == 0x09 &&
                        current_stage_number == 0x0a
                    )
                
    )
}

for chr in mc_characters {
    achievement(
        title = "Master Challenge Complete: " + mc_characters[chr]["name"],
        points = 10,
        description = "Complete Master Challenge mode using " + mc_characters[chr]["name"],
        id = 0,
        trigger =   in_game() &&
                    game_mode == game_modes["master_challenge"]["id"] &&
                    prev(round_info["mc_state"]) != mc_round_status["finish"] &&
                    round_info["mc_state"] == mc_round_status["finish"] &&
                    __ornext(p1_character == characters[chr]["normal_id"] || p1_character == characters[chr]["alt_id"])        
    )
}

for chr in unlock_characters {
    unlock_text = {
        "boro": "Beat VS Com mode with any character",
        "joker": "Beat VS Com mode with Pierre and then beat at least 100 opponents in Survival mode with any character",
        "master": "Beat VS Com mode with Ryuji and then beat Master Challenge mode with any character",
        "robert": "Beat VS Com mode with Valerie and then beat Fastest mode under 1 minute with any character",
        "ushi": "Beat VS Com mode with Abdul and then survive at least 1 minute in Rodeo mode with any character"
    }
    unlock_points = {
        "boro": 5,
        "joker": 50,
        "master": 10,
        "robert": 10,
        "ushi": 25
    }
    achievement(
        title = "Unlock " + unlock_characters[chr]["name"],
        points = unlock_points[chr],
        description = unlock_text[chr],
        id = 0,
        trigger =   in_game() &&
                    prev(unlock_characters[chr]["is_unlocked"]) == 0 &&
                    unlock_characters[chr]["is_unlocked"] == 1
    )
}

for chr in combo_characters {
    achievement(
        title = "Combo Masterclass: " + combo_characters[chr]["name"] + " ("+combo_characters[chr]["max_combo"]+" Hits)",
        points = 10,
        description = "Perform a "+combo_characters[chr]["max_combo"]+" hit combo using " + combo_characters[chr]["name"],
        id = 0,
        trigger =   in_game() &&
                    prev(p1_combo) == combo_characters[chr]["max_combo"]-1 &&
                    p1_combo == combo_characters[chr]["max_combo"] &&
                    __ornext(p1_character == characters[chr]["normal_id"] || p1_character == characters[chr]["alt_id"])
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
                game_mode == game_modes["vs_com"]["id"] &&
                once(
                    prev(round_info["state"]) == round_status["stage_intro"] &&
                    round_info["state"] == round_status["ready"]
                ) &&
                never(!in_game() || p2_victory_info["rounds_won"] > 0) &&
                trigger_when(
                    prev(round_info["state"]) != round_status["fight_over"] &&
                    round_info["state"] == round_status["fight_over"]
                )
                
)

achievement(
    title = "Win Style: Speed",
    points = 5,
    description = "Win a round in Vs Com mode in 1.500 secs or less (Difficulty Normal+)",
    id = 0,
    trigger =   in_game() &&
                game_mode == game_modes["vs_com"]["id"] &&
                fight_difficulty >= difficulty["normal"] &&
                round_info["winner"] == const_winner_p1  &&
                prev(p1_victory_info["rounds_won"]) < p1_victory_info["rounds_won"] &&
                timer_round <= 1.5
                
)

achievement(
    title = "Record Attack - Fastest (1 Minute Challenge)",
    points = 10,
    description = "Beat Record Attack - Fastest in 1 minute or less (Difficulty: Normal+)",
    id = 0,
    trigger =   in_game() &&
                fight_difficulty >= difficulty["normal"] &&
                game_mode == game_modes["record_attack"]["id"] &&
                current_screen_id == const_screen_fastest &&
                prev(current_stage_number) == 3 &&
                current_stage_number == 4 && 
                timer_stage <= 60
)

achievement(
    title = "Record Attack - Rodeo (1 Minute Challenge)",
    points = 10,
    description = "Survive Record Attack - Rodeo for over 1 minute (Difficulty: Normal+)",
    id = 0,
    trigger =   in_game() &&
                fight_difficulty >= difficulty["normal"] &&
                game_mode == game_modes["record_attack"]["id"] &&
                current_screen_id == const_screen_rodeo &&
                prev(round_info["state"]) != round_status["replay"] &&
                round_info["state"] == round_status["replay"] &&
                timer_stage > 60
)

Hirari_trigger = []
for mv in Hirari_moves {
    array_push( Hirari_trigger, 
        prev(p1_move) == Hirari_moves[mv]
    )
}

achievement(
    title = "The Art of Hirari",
    points = 5,
    description = "Perform 10 Hirari (Dodge) moves in a single Vs Com round and win (Difficulty Normal+)",
    id = 0,
    trigger =   in_game() &&
                fight_difficulty >= difficulty["normal"] &&
                game_mode == game_modes["vs_com"]["id"] &&
                p1_victory_info["rounds_won"] > prev(p1_victory_info["rounds_won"]) &&
                measured(tally(10,
                    any_of(Hirari_trigger,t=>t) && byte(0x209f4e) != prev(byte(0x209f4e))
                )) &&
                never(!in_game() || game_mode != game_modes["vs_com"]["id"] || p2_victory_info["rounds_won"] != prev(p2_victory_info["rounds_won"]))

                
)

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

for chr in characters {
    leaderboard(
        title = "Rodeo - " + characters[chr]["name"],
        description = "How long can you last in Record Attack - Rodeo using '"  + characters[chr]["name"] + "'?",
        start  =    in_game() &&
                    game_mode == game_modes["record_attack"]["id"] && 
                    current_screen_id == const_screen_rodeo &&
                    __ornext(p1_character == characters[chr]["normal_id"] || p1_character == characters[chr]["alt_id"]) &&
                    prev(round_info["state"]) != round_status["replay"] &&
                    round_info["state"] == round_status["replay"],
        cancel =    always_false(),
        submit =    always_true(),
        value =     measured(timer_stage*100),
        format = "MILLISECS",
        lower_is_better = false,
        id = 0
    )
}

for chr in characters {
    leaderboard(
        title = "Fastest - " + characters[chr]["name"],
        description = "How quickly can you win Record Attack - Fastest using '"  + characters[chr]["name"] + "'?",
        start  =    in_game() &&
                    game_mode == game_modes["record_attack"]["id"] && 
                    current_screen_id == const_screen_fastest &&
                    __ornext(p1_character == characters[chr]["normal_id"] || p1_character == characters[chr]["alt_id"]) &&
                    prev(current_stage_number) == 3 &&
                    current_stage_number == 4,
        cancel =    always_false(),
        submit =    always_true(),
        value =     measured(timer_stage*100),
        format = "MILLISECS",
        lower_is_better = true,
        id = 0
    )
}

for chr in characters {
    leaderboard(
        title = "Survival - " + characters[chr]["name"],
        description = "How many enemies can you defeat in Record Attack - Survival using '"  + characters[chr]["name"] + "'?",
        start  =    in_game() &&
                    game_mode == game_modes["record_attack"]["id"] && 
                    current_screen_id == const_screen_survival &&
                    __ornext(p1_character == characters[chr]["normal_id"] || p1_character == characters[chr]["alt_id"]) &&
                    prev(round_info["state"]) != round_status["continue"] &&
                    round_info["state"] == round_status["continue"],
        cancel =    always_false(),
        submit =    always_true(),
        value =     measured(current_stage_number),
        format = "VALUE",
        lower_is_better = false,
        id = 0
    )
}

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🥋"
emoji_map = "🌍"
emoji_clock = "🕗"

plural = { 1:"" }

rp_game_modes = {}
for gm in game_modes {
    rp_game_modes[game_modes[gm]["id"]] = game_modes[gm]["name"]
}

rp_characters = {}
for chr in characters {
    rp_characters[characters[chr]["normal_id"]] = characters[chr]["name"]
    rp_characters[characters[chr]["alt_id"]] = characters[chr]["name"]
}

rp_difficulty = {}
for diff in difficulty {
    rp_difficulty[difficulty[diff]] = diff
}

// Quick checks
rich_presence_conditional_display(current_screen_id == const_screen_boot && dword(0x28af0c) == 0, "{0} Warming up",
    emoji
)
rich_presence_conditional_display(current_screen_id == const_screen_intro, "{0} Watching the intro",
    emoji
)
rich_presence_conditional_display(current_screen_id == const_screen_menus, "{0} Navigating the menus",
    emoji
)

rich_presence_conditional_display(current_screen_staging != const_staging_fight, "{0} Preparing to play | {1}",
    emoji,
    rich_presence_lookup("game_modes", game_mode, rp_game_modes, fallback="?")
)


// Main RP
rich_presence_conditional_display(current_screen_staging == const_staging_fight && game_mode == game_modes["vs_com"]["id"], "{0} Vs Com S{1} R{2} {3}{4} | {5} v {6} {7}{8} [{9}]",
    emoji,
    rich_presence_macro("Number",current_stage_number + 1),
    rich_presence_macro("Number",current_round_number + 1),
    emoji_clock,
    rich_presence_macro("Seconds",timer_stage),
    rich_presence_lookup("characters", p1_character, rp_characters, fallback="?"),
    rich_presence_lookup("characters", p2_character, rp_characters, fallback="?"),
    emoji_map,
    rich_presence_lookup("stages", current_stage_id, stages, fallback="?"),
    rich_presence_lookup("difficulty", fight_difficulty, rp_difficulty, fallback="?")
)

rich_presence_conditional_display(current_screen_staging == const_staging_fight && game_mode == game_modes["record_attack"]["id"] && current_screen_id == const_screen_survival, "{0} Record Attack - Survival | {2} ({1} Win{3})",
    emoji,
    rich_presence_macro("Number",current_stage_number),
    rich_presence_lookup("characters", p1_character, rp_characters, fallback="?"),
    rich_presence_lookup("plural", current_stage_number, plural, fallback="s")
)

rich_presence_conditional_display(current_screen_staging == const_staging_fight && game_mode == game_modes["record_attack"]["id"] && current_screen_id == const_screen_fastest, "{0} Record Attack - Fastest S{1} | {2} {3}{4}",
    emoji,
    rich_presence_macro("Number",current_stage_number + 1),
    rich_presence_lookup("characters", p1_character, rp_characters, fallback="?"),
    emoji_clock,
    rich_presence_value("timer",timer_stage*100,"MILLISECS") // Centiseconds
)

rich_presence_conditional_display(current_screen_staging == const_staging_fight && game_mode == game_modes["record_attack"]["id"] && current_screen_id == const_screen_rodeo, "{0} Record Attack - Rodeo | {1} {2}{3}",
    emoji,
    rich_presence_lookup("characters", p1_character, rp_characters, fallback="?"),
    emoji_clock,
    rich_presence_value("timer",timer_stage*100,"MILLISECS") // Centiseconds
)

rich_presence_conditional_display(current_screen_staging == const_staging_fight && game_mode == game_modes["master_challenge"]["id"], "{0} Master Challenge | {2} ({1} Win{3})",
    emoji,
    rich_presence_macro("Number",current_stage_number),
    rich_presence_lookup("characters", p1_character, rp_characters, fallback="?"),
    rich_presence_lookup("plural", current_stage_number, plural, fallback="s")
)

rich_presence_conditional_display(current_screen_staging == const_staging_fight && game_mode == game_modes["training"]["id"], "{0} {2} Training | {1} ({3} Hit Combo)",
    emoji,
    rich_presence_lookup("characters", p1_character, rp_characters, fallback="?"),
    rich_presence_lookup("training", current_training_id, training_types, fallback="s"),
    rich_presence_macro("Number",p1_combo)
)

rich_presence_conditional_display(current_screen_staging == const_staging_fight, "{0} Fighting ({1})",
    emoji,
    rich_presence_lookup("game_modes", game_mode, rp_game_modes, fallback="?")
)

//-
rich_presence_display("{0} Playing Fighters Destiny",emoji)
