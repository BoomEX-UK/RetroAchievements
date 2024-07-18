// Star Ocean: Blue Sphere
// #ID = 5228

//- Dev Notes
// To force load a screen / stage set address 0x00c318 to the 16-bit stage value
// and then set 0x00c317 to 0x01 

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

areas = {
    0x00 : "Intro",
    0x01 : "Spaceship",
    0x02 : "Forest & Village",
}

screens = {}

scn_area_0 = {
    0x00 : "Titlescreen",
    0xe6 : "Mile Ruins F1",
    0xe9 : "Mile Ruins F1"
}

for s in scn_area_0 {
    screens[s] = scn_area_0[s]
}

scn_area_1 = {
    0xb1 : "Cockpit",
    0xb0 : "First-aid room",
    0xaf : "Fuselage",
    0xb2 : "Engine room",
    0xf7 : "Nusa Beach",
    0xf6 : "Nusa Beach Storage",
}

for s in scn_area_1 {
    num = s + 0x0100
    screens[num] = scn_area_1[s]
}

scn_area_2 =  {
    0x82 : "Crash site",
    0x81 : "Crash Forest",
    0x80 : "Crash Forest",
    0x7f : "Crash Forest",
    0x7e : "Crash Forest",
    0x7d : "Crash Forest",
    0x76 : "Crash Forest",
    0x77 : "Crash Forest",
    0x7b : "Crash Forest",
    0x7c : "Village Entrance",
    0x62 : "Scout Village",
    0x63 : "Scout Village",
    0x60 : "Scout Village",
    0x61 : "Scout Village",
    0x5d : "Scout Village",
    0x5f : "Mile Ruins",
}

for s in scn_area_2 {
    num = s + 0x0200
    screens[num] = scn_area_2[s]
}

menus = {
    "titlescreen" : 0x00,
    "in_game" : 0x01,
    "in_menu" : 0x02,
    "in_shop" : 0x03,
    "connect_menu" : 0x05
}

numerals = {
 0: "", 
 1: "I", 2: "II", 3: "III", 4: "IV", 5: "V",
 6: "VI", 7: "VII", 8: "VIII", 9: "IX", 10: "X",
 11: "XI", 12: "XII", 13: "XIII", 14: "XIV", 15: "XV",
 16: "XVI", 17: "XVII", 18: "XVIII", 19: "XIX", 20: "XX", 
}

monsterbook = {
    1: {"name":"Moja", "bit":0, "offset":0},
    2: {"name":"Muja", "bit":1, "offset":0},
    3: {"name":"Horn", "bit":2, "offset":0},
    4: {"name":"Thunder Horn", "bit":3, "offset":0},
    5: {"name":"Gorgon", "bit":4, "offset":0},
    6: {"name":"Hippo", "bit":5, "offset":0},
    7: {"name":"Behemoth", "bit":6, "offset":0},
    8: {"name":"Rose", "bit":4, "offset":13},
    9: {"name":"Kobold", "bit":7, "offset":0},
    10: {"name":"Bugbear", "bit":0, "offset":1},
    11: {"name":"Kobold King", "bit":1, "offset":1},
    12: {"name":"Baboo", "bit":2, "offset":1},
    13: {"name":"Mandrill", "bit":3, "offset":1},
    14: {"name":"Gorilla", "bit":4, "offset":1},
    15: {"name":"Talapoin", "bit":5, "offset":14},
    16: {"name":"Python", "bit":5, "offset":1},
    17: {"name":"Salamander", "bit":6, "offset":1},
    18: {"name":"Basilisk", "bit":7, "offset":1},
    19: {"name":"Stone Field", "bit":0, "offset":2},
    20: {"name":"Turtle Sniper", "bit":1, "offset":2},
    21: {"name":"Holo", "bit":7, "offset":14},
    22: {"name":"Gecko", "bit":2, "offset":2},
    23: {"name":"Lizardman", "bit":3, "offset":2},
    24: {"name":"Poison Frog", "bit":4, "offset":2},
    25: {"name":"Rare Frog", "bit":5, "offset":2},
    26: {"name":"Land Worm", "bit":6, "offset":2},
    27: {"name":"Blood Worm", "bit":7, "offset":2},
    28: {"name":"Solid Worm", "bit":0, "offset":3},
    29: {"name":"Killer Ant", "bit":1, "offset":3},
    30: {"name":"Tiger Ant", "bit":2, "offset":3},
    31: {"name":"Beetle", "bit":3, "offset":3},
    32: {"name":"Banded Beetle", "bit":4, "offset":3},
    33: {"name":"Hercules", "bit":7, "offset":13},
    34: {"name":"Hornet", "bit":5, "offset":3},
    35: {"name":"Killer Hornet", "bit":6, "offset":3},
    36: {"name":"Metal Hornet", "bit":7, "offset":3},
    37: {"name":"Stinger", "bit":6, "offset":15},
    38: {"name":"Cassie", "bit":0, "offset":4},
    39: {"name":"Lily", "bit":1, "offset":4},
    40: {"name":"Root", "bit":2, "offset":4},
    41: {"name":"Germ", "bit":3, "offset":4},
    42: {"name":"Stress", "bit":6, "offset":14},
    43: {"name":"Theta", "bit":4, "offset":4},
    44: {"name":"Enoki", "bit":5, "offset":4},
    45: {"name":"Storm", "bit":6, "offset":4},
    46: {"name":"Raptor", "bit":7, "offset":4},
    47: {"name":"Bobo", "bit":0, "offset":5},
    48: {"name":"Cockatrice", "bit":1, "offset":5},
    49: {"name":"Broiler", "bit":0, "offset":15},
    50: {"name":"Gillman", "bit":2, "offset":5},
    51: {"name":"Dagon", "bit":3, "offset":5},
    52: {"name":"Rosetta", "bit":1, "offset":15},
    53: {"name":"Balloon Fish", "bit":4, "offset":5},
    54: {"name":"Moramora", "bit":5, "offset":5},
    55: {"name":"Saber Fin", "bit":6, "offset":5},
    56: {"name":"Leviathan", "bit":7, "offset":5},
    57: {"name":"Naitaka", "bit":0, "offset":14},
    58: {"name":"Nusacabra", "bit":0, "offset":6},
    59: {"name":"Aquabat", "bit":1, "offset":6},
    60: {"name":"Remora", "bit":2, "offset":6},
    61: {"name":"Nautilus", "bit":3, "offset":6},
    62: {"name":"Ammonite", "bit":4, "offset":6},
    63: {"name":"Blood Claw", "bit":5, "offset":6},
    64: {"name":"Cobalt Claw", "bit":6, "offset":6},
    65: {"name":"Nigani", "bit":3, "offset":14},
    66: {"name":"Gargoyle", "bit":7, "offset":6},
    67: {"name":"Wind Dragon", "bit":0, "offset":7},
    68: {"name":"Wyvern", "bit":1, "offset":7},
    69: {"name":"Red Dragon", "bit":3, "offset":7},
    70: {"name":"Green Dragon", "bit":2, "offset":7},
    71: {"name":"Codiras", "bit":3, "offset":15},
    72: {"name":"Land Dragon", "bit":4, "offset":7},
    73: {"name":"Earth Dragon", "bit":5, "offset":7},
    74: {"name":"Water Dragon", "bit":6, "offset":7},
    75: {"name":"Poseidon", "bit":7, "offset":7},
    76: {"name":"Dragon Warrior", "bit":0, "offset":8},
    77: {"name":"Millenium", "bit":1, "offset":8},
    78: {"name":"Century", "bit":5, "offset":15},
    79: {"name":"Mist", "bit":2, "offset":8},
    80: {"name":"Gas", "bit":3, "offset":8},
    81: {"name":"Flame", "bit":4, "offset":8},
    82: {"name":"Shadow", "bit":5, "offset":8},
    83: {"name":"Juggler Shadow", "bit":6, "offset":8},
    84: {"name":"Froggy", "bit":7, "offset":8},
    85: {"name":"Panzer Froggy", "bit":0, "offset":9},
    86: {"name":"Variable", "bit":5, "offset":13},
    87: {"name":"Watt", "bit":1, "offset":9},
    88: {"name":"Milwatt", "bit":2, "offset":9},
    89: {"name":"Sight", "bit":3, "offset":9},
    90: {"name":"Accurate", "bit":4, "offset":9},
    91: {"name":"Abel", "bit":5, "offset":9},
    92: {"name":"Umbel", "bit":6, "offset":9},
    93: {"name":"Titan", "bit":7, "offset":9},
    94: {"name":"Gold", "bit":0, "offset":10},
    95: {"name":"Steel", "bit":1, "offset":14},
    96: {"name":"Atlas", "bit":1, "offset":10},
    97: {"name":"Cyclops", "bit":2, "offset":10},
    98: {"name":"Cooper", "bit":3, "offset":10},
    99: {"name":"Carla", "bit":4, "offset":10},
    100: {"name":"G.Gigant", "bit":5, "offset":10},
    101: {"name":"G.Nigra", "bit":6, "offset":10},
    102: {"name":"G.Aba", "bit":2, "offset":14},
    103: {"name":"G.Radiata", "bit":4, "offset":15},
    104: {"name":"Argyros", "bit":7, "offset":10},
    105: {"name":"El Dorado", "bit":0, "offset":11},
    106: {"name":"Gaia", "bit":6, "offset":13},
    107: {"name":"Steel Vane", "bit":2, "offset":15},
    108: {"name":"Guriguri", "bit":1, "offset":11},
    109: {"name":"Gepi", "bit":2, "offset":11},
    110: {"name":"Diablo", "bit":3, "offset":11},
    111: {"name":"Viper", "bit":4, "offset":14},
    112: {"name":"Apsaras", "bit":4, "offset":11},
    113: {"name":"Demon Ox", "bit":6, "offset":11},
    114: {"name":"Minotaur", "bit":5, "offset":11},
    115: {"name":"Auge", "bit":3, "offset":13},
    116: {"name":"Chimera", "bit":7, "offset":11},
    117: {"name":"Nu", "bit":0, "offset":12},
    118: {"name":"Nu", "bit":1, "offset":12},
    119: {"name":"Rival", "bit":2, "offset":12},
    120: {"name":"Rival Wizard", "bit":3, "offset":12},
    121: {"name":"Rival Knight", "bit":4, "offset":12},
    122: {"name":"Rival Beast", "bit":5, "offset":12},
    123: {"name":"Rival Robo", "bit":6, "offset":12},
    124: {"name":"Edifice", "bit":7, "offset":12},
    125: {"name":"Gabriel Celeste", "bit":0, "offset":13},
    126: {"name":"Iseria Queen", "bit":2, "offset":13},
}


// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

current_scene = byte(0x00c351)
current_stage = byte(0x00c352)
current_screen = word(0x00c351) // concat

current_menu = byte(0x00c1a8)

game_time_seconds = byte(0x00ffac)
game_time_minutes = byte(0x00ffad)
game_time_hours = byte(0x00ffae)

battle_flag = byte(0x00d5b4) 

const_mb_base_discovered = 0x00bcd0
const_mb_base_photographed = 0x00bce0
const_mb_base_analysed = 0x00bcf0

function bitCheck( bit, address ){
    checks = {
        0:bit0(address),
        1:bit1(address),
        2:bit2(address),
        3:bit3(address),
        4:bit4(address),
        5:bit5(address),
        6:bit6(address),
        7:bit7(address),
    } return checks[bit]
}

function in_game() => __ornext(
    current_menu == menus["in_game"] ||
    current_menu == menus["in_menu"] ||
    current_menu == menus["in_shop"]
)

discover_pagination = {}
photograph_pagination = {}
analyse_pagination = {}
monster_names = {}
all_discover_checks = {}
all_photograph_checks = {}
all_analyse_checks = {}

monster_num = 1
for page_num in range(1,18) {
    // init page
    discover_pagination[page_num]   = {}
    photograph_pagination[page_num] = {}
    analyse_pagination[page_num]    = {}
    monster_names[page_num] = ""
    for item_num in range(1,7) {
        // discover set
        discover_pagination[page_num][item_num] = bitCheck(monsterbook[monster_num]["bit"],const_mb_base_discovered+monsterbook[monster_num]["offset"])
        all_discover_checks[monster_num] = bitCheck(monsterbook[monster_num]["bit"],const_mb_base_discovered+monsterbook[monster_num]["offset"])
        
        // photograph set
        photograph_pagination[page_num][item_num] = bitCheck(monsterbook[monster_num]["bit"],const_mb_base_photographed+monsterbook[monster_num]["offset"])
        all_photograph_checks[monster_num] = bitCheck(monsterbook[monster_num]["bit"],const_mb_base_photographed+monsterbook[monster_num]["offset"])
        
        // analyse set
        analyse_pagination[page_num][item_num] = bitCheck(monsterbook[monster_num]["bit"],const_mb_base_analysed+monsterbook[monster_num]["offset"])
        all_analyse_checks[monster_num] = bitCheck(monsterbook[monster_num]["bit"],const_mb_base_analysed+monsterbook[monster_num]["offset"])
        
        // text for descriptions
        monster_names[page_num] = monster_names[page_num] + monsterbook[monster_num]["name"]
        if item_num != 7 monster_names[page_num] = monster_names[page_num] + ", "
        
        // next monster
        monster_num=monster_num+1
    }
}

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

prog_ach = {
    0 : {
        "title" : "Demon Rat",
        "desc" : "",
        "points" : 1,
        "type" : "progression"
    },
    1 : {
        "title" : "Sprout Tree",
        "desc" : "",
        "points" : 1,
        "type" : ""
    },
    2 : {
        "title" : "Legged Whale",
        "desc" : "",
        "points" : 1,
        "type" : "progression"
    },
    3 : {
        "title" : "Boxing Turtle Drone",
        "desc" : "",
        "points" : 1,
        "type" : "progression"
    },
    4 : {
        "title" : "Baboon of Doom",
        "desc" : "",
        "points" : 1,
        "type" : "progression"
    },
    5 : {
        "title" : "Elephant Drone",
        "desc" : "",
        "points" : 1,
        "type" : "progression"
    },
    6 : {
        "title" : "Giant Crab",
        "desc" : "",
        "points" : 1,
        "type" : "progression"
    }
}

// ----------------------------------------------------------------------------
// -- Cave Trial Achievements
// ----------------------------------------------------------------------------

cave_ach = {
    
}

// ----------------------------------------------------------------------------
// -- Monster Book Achievements
// ----------------------------------------------------------------------------

for book_ach in range(1,length(discover_pagination)) {
    page_points = {
        "note" : { 1:1, 2:1, 3:1, 4:1, 5:1, 6:2, 7:2, 8:2, 9:2, 10:2,
            11:3, 12:3, 13:3, 14:3, 15:3, 16:3, 17:4, 18:4 },
        "scra" : { 1:2, 2:2, 3:2, 4:2, 5:2, 6:3, 7:3, 8:3, 9:3, 10:3,
            11:4, 12:4, 13:4, 14:4, 15:4, 16:4, 17:5, 18:5 },
        "ency" : { 1:3, 2:3, 3:3, 4:3, 5:3, 6:4, 7:4, 8:4, 9:4, 10:4,
            11:5, 12:5, 13:5, 14:5, 15:5, 16:5, 17:10, 18:10 },
    }
    page_ids = {
        "note" : { 1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0, 8:0, 9:0, 10:0,
            11:0, 12:0, 13:0, 14:0, 15:0, 16:0, 17:0, 18:0 },
        "scra" : { 1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0, 8:0, 9:0, 10:0,
            11:0, 12:0, 13:0, 14:0, 15:0, 16:0, 17:0, 18:0 },
        "ency" : { 1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0, 8:0, 9:0, 10:0,
            11:0, 12:0, 13:0, 14:0, 15:0, 16:0, 17:0, 18:0 },
    }
    /* -- Abandoned
    achievement(
        id=page_ids["note"][book_ach],
        title="Notebook Page " + numerals[book_ach],
        description="Create Monster Book entries " + (((book_ach-1)*7)+1) + "-"+ (((book_ach-1)*7)+7) +": " + monster_names[book_ach],
        points=page_points["note"][book_ach],
        trigger= in_game() &&
            sum_of(discover_pagination[book_ach],s=>prev(discover_pagination[book_ach][s])) == 6 &&
            measured(sum_of(discover_pagination[book_ach],s=>discover_pagination[book_ach][s]) == 7)
    )
    */
    achievement(
        id=page_ids["scra"][book_ach],
        title="Scrapbook Page " + numerals[book_ach],
        description="Photograph Monsters " + (((book_ach-1)*7)+1) + "-"+ (((book_ach-1)*7)+7) +": " + monster_names[book_ach],
        points=page_points["scra"][book_ach],
        trigger= in_game() &&
            sum_of(photograph_pagination[book_ach],s=>prev(photograph_pagination[book_ach][s])) == 6 &&
            measured(sum_of(photograph_pagination[book_ach],s=>photograph_pagination[book_ach][s]) == 7)
    )
    achievement(
        id=page_ids["ency"][book_ach],
        title="Encyclopedia Page " + numerals[book_ach],
        description="Analyse Monsters " + (((book_ach-1)*7)+1) + "-"+ (((book_ach-1)*7)+7) +": " + monster_names[book_ach],
        points=page_points["ency"][book_ach],
        trigger= in_game() &&
            sum_of(analyse_pagination[book_ach],s=>prev(analyse_pagination[book_ach][s])) == 6 &&
            measured(sum_of(analyse_pagination[book_ach],s=>analyse_pagination[book_ach][s]) == 7)
    )
}
/* -- Abandoned
achievement(
    id=0,
    title="Notebook Complete",
    description="Complete all 126 discovery entries in the Monster Book",
    points=10,
    trigger= in_game() &&
        sum_of(all_discover_checks, s=>prev(all_discover_checks[s])) == 125 &&
        sum_of(all_discover_checks, s=>all_discover_checks[s]) == 126
)
*/
achievement(
    id=0,
    title="Scrapbook Complete",
    description="Complete all 126 photograph entries in the Monster Book",
    points=10,
    trigger= in_game() &&
        sum_of(all_photograph_checks, s=>prev(all_photograph_checks[s])) == 125 &&
        sum_of(all_photograph_checks, s=>all_photograph_checks[s]) == 126
)

achievement(
    id=0,
    title="Encyclopedia Complete",
    description="Complete all 126 analysis entries in the Monster Book",
    points=10,
    trigger= in_game() &&
        sum_of(all_analyse_checks, s=>prev(all_analyse_checks[s])) == 125 &&
        sum_of(all_analyse_checks, s=>all_analyse_checks[s]) == 126
)

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🔵"
emoji_clock = "🕒"

rich_presence_conditional_display( current_menu == menus["titlescreen"] || current_menu == menus["connect_menu"], "{0} {1}",
    emoji,
    "Titlescreen"
)

rich_presence_conditional_display( current_menu == menus["in_game"], "{0} Exploring {1} ‣ {2}{3}",
    emoji,
    rich_presence_lookup("rp_screens",current_screen,screens,fallback="?Unknown"),
    emoji_clock,
    rich_presence_macro("Minutes",game_time_minutes+(game_time_hours*60))
)

rich_presence_conditional_display( current_menu == menus["in_menu"], "{0} {1}",
    emoji,
    "(dev) In Menu"
)

rich_presence_conditional_display( current_menu == menus["in_menu"], "{0} {1}",
    emoji,
    "(dev) In Shop"
)

rich_presence_display( "{0} Getting Ready to play..",
    emoji
)