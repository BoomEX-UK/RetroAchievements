// Bionic Commando: Elite Forces
// #ID = 6524

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

screens = {}
screen_types = {
    "demo"      : 0,
    "title"     : 1,
    "menu"      : 2,
    "stage"     : 3,
    "boss"      : 4,
    "map"       : 5,
    "sniper"    : 6,
    "top_down"  : 7,
}

screen_demos = {
    0x00 : "1",
    0x01 : "2",
    0x02 : "3",
}
for screen in screen_demos screens[screen] = {
    "name" : screen_demos[screen],
    "type" : screen_types["demo"]
}

screen_titles = {
    0x03 : "License",
    0x04 : "Nintendo",
    0x05 : "Nintendo Software",
    0x06 : "Capcom",
    0x07 : "Press Start",
    0x67 : "Intro Cutscene",
    0x68 : "New/Load Game",
    0x69 : "Commando Select",
    0x6a : "Credits",
    0x6b : "Name Entry",
}
for screen in screen_titles screens[screen] = {
    "name" : screen_titles[screen],
    "type" : screen_types["title"]
}

menu_ids = {
    "pause":0x66,
    "fail":0x6c,
    "m_complete":0x6d,
    "g_complete":0x6e,
    "save_load":0x6f,
    "loading":0xff,
}

screen_menus = {
    menu_ids["pause"]: "Paused",
    menu_ids["fail"]: "Mission Failed",
    menu_ids["m_complete"]: "Misson Complete",
    menu_ids["g_complete"]: "Game Complete",
    menu_ids["save_load"]: "Save/Load Game",
    menu_ids["loading"]: "Loading"
}
for screen in screen_menus screens[screen] = {
    "name" : screen_menus[screen],
    "type" : screen_types["menu"]
}

screen_maps = {
    0x60 : "Map Screen",
    0x61 : "Comms Screen",
    0x62 : "Selecting Weapon",
    0x63 : "Selecting Tool",
    0x64 : "Selecting Armor",
    0x65 : "Selecting Decoder",
}
for screen in screen_maps screens[screen] = {
    "name" : screen_maps[screen],
    "type" : screen_types["map"]
}

screen_stages = {
    0x0a: "1",
    0x0b: "1: Red Comms Room",
    0x0d: "2",
    0x0e: "2: Red Comms Room",
    0x0f: "2: Bunker",
    0x10: "2: Bunker, Red Comms Room",
    0x12: "3",
    0x13: "3: Comms Room",
    0x15: "4",
    0x76: "4: Meeting Room",
    0x77: "4: Green Comms Room",
    0x16: "4: Red Comms Room",
    0x18: "5",
    0x19: "5: Comms Room",
    0x0100: "-- Female Area 6",
    0x78: "6: Cave Entrance",
    0x1c: "6",
    0x1d: "6: Cave Waterfalls",
    0x1e: "6: Green Comms Room",
    0x0101: "-- Male Area 6",
    0x24: "6",
    0x25: "6: Bunker",
    0x26: "6: Green Comms Room",
    0x7a: "6: Rooftop",
    0x20: "7",
    0x21: "7: Green Comms Room",
    0x22: "7: Upper Level",
    0x79: "7: Cavern Entrance",
    0x28: "8: Base Entrance",
    0x29: "8",
    0x2a: "8: Green Comms Room",
    0x0102: "-- Male Area 9",
    0x2c: "9: Sewer Entrance", 
    0x2d: "9: Sewer", 
    0x2e: "9: Green Comms Room",
    0x0103: "-- Female Area 9",
    0x30: "9: City Entrance", 
    0x31: "9: West Sewer", 
    0x32: "9: City", 
    0x33: "9: East Sewer",
    0x34: "9: Green Comms Room", 
    0x37: "10",
    0x38: "10: Blue Comms Room",
    0x39: "10: Upper Level",
    0x3b: "11",
    0x3c: "11: Avars Base Entrance",
    0x3d: "11: Avars Base",
    0x3e: "11: Blue Comms Room",
    0x3f: "11: Sniper",
    0x7c: "11: Yellow Comms Room",
    0x41: "12",
    0x42: "12: Sewer",
    0x43: "12: Blue Comms Room",
    0x44: "12: Avars Base",
    0x4a: "13: Desert Entrance",
    0x4b: "13: Upper Tunnels",
    0x4c: "13: Mid Tunnels",
    0x4e: "13: Hidden Passageway",
    0x4f: "13: Yellow Comms Room",
    0x4d: "13: Super Joe",
    0x46: "14: Tower",
    0x47: "14",
    0x35: "14: Pit",
    0x48: "14: Yellow Comms Room",
    0x51: "15",
    0x52: "15: Tunnels",
    0x53: "15: Yellow Comms Room",
    0x5e: "16",
    0x7b: "17: Sewer Entrance",
    0x5f: "17",
    0x55: "18: Runway",
    0x56: "18: Albatross Tail",
    0x57: "18: Albatross Engine Room",
    0x58: "18: Albatross Undercarriage",
}
for screen in screen_stages screens[screen] = {
    "name" : screen_stages[screen],
    "type" : screen_types["stage"]
}

screen_snipers = {
    0x0c: "1",
    0x1a: "5",
}
for screen in screen_snipers screens[screen] = {
    "name" : screen_snipers[screen],
    "type" : screen_types["sniper"]
}

screen_bosses = {
    0x7e: "1: Rocket Launcher",
    0x11: "2: Alpha Platoon",
    0x14: "3: Phalanx",
    0x17: "4: Beta Platoon",
    0x1b: "5: Sprinter",
    0x0100: "-- Female Area 6 Boss",
    0x1f: "6: Wide Gunner",
    0x0101: "-- Male Area 6 Boss",
    0x27: "6: Wide Gunner",
    0x23: "7: Artillery Cannons",
    0x2b: "8: Delta Platoon",
    0x0102: "-- Male Area 9 Boss",
    0x2f: "9: Main Security Officer",
    0x0103: "-- Female Area 9 Boss",
    0x36: "9: Main Security Officer",
    0x3a: "10: Laser Security System",
    0x40: "11: Rocket General",
    0x45: "12: Helicopter",
    0x50: "13: Executioner",
    0x49: "14: Fuel Room",
    0x54: "15: Omega Platoon",
    0x59: "18: Arturus"
}
for screen in screen_bosses screens[screen] = {
    "name" : screen_bosses[screen],
    "type" : screen_types["boss"]
}

screen_topdown = {
    0x5b: "Jungle Mobile Troops",
    0x5a: "City Mobile Troops",
    0x5d: "Secret Base",
    0x5c: "Desert Mobile Troops"
}
for screen in screen_topdown screens[screen] = {
    "name" : screen_topdown[screen],
    "type" : screen_types["top_down"]
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

screen_id_volatile = byte(0x00c104) // Changes with every screen
screen_id_persistent = byte(0x00c696) // Persists through Menu/Pause
screen_id = screen_id_persistent

gender_selected = byte(0x00c6a8)
function is_male() => gender_selected == 1

lives = byte(0x00c2ca)
hp = byte(0x00c2b8)

collectibles_a = 0x00c5ec
collectibles_b = 0x00c5ed
collectibles_c = 0x00c5ee

promotion_level = byte(0x00c2d1)
capsule_points = byte(0x00c2c8)
capsule_upgrade_level = byte(0x00c2c7)

sniper_shot_cooldown = byte(0x00c5eb)
sniper_enemy_remain = byte(0x00c345)

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

progression_achievements = {
    1 : {
        "id" : 0,
        "title": "Energy Recovery Pills",
        "desc" : screen_bosses[0x7e],
        "stage" : 0x7e,
        "points" : 1
    },
    2 : {
        "id" : 0,
        "title": "Key Card",
        "desc" : screen_bosses[0x11],
        "stage" : 0x11,
        "points" : 1
    },
    3 : {
        "id" : 0,
        "title": "Helmet",
        "desc" : screen_bosses[0x14],
        "stage" : 0x14,
        "points" : 2
    },
    4 : {
        "id" : 0,
        "title": "Green Decoder",
        "desc" : screen_bosses[0x17],
        "stage" : 0x17,
        "points" : 2
    },
    5 : {
        "id" : 387066,
        "title": "Fast Charge",
        "desc" : screen_bosses[0x1b],
        "stage" : 0x1b,
        "points" : 3
    },
    61 : { 
        "id" : 387067,
        "title": "Her Wide Gun",
        "desc" : (screen_bosses[0x1f] + " as the Female Commando"),
        "stage" : 0x1f,
        "points" : 3
    },
    62 : { 
        "id" : 0,
        "title": "His Wide Gun",
        "desc" : (screen_bosses[0x27] + " as the Male Commando"),
        "stage" : 0x27,
        "points" : 3
    },

    7 : {
        "id" : 0,
        "title": "Steel Boots",
        "desc" : screen_bosses[0x23],
        "stage" : 0x23,
        "points" : 4
    },
    8 : {
        "id" : 0,
        "title": "Protection Vest",
        "desc" : screen_bosses[0x2b],
        "stage" : 0x2b,
        "points" : 4
    },
    91 : {
        "id" : 387079,
        "title": "Her Blue Decoder",
        "desc" : (screen_bosses[0x36] + " as the Female Commando"),
        "stage" : 0x36,
        "points" : 5
    },
    92 : {
        "id" : 387078,
        "title": "His Blue Decoder",
        "desc" : (screen_bosses[0x2f] + " as the Male Commando"),
        "stage" : 0x2f,
        "points" : 5
    },
    10 : {
        "id" : 0,
        "title": "Laser Gun",
        "desc" : screen_bosses[0x3a],
        "stage" : 0x3a,
        "points" : 5
    },
    12 : {
        "id" : 0,
        "title": "Yellow Decoder",
        "desc" : screen_bosses[0x45],
        "stage" : 0x45,
        "points" : 10
    },
    13 : {
        "id" : 0,
        "title": "Rapid Fire",
        "desc" : screen_bosses[0x50],
        "stage" : 0x4d, // 0x50, // 0x4d used for "Super Joe" cutscene
        "points" : 10
    },
    14 : {
        "id" : 0,
        "title": "Flamethrower",
        "desc" : screen_bosses[0x49],
        "stage" : 0x49,
        "points" : 10
    },
    15 : {
        "id" : 0,
        "title": "Body Armor",
        "desc" : screen_bosses[0x54],
        "stage" : 0x54,
        "points" : 10
    },
}

for ach in progression_achievements {
    base = progression_achievements[ach]
    achievement(
        id=base["id"],
        title=base["title"],
        description="Defeat Boss " + base["desc"],
        points=base["points"],
        trigger=
            prev(screen_id_volatile) == base["stage"] &&
            screen_id_volatile == menu_ids["m_complete"]
    )
}

// Male / Female Split for Area 6
//achievement(
//    id=387067,
//    title="Wide Gun",
//    description="Defeat Boss " + screen_bosses[0x27],
//    points=3,
//    trigger=
//        __ornext(
//            prev(screen_id_volatile) == 0x27 ||
//            prev(screen_id_volatile) == 0x1f
//        ) &&
//        screen_id_volatile == menu_ids["m_complete"]
//)

// ----------------------------------------------------------------------------
// -- Extra Achievements
// ----------------------------------------------------------------------------

achievement(
    id=0,
    title="Pulse Cannon",
    description="Defeat Boss " + screen_bosses[0x40] + " as the Female Commando",
    points=5,
    trigger=
        prev(screen_id_volatile) == 0x40 &&
        screen_id_volatile == menu_ids["m_complete"] &&
        !is_male()
)

achievement(
    id=0,
    title="Rocket Launcher",
    description="Defeat Boss " + screen_bosses[0x40] + " as the Male Commando",
    points=5,
    trigger=
        prev(screen_id_volatile) == 0x40 &&
        screen_id_volatile == menu_ids["m_complete"] &&
        is_male()
)

achievement(
    id=0,
    title="Bionic Corporal",
    description="Receive your first promotion",
    points=5,
    trigger=
        __ornext(prev(screen_id_volatile) == 0x5e || prev(screen_id_volatile) == 0x5f) &&
        screen_id_volatile == menu_ids["m_complete"] &&
        promotion_level == 1
)

achievement(
    id=0,
    title="Bionic Lance Corporal",
    description="Receive your second promotion",
    points=5,
    trigger=
        __ornext(prev(screen_id_volatile) == 0x5e || prev(screen_id_volatile) == 0x5f) &&
        screen_id_volatile == menu_ids["m_complete"] &&
        promotion_level == 2
)

achievement(
    id=0,
    title="Annihilation of the Albatross",
    description="Defeat Arturus as the Female Commando",
    points=25,
    trigger=
        prev(screen_id_volatile) == 0x59 &&
        screen_id_volatile == menu_ids["g_complete"] &&
        !is_male()
)

achievement(
    id=0,
    title="Assault on the Albatross",
    description="Defeat Arturus as the Male Commando",
    points=25,
    trigger=
        prev(screen_id_volatile) == 0x59 &&
        screen_id_volatile == menu_ids["g_complete"] &&
        is_male()
)

achievement(
    id=0,
    title="Bionic Feline",
    description="Reach the maximum of 9 Lives",
    points=5,
    trigger=
        none_of(screen_demos,s=>screen_id_volatile==s) &&
        prev(lives) == 8 &&
        lives == 9
)

// ----------------------------------------------------------------------------
// -- Super Capsule Achievements
// ----------------------------------------------------------------------------
  
// 15,31,63,127,255  
cap_info = {
    15: {
        "title":"Lv1",
        "points": 1,
        "uglevel": 4
    },
    31: {
        "title":"Lv2",
        "points": 2,
        "uglevel": 5
    },
    63: {
        "title":"Lv3",
        "points": 3,
        "uglevel": 6
    },
    127: {
        "title":"Lv4",
        "points": 5,
        "uglevel": 7
    },
    255: {
        "title":"Max",
        "points": 10,
        "uglevel": 8
    },
}

for caps in cap_info {
    cap_count = caps
    base = cap_info[caps]
    achievement(
        id=0,
        title="Bionic Boost: " + base["title"],
        description="Upgrade your command by collecting " + caps + " capsule points",
        points=base["points"],
        trigger=
            none_of(screen_demos,s=>screen_id_volatile==s) &&
            prev(capsule_upgrade_level) == base["uglevel"] -1 &&
            capsule_upgrade_level == base["uglevel"]
    )
}

// ----------------------------------------------------------------------------
// -- Secret Comms Rooms
// ----------------------------------------------------------------------------

rooms = {
    1 : {
        "roomID" : 0x77,
        "areaUnlock" : bit0(0x00c2d0),
        "title" : "Obstical Course"
    },
    2 : {
        "roomID" : 0x7c,
        "areaUnlock" : bit1(0x00c2d0),
        "title" : "Dingy Sewer"
    }
}

for room in rooms {
    base = rooms[room]
    achievement(
        id=0,
        title="The Key to the " + base["title"],
        description="Unlock the " + base["title"] + " by finding the hidden Comms room",
        points=5,
        trigger=
            screen_id_persistent == base["roomID"] &&
            base["areaUnlock"] > prev(base["areaUnlock"])
    )
}

// ----------------------------------------------------------------------------
// -- Sniper Achievements
// ----------------------------------------------------------------------------

sniper_opps = {
    1: {
        "areaID" : 0x0a,
        "sniperID" : 0x0c,
        "areaNum" : 1
    },
    2: {
        "areaID" : 0x18,
        "sniperID" : 0x1a,
        "areaNum" : 5
    },
    3: {
        "areaID" : 0x3b,
        "sniperID" : 0x3f,
        "areaNum" : 11
    }
}

for snip in sniper_opps {
    base = sniper_opps[snip]
    achievement(
        id=0,
        title="Crackshot: Area " + base["areaNum"],
        description="3 targets, 3 bullets - Don't miss Commando!",
        points=3,
        trigger=
            once(
                prev(screen_id_persistent) == base["areaID"] &&
                screen_id_persistent == base["sniperID"]
            ) &&
            never(
                screen_id_persistent != base["sniperID"] ||
                (tally(3,
                    prev(sniper_shot_cooldown) == 0 &&
                    sniper_shot_cooldown > 0
                ) && sniper_enemy_remain > 0 )
            ) &&
            prev(sniper_enemy_remain) == 1 &&
            sniper_enemy_remain == 0
    )
}

// ----------------------------------------------------------------------------
// -- Mobile Troops
// ----------------------------------------------------------------------------

for mobile in screen_topdown {
    base = screen_topdown[mobile]
    achievement(
        id=0,
        title="Tactical Ops: " + base,
        description="Complete the " + base + " mission without taking damage",
        points=2,
        trigger=
            once(
                prev(screen_id_persistent) == 0x60 &&
                screen_id_persistent == mobile
            ) &&
            never(
                (prev(screen_id_persistent) != mobile &&
                screen_id_persistent != mobile) ||
                prev(hp) > hp
            ) &&
            trigger_when(
                prev(screen_id_persistent) == mobile &&
                screen_id_persistent == 0x60
            )
    )
}

// ----------------------------------------------------------------------------
// -- Collectible Achievements
// ----------------------------------------------------------------------------

collectibles = {
    1.1: {
        "id" : 0,
        "flag": bit0(collectibles_a),
        "stage": 0x0a,
        "points": 1,
        "areaNo" : 1,
        "itemName" : "1-Up"
    },
    2.1: {
        "id" : 0,
        "flag": bit1(collectibles_a),
        "stage": 0x0d,
        "points": 1,
        "areaNo" : 2,
        "itemName" : "Super Capsule"
    },
    3.1: {
        "id" : 0,
        "flag": bit2(collectibles_a),
        "stage": 0x12,
        "points": 1,
        "areaNo" : 3,
        "itemName" : "1-Up"
    },
    6.1: {
        "id" : 0,
        "flag": bit6(collectibles_a),
        "stage": 0x24,
        "points": 1,
        "areaNo" : 6,
        "itemName" : "Medkit"
    },
    6.2: {
        "id" : 0,
        "flag": bit7(collectibles_a),
        "stage": 0x25,
        "points": 1,
        "areaNo" : 6,
        "itemName" : "1-Up"
    },
    7.1: {
        "id" : 0,
        "flag": bit5(collectibles_a),
        "stage": 0x22,
        "points": 1,
        "areaNo" : 7,
        "itemName" : "Super Capsule"
    },
    9.1: {
        "id" : 0,
        "flag": bit0(collectibles_b),
        "stage": 0x2d,
        "points": 1,
        "areaNo" : 9,
        "itemName" : "Medkit"
    },
    10.1: {
        "id" : 0,
        "flag": bit1(collectibles_b),
        "stage": 0x39,
        "points": 1,
        "areaNo" : 10,
        "itemName" : "Super Capsule"
    },
    12.1: {
        "id" : 0,
        "flag": bit2(collectibles_b),
        "stage": 0x44,
        "points": 1,
        "areaNo" : 12,
        "itemName" : "1-Up"
    },
    15.1: {
        "id" : 0,
        "flag": bit4(collectibles_b),
        "stage": 0x51,
        "points": 1,
        "areaNo" : 15,
        "itemName" : "Medkit"
    },
}

for col in collectibles {
    base = collectibles[col]
    achievement(
        id=base["id"],
        title="Area " + base["areaNo"] + " - " + base["itemName"],
        description="Collect the hidden " + base["itemName"] + " in Area " + base["areaNo"],
        points=base["points"],
        trigger=
            screen_id_volatile==base["stage"] &&
            prev(base["flag"]) < base["flag"]
    )
}

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rp_screen = {}
for screen in screens {
   if (screens[screen]["type"] == screen_types["demo"]) rp_screen[screen] = "Demo"
   if (screens[screen]["type"] == screen_types["title"]) rp_screen[screen] = "Titlescreen"
   if (screens[screen]["type"] == screen_types["menu"]) rp_screen[screen] = "Menu: " + screens[screen]["name"]
   if (screens[screen]["type"] == screen_types["map"]) rp_screen[screen] = "Preparing: " + screens[screen]["name"]
   if (screens[screen]["type"] == screen_types["stage"]) rp_screen[screen] = "Area " + screens[screen]["name"]
   if (screens[screen]["type"] == screen_types["top_down"]) rp_screen[screen] = screens[screen]["name"]
   if (screens[screen]["type"] == screen_types["boss"]) rp_screen[screen] = "Boss " + screens[screen]["name"]
   if (screens[screen]["type"] == screen_types["sniper"]) rp_screen[screen] = "Sniper: Tower " + screens[screen]["name"]
}

emoji_male = "👨"
emoji_female = "👩"
emoji_map = "🗺️"
emoji_tick = "✔️"

emoji = "🦾"

rp_gender = {
    0x01: emoji_male
}

rp_promotion = {
    0x01: "🥈",
    0x02: "🥇"
}

rich_presence_conditional_display(any_of(screen_titles,s=>screen_id_volatile==s),
    "{0} Titlescreen",
    emoji
)

rich_presence_conditional_display(any_of(screen_demos,s=>screen_id_volatile==s),
    "{0} Watching a Demo",
    emoji
)

rich_presence_conditional_display(any_of(screen_maps,s=>screen_id==s),
    "{0}{1} Exploring the Map ‣ {2}{3}/18 {4}{5}/{3}",
    rich_presence_lookup("rp_promo",promotion_level,rp_promotion,fallback=emoji),
    rich_presence_lookup("rp_gender",gender_selected,rp_gender,fallback=emoji_female),
    emoji_map,
    rich_presence_macro("Number",bitcount(0x00c2ce)+bitcount(0x00c2cf)+bitcount(0x00c2d0)),
    emoji_tick,
    rich_presence_macro("Number",bitcount(0x00c2cb)+bitcount(0x00c2cc)+bitcount(0x00c2cd))
)

rich_presence_display("{0}{1}x{2} ‣ {3}",
    rich_presence_lookup("rp_promo",promotion_level,rp_promotion,fallback=emoji),
    rich_presence_lookup("rp_gender",gender_selected,rp_gender,fallback=emoji_female),
    rich_presence_macro("Number",lives),
    rich_presence_lookup("rp_screen",screen_id,rp_screen,fallback="?")
)