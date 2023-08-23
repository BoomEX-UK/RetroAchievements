// Lawnmower Man, The
// #ID = 14210

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

stage_types ={
    "title" : 0x00,
    "death" : 0x01,
    "stage" : 0x02,
    "cutscene" : 0x03,
}

difficulties = {
    "easy" : {
        "id" : 0x01,
        "name" : "No Problem"
    },
    "normal" : {
        "id" : 0x02,
        "name": "Hmm... Tricky"
    },
    "hard" : {
        "id" : 0x03,
        "name" : "Forget It!"
    }
}

stages = {
    //- Title and Intro
    "reset" : {
        "id" : 0x0000,
        "name": "Ready to enter VR",
        "orbcount" : 0,
        "type" : stage_types["title"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "title_logo" : {
        "id" : 0x03CD,
        "name": "Titlescreen",
        "orbcount" : 0,
        "type" : stage_types["title"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "title_story" : {
        "id" : 0x23BF,
        "name": "the Intro",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "title_cutscene1" : {
        "id" : 0x4637,
        "name": "the Intro",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "title_cutscene2" : {
        "id" : 0x015D,
        "name": "the Intro",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "title_cutscene3" : {
        "id" : 0x0B6A,
        "name": "the Intro",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    //- Death Sequences
    "continue" : {
        "id" : 0x0156,
        "name": "Mission failed, continue?",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death" : {
        "id" : 0x0F68,
        "name": "Being consumed by Big Red",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death_elec" : {
        "id" : 0x0595,
        "name": "Being electrocuted on a circuit board",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death_ball" : {
        "id" : 0x057d,
        "name": "Collided with a spikeball",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death_denied" : {
        "id" : 0x0305,
        "name": "Big Red denied access",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death_slide" : {
        "id" : 0x08f3,
        "name": "Died on the slide",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death_tunein" : {
        "id" : 0x0617,
        "name": "Simon Says 'Do Better'",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death_high_platform" : {
        "id" : 0x02d2,
        "name": "Fell from a high platform",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death_sting" : {
        "id" : 0x02d2,
        "name": "Attacked by Cyberbees",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "death_moving_platform" : {
        "id" : 0x0238,
        "name": "Missed a moving platform",
        "orbcount" : 0,
        "type" : stage_types["death"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    //- In-Game
    "cutscene_01" : {
        "id" : 0x036d,
        "name": "Memory Bank scene 1",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "cyber_boogie_01" : {
        "id" : 0x1a35,
        "name": "Cyber Boogie 1",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "cackin_code_01" : {
        "id" : 0x0384,
        "name": "Crackin' the Code 1",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : true,
        "ach_name" : "Earning Your Wings",
        "ach_point" : 1,
        "ach_hard_point" : 1,
        "ach_orb_point" : 0,
        "ach_fc_point" : 1,
        "ach_desc" : "beat Cyber Boogie 1"
    },
    "path_freedom_01_badL" : {
        "id" : 0x0a3f,
        "name": "Path to Freedom (Left)",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "path_freedom_01_badM" : {
        "id" : 0x0ac8,
        "name": "Path to Freedom (Middle)",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "path_freedom_01_goodR" : {
        "id" : 0x0b1a,
        "name": "Path to Freedom (Right)",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "path_freedom_01_win" : {
        "id" : 0x05d6,
        "name": "Path to Freedom",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 5,
        "ach_desc" : ""
    },
    "cutscene_02" : {
        "id" : 0x01d5,
        "name": "Memory Bank scene 2",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Find Your First Path to Freedom",
        "ach_point" : 2,
        "ach_hard_point" : 2,
        "ach_orb_point" : 0,
        "ach_fc_point" : 5,
        "ach_desc" : "beat Path to Freedom 1"
    },
    "ledge_01_pillars" : {
        "id" : 0x0fb6,
        "name": "Ledge of Darkness 1",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "ledge_01_running" : {
        "id" : 0x0e5a,
        "name": "Ledge of Darkness 1",
        "orbcount" : 2,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 2,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "denied_01" : {
        "id" : 0x0d4a,
        "name": "Access Denied",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : true,
        "ach_name" : "Survive the First Ledge of Darkness",
        "ach_point" : 2,
        "ach_hard_point" : 2,
        "ach_orb_point" : 0,
        "ach_fc_point" : 5,
        "ach_desc" : "beat Ledge of Darkness 1"
    },
    "cutscene_03" : {
        "id" : 0x02a0,
        "name": "Memory Bank scene 3",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Access Approved!",
        "ach_point" : 2,
        "ach_hard_point" : 3,
        "ach_orb_point" : 0,
        "ach_fc_point" : 5,
        "ach_desc" : "beat Access Denied"
    },
    "cyber_boogie_2" : {
        "id" : 0x1fb7,
        "name": "Cyber Boogie 2",
        "orbcount" : 2,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 2,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "cutscene_04" : {
        "id" : 0x02a0,
        "name": "Memory Bank scene 4",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Flight Path Corrected",
        "ach_point" : 2,
        "ach_hard_point" : 3,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat Cyber Boogie 2"
    },
    "into_void_01" : {
        "id" : 0x02B4,
        "name": "Into the Void",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "reveal_carla" : {
        "id" : 0x0144,
        "name": "Carla Parkette reveal",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Into the Void",
        "ach_point" : 3,
        "ach_hard_point" : 4,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat Into the Void"
    },
    "cutscene_05" : {
        "id" : 0x05dd,
        "name": "Memory Bank scene 5",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "cyber_boogie_3_a" : {
        "id" : 0x23c0,
        "name": "Cyber Boogie 3",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "breaking_through_1" : {
        "id" : 0x1112,
        "name": "Breaking Through 1",
        "orbcount" : 1,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 1,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "cutscene_06" : {
        "id" : 0x0290,
        "name": "Memory Bank scene 6",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Broken Through",
        "ach_point" : 3,
        "ach_hard_point" : 4,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat Breaking Through 1"
    },
    "ledge_02" : {
        "id" : 0x1b08,
        "name": "Ledge of Darkness 2",
        "orbcount" : 4,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 4,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "leap_faith_01" : {
        "id" : 0x0903,
        "name": "Leap of Faith",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : true,
        "ach_name" : "Man on a Ledge",
        "ach_point" : 4,
        "ach_hard_point" : 5,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat Ledge of Darkness 2"
    },
    "leap_faith_02" : {
        "id" : 0x07f7,
        "name": "Leap of Faith",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "cutscene_07" : {
        "id" : 0x0e08,
        "name": "Memory Bank scene 7",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Into the Jaws of Fate",
        "ach_point" : 4,
        "ach_hard_point" : 5,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat Leap of Faith"
    },
    "tune_in_01" : {
        "id" : 0x0469,
        "name": "Tune In",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "tune_in_02" : {
        "id" : 0x00e4,
        "name": "Tune In",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "tune_in_03" : {
        "id" : 0x0249,
        "name": "Tune In",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "tune_in_04" : {
        "id" : 0x014b,
        "name": "Tune In",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "tune_in_05" : {
        "id" : 0x011d,
        "name": "Tune In",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "tune_in_win" : {
        "id" : 0x0410,
        "name": "Tune In",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : true,
        "ach_name" : "Simon Says - Correct",
        "ach_point" : 5,
        "ach_hard_point" : 10,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat the Tune In puzzle"
    },
    "cyber_boogie_04" : {
        "id" : 0x18dd,
        "name": "Cyber Boogie 4",
        "orbcount" : 1,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 1,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "crackin_code_02" : {
        "id" : 0x1766,
        "name": "Crackin' the Code 2",
        "orbcount" : 1,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 1,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "ledge_03" : {
        "id" : 0x2d86,
        "name": "Ledge of Darkness 3",
        "orbcount" : 5,
        "type" : stage_types["stage"],
        "achievement" : true,
        "ach_name" : "Another Code Cracked",
        "ach_point" : 5,
        "ach_hard_point" : 10,
        "ach_orb_point" : 5,
        "ach_fc_point" : 10,
        "ach_desc" : "beat Crackin' the Code 2"
    },
    "cutscene_08" : {
        "id" : 0x048a,
        "name": "Memory Bank scene 8",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Climb the Highest Tower",
        "ach_point" : 10,
        "ach_hard_point" : 10,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat Ledge of Darkness 3"
    },
    "the_sting" : {
        "id" : 0x04f2,
        "name": "The Sting",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "the_sting_win" : {
        "id" : 0x121f,
        "name": "The Sting",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : true,
        "ach_name" : "Killer-bee Killed",
        "ach_point" : 10,
        "ach_hard_point" : 10,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat The Sting puzzle"
    },
    "path_freedom_02" : {
        "id" : 0x0429,
        "name": "Path to Freedom 2",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "spin_out" : {
        "id" : 0x030f,
        "name": "Spin Out",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : true,
        "ach_name" : "Found Your Freedom",
        "ach_point" : 10,
        "ach_hard_point" : 10,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "beat Path to Freedom 2"
    },
    "cutscene_09" : {
        "id" : 0x0637,
        "name": "Memory Bank scene 9",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Oh Angel",
        "ach_point" : 10,
        "ach_hard_point" : 10,
        "ach_orb_point" : 0,
        "ach_fc_point" : 10,
        "ach_desc" : "solve the Spin Out puzzle"
    },
    "cyber_boogie_05" : {
        "id" : 0x1c30,
        "name": "Cyber Boogie 5",
        "orbcount" : 1,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 1,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "cutscene_10" : {
        "id" : 0x06f2,
        "name": "Memory Bank scene 10",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Lightning Reactions",
        "ach_point" : 10,
        "ach_hard_point" : 10,
        "ach_orb_point" : 0,
        "ach_fc_point" : 25,
        "ach_desc" : "beat Cyber Boogie 5"
    },
    "ledge_04" : {
        "id" : 0x485a,
        "name": "Ledge of Darkness 4",
        "orbcount" : 6,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 10,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "glory_road_01" : {
        "id" : 0x0658,
        "name": "Glory Road",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : true,
        "ach_name" : "Blind Faith",
        "ach_point" : 10,
        "ach_hard_point" : 10,
        "ach_orb_point" : 0,
        "ach_fc_point" : 50,
        "ach_desc" : "beat Ledge of Darkness 4"
    },
    "glory_road_02" : {
        "id" : 0x04f6,
        "name": "Glory Road",
        "orbcount" : 0,
        "type" : stage_types["stage"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "reveal_peter" : {
        "id" : 0x0124,
        "name": "Peter Parkette reveal",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "reveal_angelo" : {
        "id" : 0x00ec,
        "name": "Peter Parkette reveal",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : false,
        "ach_name" : "",
        "ach_point" : 0,
        "ach_hard_point" : 0,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : ""
    },
    "ending_good" : {
        "id" : 0x1a4d,
        "name": "the True Ending",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Reveal the True Ending",
        "ach_point" : 25,
        "ach_hard_point" : 25,
        "ach_orb_point" : 0,
        "ach_fc_point" : 100,
        "ach_desc" : "beat the game with the True Ending"
    },
    "ending_credits" : {
        "id" : 0x11d2,
        "name": "the Ending",
        "orbcount" : 0,
        "type" : stage_types["cutscene"],
        "achievement" : true,
        "ach_name" : "Beat the Game",
        "ach_point" : 25,
        "ach_hard_point" : 25,
        "ach_orb_point" : 0,
        "ach_fc_point" : 0,
        "ach_desc" : "watch the end-game credits"
    },
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

stage_id        = word(0x01e806)
difficulty      = byte(0x018625)
du_collected    = byte(0x01e814)

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

for stage in stages {
    if( stages[stage]["achievement"] == true && stages[stage]["id"] != stages["ending_good"]["id"]){
        achievement(
            title = stages[stage]["ach_name"] + " (Difficulty: Any)",
            points = stages[stage]["ach_point"],
            description = "On any difficulty setting "+stages[stage]["ach_desc"],
            id = 0,
            trigger =
                prev(stage_id) != stages[stage]["id"] &&
                stage_id == stages[stage]["id"] 
        )
    }
}

for stage in stages {
    if( stages[stage]["achievement"] == true  && stages[stage]["id"] != stages["ending_credits"]["id"] ){
        achievement(
            title = stages[stage]["ach_name"] + " (Difficulty: Forget It!)",
            points = stages[stage]["ach_hard_point"],
            description = "On difficulty 'Forget It!' "+stages[stage]["ach_desc"],
            id = 0,
            trigger =
                prev(stage_id) != stages[stage]["id"] &&
                stage_id == stages[stage]["id"] &&
                difficulty == difficulties["hard"]["id"]
        )
    }
}

for stage in stages {
    if( stages[stage]["orbcount"] > 0 ){
        achievement(
            title = stages[stage]["orbcount"] + " Decryptor Units : " + stages[stage]["name"] + " (Difficulty: Any)",
            points = stages[stage]["ach_orb_point"],
            description = "On any difficulty collect all the Decryptor Units on '"+stages[stage]["name"]+"'",
            id = 0,
            trigger =
                stage_id == stages[stage]["id"] &&
                prev(du_collected) == stages[stage]["orbcount"]-1 &&
                du_collected == stages[stage]["orbcount"]
        )
    }
}

for stage in stages {
    if( stages[stage]["achievement"] == true && stages[stage]["id"] != stages["ending_credits"]["id"]){
        achievement(
            title = "Forget Continues: " + stages[stage]["ach_name"],
            points = stages[stage]["ach_fc_point"],
            description = "On difficulty 'Forget It!' "+stages[stage]["ach_desc"]+" with no continues used",
            id = 0,
            trigger =
                prev(stage_id) != stages[stage]["id"] &&
                stage_id == stages[stage]["id"] &&
                difficulty == difficulties["hard"]["id"] &&
                once(stage_id == stages["cutscene_01"]["id"]) &&
                never(stage_id == stages["continue"]["id"] || stage_id == stages["reset"]["id"])
        )
    }
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

rp_stages = {}
for stage in stages {
    rp_stages[stages[stage]["id"]] = stages[stage]["name"]
}

rp_orbcount = {}
for stage in stages {
    if(stages[stage]["type"] == stage_types["stage"]) rp_orbcount[stages[stage]["id"]] = stages[stage]["orbcount"] + ""
}

rp_difficulty = {}
for diff in difficulties {
    rp_difficulty[difficulties[diff]["id"]] = difficulties[diff]["name"]
}

rp_title_triggers = []
for stage in stages {
    if(stages[stage]["type"] == stage_types["title"]) { 
        array_push(rp_title_triggers,
            stage_id == stages[stage]["id"]
        )  
    }
}

rp_cutscene_triggers = []
for stage in stages {
    if(stages[stage]["type"] == stage_types["cutscene"]) { 
        array_push(rp_cutscene_triggers,
            stage_id == stages[stage]["id"]
        )  
    }
}

rp_death_triggers = []
for stage in stages {
    if(stages[stage]["type"] == stage_types["death"]) { 
        array_push(rp_death_triggers,
            stage_id == stages[stage]["id"]
        )  
    }
}

rp_stage_triggers = []
for stage in stages {
    if(stages[stage]["type"] == stage_types["stage"] && stages[stage]["orbcount"] == 0) { 
        array_push(rp_stage_triggers,
            stage_id == stages[stage]["id"]
        )  
    }
}

rp_stage_orb_triggers = []
for stage in stages {
    if(stages[stage]["type"] == stage_types["stage"] && stages[stage]["orbcount"] > 0) { 
        array_push(rp_stage_orb_triggers,
            stage_id == stages[stage]["id"]
        )  
    }
}

emoji = "🥽"
emoji_title = "🧍"
emoji_dead = "🪦"
emoji_orb = "⚪"

rich_presence_conditional_display(
    any_of( rp_title_triggers, t=>t),
    "{0} {1}",
    emoji_title,
    rich_presence_lookup("stages",stage_id,rp_stages,fallback="?")
)

rich_presence_conditional_display(
    any_of( rp_cutscene_triggers, t=>t),
    "{0} Watching {1}",
    emoji,
    rich_presence_lookup("stages",stage_id,rp_stages,fallback="?")
)

rich_presence_conditional_display(
    any_of( rp_death_triggers, t=>t),
    "{0} {1}",
    emoji_dead,
    rich_presence_lookup("stages",stage_id,rp_stages,fallback="?")
)

rich_presence_conditional_display(
    any_of(rp_stage_triggers, t=>t),
    "{0} {1} | D:{2}",
    emoji,
    rich_presence_lookup("stages",stage_id,rp_stages,fallback="?"),
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?")
)

rich_presence_conditional_display(
    any_of(rp_stage_orb_triggers, t=>t),
    "{0} {1} {2}{3}/{4} | D:{5}",
    emoji,
    rich_presence_lookup("stages",stage_id,rp_stages,fallback="?"),
    emoji_orb,
    rich_presence_macro("Number",du_collected),
    rich_presence_lookup("orbcount",stage_id,rp_orbcount,fallback="?"),
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?")
)

rich_presence_display("{0} Playing The Lawnmower Man S:{1} P:{2}",
    emoji,
    rich_presence_macro("Number",stage_id),
    rich_presence_macro("Number",prior(stage_id))
)
