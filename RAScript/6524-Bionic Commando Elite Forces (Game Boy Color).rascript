// Bionic Commando: Elite Forces
// #ID = 6524

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

screen_ids = {}

screen_demos = {
    0x00 : "Demo 1",
    0x01 : "Demo 2",
    0x02 : "Demo 3",
}
for screen in screen_demos screen_ids[screen] = screen_demos[screen]

screen_titles = {
    0x03 : "Titlescreen",
    0x04 : "Titlescreen",
    0x05 : "Titlescreen",
    0x06 : "Titlescreen",
    0x07 : "Titlescreen",
}
for screen in screen_titles screen_ids[screen] = screen_titles[screen]

screen_menus = {
    0x67 : "Intro Cutscene",
    0x68 : "Load/Save Game",
    0x69 : "Commando Select",
}
for screen in screen_menus screen_ids[screen] = screen_menus[screen]

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

screen_id = byte(0x00c104)

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rich_presence_display("Screen {0}: {1}",
    rich_presence_macro("Number",screen_id),
    rich_presence_lookup("rp_screen",screen_id,screen_ids,fallback="?")

)