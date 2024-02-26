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

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🔵"
emoji_clock = "🕒"

rich_presence_conditional_display( current_menu == menus["titlescreen"] || current_menu == menus["connect_menu"], "{0} {1}",
    emoji,
    "Titlescreen"
)

rich_presence_conditional_display( battle_flag < 3, "In a battle!",
    emoji,
    "Titlescreen"
)

rich_presence_display( "{0} Exploring {1} ‣ {2}{3}",
    emoji,
    rich_presence_lookup("rp_screens",current_screen,screens,fallback="?Unknown"),
    emoji_clock,
    rich_presence_macro("Minutes",game_time_minutes+(game_time_hours*60))
)