// International Superstar Soccer
// #ID = 251

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

difficulties = {
    "easy" : 0x00,
    "normal" : 0x01,
    "hard" : 0x02
}

screens = {
    "main_menu"     : 0x0000,
    "game_over"     : 0xc00c,
    "int_start"     : 0x1005,
    "int_qualified" : 0x400c,
    "tourn_start"   : 0x500d,
    "int_final"     : 0x4014,
    "int_won"       : 0x6014,
    "ws_1_match"    : 0x0020,
    "ws_1_standing" : 0x0220,
    "ws_2_match"    : 0x0060,
    "ws_2_standing" : 0x0260,
    "ws_special"    : 0x0121,
    "ws_end"        : 0x0120
}

game_modes = {
    "open" : 0x00,
    "int_cup" : 0x01,
    "world_series" : 0x02,
    "training" : 0x03,
    "scenarios" : 0x04,
    "penalty" : 0x05,
    "password" : 0x06,
    "options" : 0x07
}

diffname = {
    "normal" : "Normal+",
    "hard" : "Hard"
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

difficulty  = byte(0x001fd2)
screen_id   = word(0x001a1a)
int_round   = byte(0x001a14)
game_mode   = byte(0x001fa4)
team_a_goals = byte(0x001724)
team_b_goals = byte(0x001774)

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

int_cup_ach_list = {
    1 : {
        "title" : "Qualifier",
        "description" : "Qualify for the International Cup",
        "p_normal" : 1,
        "p_hard" : 2,
        "trigger" : (prev(screen_id) == screens["int_qualified"] && screen_id == screens["tourn_start"])
    },
    2 : {
        "title" : "In It To Win It",
        "description" : "Win Round 1 of the International Cup Tournament",
        "p_normal" : 2,
        "p_hard" : 3,
        "trigger" : (screen_id == screens["int_qualified"] && prev(int_round) == 3 && int_round == 2)
    },
    3 : {
        "title" : "Semi-Finalist",
        "description" : "Win the Quarter Final of the International Cup Tournament",
        "p_normal" : 3,
        "p_hard" : 5,
        "trigger" : (screen_id == screens["int_qualified"] && prev(int_round) == 2 && int_round == 1)
    },
    4 : {
        "title" : "Finalist",
        "description" : "Win the Semi-Final of the International Cup Tournament",
        "p_normal" : 5,
        "p_hard" : 10,
        "trigger" : (screen_id == screens["int_qualified"] && prev(int_round) == 1 && int_round == 0)
    },
    5 : {
        "title" : "Champion",
        "description" : "Become the Champion of the International Cup Tournament",
        "p_normal" : 10,
        "p_hard" : 25,
        "trigger" : (prev(screen_id) == screens["int_final"] && screen_id == screens["int_won"])
    }
}

for diff in ["normal","hard"] {
    difftrig = (difficulty >= difficulties[diff])
    if(diff == "hard") difftrig = (difficulty == difficulties[diff])
    for ach in int_cup_ach_list {
        stub = int_cup_ach_list[ach]
        achievement(
            title="International Cup: "+stub["title"]+" (Difficulty "+diffname[diff]+")",
            description=stub["description"]+" on difficulty "+diffname[diff],
            points = stub["p_"+diff],
            trigger =
                game_mode == game_modes["int_cup"] &&
                stub["trigger"] &&
                difftrig
        )
    }
}

// ----------------------------------------------------------------------------
// -- World Cup Bonus Achievements
// ----------------------------------------------------------------------------

wc_ach_list = {
    1 : {
        "title" : "1st Season, 6th Stage",
        "description" : "You're a quarter through the World Series, 1st Season",
        "p_normal" : 1,
        "p_hard" : 2,
        "trigger" : (prev(screen_id) == screens["ws_1_match"] && screen_id == screens["ws_1_standing"] && int_round == 6)
    },
    2 : {
        "title" : "1st Season, 12th Stage",
        "description" : "You're a half way through the World Series, 1st Season",
        "p_normal" : 2,
        "p_hard" : 3,
        "trigger" : (prev(screen_id) == screens["ws_1_match"] && screen_id == screens["ws_1_standing"] && int_round == 12)
    },
    3 : {
        "title" : "1st Season, 18th Stage",
        "description" : "You're a three quarters through the World Series, 1st Season",
        "p_normal" : 3,
        "p_hard" : 4,
        "trigger" : (prev(screen_id) == screens["ws_1_match"] && screen_id == screens["ws_1_standing"] && int_round == 18)
    },
    4 : {
        "title" : "1st Season, 23th Stage",
        "description" : "You've played your last match in the World Series, 1st Season",
        "p_normal" : 4,
        "p_hard" : 5,
        "trigger" : (prev(screen_id) == screens["ws_1_match"] && screen_id == screens["ws_1_standing"] && int_round == 23)
    },
    5 : {
        "title" : "2nd Season, 6th Stage",
        "description" : "You're a quarter through the World Series, 2nd Season",
        "p_normal" : 2,
        "p_hard" : 3,
        "trigger" : (prev(screen_id) == screens["ws_2_match"] && screen_id == screens["ws_2_standing"] && int_round == 6)
    },
    6 : {
        "title" : "2nd Season, 12th Stage",
        "description" : "You're a half way through the World Series, 2nd Season",
        "p_normal" : 3,
        "p_hard" : 4,
        "trigger" : (prev(screen_id) == screens["ws_2_match"] && screen_id == screens["ws_2_standing"] && int_round == 12)
    },
    7 : {
        "title" : "2nd Season, 18th Stage",
        "description" : "You're a three quarters through the World Series, 2nd Season",
        "p_normal" : 4,
        "p_hard" : 5,
        "trigger" : (prev(screen_id) == screens["ws_2_match"] && screen_id == screens["ws_2_standing"] && int_round == 18)
    },
    8 : {
        "title" : "World Series Complete",
        "description" : "You've played your last match in the World Series, 2nd Season",
        "p_normal" : 5,
        "p_hard" : 10,
        "trigger" : (prev(screen_id) == screens["ws_2_match"] && screen_id == screens["ws_2_standing"] && int_round == 23)
    },
    9 : {
        "title" : "Special Game Champion!",
        "description" : "You have beaten Team Super Star!",
        "p_normal" : 10,
        "p_hard" : 25,
        "trigger" : (prev(screen_id) == screens["ws_special"] && screen_id == screens["ws_end"] && team_a_goals > team_b_goals)
    },
}

for diff in ["normal","hard"] {
    difftrig = (difficulty >= difficulties[diff])
    if(diff == "hard") difftrig = (difficulty == difficulties[diff])
    for ach in wc_ach_list {
        stub = wc_ach_list[ach]
        achievement(
            title="World Series: "+stub["title"]+" (Difficulty "+diffname[diff]+")",
            description=stub["description"]+" on difficulty "+diffname[diff],
            points = stub["p_"+diff],
            trigger =
                game_mode == game_modes["world_series"] &&
                stub["trigger"] &&
                difftrig
        )
    }
}