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
}
for screen in screen_titles screens[screen] = {
    "name" : screen_titles[screen],
    "type" : screen_types["title"]
}

screen_menus = {
    0x66 : "Paused",
    0x67 : "Intro Cutscene",
    0x68 : "New/Load Game",
    0x69 : "Commando Select",
    0x6b : "Name Entry",
    0x6c : "Mission Failed",
    0x6d : "Misson Complete",
    0x6f : "Save/Load Game",
    0xFF : "Loading"
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
    0x64 : "Selecting Armour",
    0x65 : "Selecting Decoder",
}
for screen in screen_maps screens[screen] = {
    "name" : screen_maps[screen],
    "type" : screen_types["map"]
}

screen_stages = {
    0x0a: "1",
    0x0b: "1: Comms Room",
    0x0d: "2",
    0x0e: "2: Comms Room",
    0x0f: "2: Bunker",
    0x10: "2: Bunker Comms Room",
    0x12: "3",
    0x13: "3: Comms Room",
    0x15: "4",
    0x76: "4: Meeting Room",
    0x77: "4: Green Comms Room",
    0x16: "4: Red Comms Room",
    0x18: "5",
    0x19: "5: Comms Room",
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
    0x0100: "-- Male Area 9",
    0x2c: "9: Sewer Entrance", 
    0x2d: "9: Sewer", 
    0x2e: "9: Green Comms Room",
    0x0101: "-- Female Area 9",
    0x30: "9: City Entrance", 
    0x31: "9: West Sewer", 
    0x32: "9: City", 
    0x33: "9: East Sewer",
    0x34: "9: Green Comms Room", 
    0x37: "10",
    0x38: "10: Blue Comms Room",
    0x39: "10: Upper Level",
    0x3b: "11",
    0x3c: "11: Avars HQ Entrance",
    0x3d: "11: Avars HQ",
    0x3e: "11: Blue Comms Room",
    0x41: "12",
    0x5e: "16",
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
    0x27: "6: Wide Gunner",
    0x23: "7: Artillery Cannons",
    0x2b: "8: Delta Platoon",
    0x0100: "-- Male Area 9 Boss",
    0x2f: "9: Main Security Officer",
    0x0101: "-- Female Area 9 Boss",
    0x36: "9: Main Security Officer",
    0x3a: "10: Laser Security System",
    0x40: "11: Rocket General",
}
for screen in screen_bosses screens[screen] = {
    "name" : screen_bosses[screen],
    "type" : screen_types["boss"]
}

screen_topdown = {
    0x5b: "Desert Mobile Troops",
    0x5a: "City Mobile Troops",
    0x5d: "Secret Base",
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

rp_gender = {
    0x01: emoji_male
}

emoji = "🦾"

rich_presence_display("{0}{1} Screen {2} ‣ {3}",
    emoji,
    rich_presence_lookup("rp_gender",gender_selected,rp_gender,fallback=emoji_female),
    rich_presence_macro("Number",screen_id),
    rich_presence_lookup("rp_screen",screen_id,rp_screen,fallback="?")
)