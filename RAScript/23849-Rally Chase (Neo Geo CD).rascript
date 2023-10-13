// Rally Chase
// #ID = 23849

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

race_status_ids = {
    "menu" : 0x00,
    "racing" : 0x01,
    "win" : 0x02,
    "level_select" : 0x03,
    "lose" : 0x04,
    "wc_credits" : 0x07,
    "plc_credits" : 0x0b,
}

difficulties = {
    "easy"      : 0x00,
    "normal"    : 0x01,
    "hard"      : 0x03,
    "mvs"       : 0x02,
}

tracks = {
    0x00 : "Monte Carlo, Monaco",
    0x01 : "Safari, Kenya",
    0x02 : "Acropolis, Greece",
    0x03 : "1000 Lakes, Finland",
    0x04 : "RAC, England",
    // 0x05 : "Scores: World Championship Best",
    0x06 : "Special, Cross Country Raid",
    0x07 : "Dakar, Paris to Cape Town",
}

vehicles = {
    0x00 : "Lancia Deleta",
    0x01 : "Toyota GT-Four",
    0x02 : "Nissan GTI-R",
    0x03 : "Citroën ZX",
    0x04 : "Mitsubishi",
    0x05 : "Porsche 911",
    0x06 : "Tatra 815",
    0x07 : "Dune Buggy",
    0x08 : "Yamaha YZE750T",
}

total_laps = {
    0x00 : "3",
    0x01 : "3",
    0x02 : "4",
    0x03 : "4",
    0x04 : "5",
    // 0x05 : "Scores: World Championship Best",
    0x06 : "6",
    0x07 : "6",
}


// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

uniBios = dword(0xfe30)
function good_bios() => uniBios == 0

demo_mode = byte(0x02c9)
titlescreen_off = byte(0x3600)

current_vehicle = byte(0x71a0)
race_status = byte(0x3004)
difficulty = byte(0x3063)
track_id = byte(0x3005)
vehicle_id = byte(0x71a0)
laps_complete = byte(0x36c5)
lap_rank = byte(0xe2cc)
ascii_1 = byte(0x71a2)
ascii_2 = byte(0x71a4)
ascii_3 = byte(0x71a6)

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

for diff in ["normal","hard"] for track in tracks {
    stub = tracks[track]
    diff_trigger = difficulty == difficulties["hard"]
    diff_text = "(Hard)"
    if( diff == "normal"){
        diff_trigger = diff_trigger || difficulty == difficulties["normal"]
        diff_text = "(Normal+)"
    }
    if(track != 0x07 ) achievement(
        stub + " " + diff_text,
        "Finish the " + stub + " race in 1st position " + diff_text,
        1,
        good_bios() &&
        titlescreen_off == 1 &&
        __ornext(diff_trigger) &&
        prev(race_status) == race_status_ids["racing"] &&
        race_status == race_status_ids["win"] &&
        track_id == track &&
        lap_rank == 1
    )
}

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🏎️"
emoji_alert = "⚠️"

rich_presence_conditional_display( !good_bios(),
    "{0} Using an Unsupported Bios (UniBIOS)",
    emoji_alert
)

rich_presence_conditional_display( titlescreen_off == 0,
    "{0} Ready to Play: Press Start!",
    emoji
)

rich_presence_conditional_display( race_status == race_status_ids["level_select"],
    "{0} Navigating the Menus",
    emoji
)

rich_presence_conditional_display( race_status == race_status_ids["menu"],
    "{0} Ready to Race",
    emoji
)

rich_presence_conditional_display( race_status == race_status_ids["racing"],
    "{0} [{1}{2}{3}] {4} | {5} SS:{6}/{7}| Rank:{8}",
    emoji,
    rich_presence_macro("ASCIIChar",ascii_1),
    rich_presence_macro("ASCIIChar",ascii_2),
    rich_presence_macro("ASCIIChar",ascii_3),
    rich_presence_lookup("rp_vehicles",vehicle_id,vehicles,fallback="?"),
    rich_presence_lookup("rp_tracks",track_id,tracks,fallback="?"),
    rich_presence_macro("Number",laps_complete+1),
    rich_presence_lookup("rp_laps",track_id,total_laps,fallback="x"),
    rich_presence_macro("Number",lap_rank)
)


rich_presence_conditional_display( race_status == race_status_ids["win"],
    "{0} [{1}{2}{3}] {4} | {5} Race Over | Rank:{6}",
    emoji,
    rich_presence_macro("ASCIIChar",ascii_1),
    rich_presence_macro("ASCIIChar",ascii_2),
    rich_presence_macro("ASCIIChar",ascii_3),
    rich_presence_lookup("rp_vehicles",vehicle_id,vehicles,fallback="?"),
    rich_presence_lookup("rp_tracks",track_id,tracks,fallback="?"),
    rich_presence_macro("Number",lap_rank)
)

rich_presence_conditional_display( race_status == race_status_ids["lose"],
    "{0} [{1}{2}{3}] {4} | {5} Retire",
    emoji,
    rich_presence_macro("ASCIIChar",ascii_1),
    rich_presence_macro("ASCIIChar",ascii_2),
    rich_presence_macro("ASCIIChar",ascii_3),
    rich_presence_lookup("rp_vehicles",vehicle_id,vehicles,fallback="?"),
    rich_presence_lookup("rp_tracks",track_id,tracks,fallback="?")
)



rich_presence_conditional_display( demo_mode == 1,
    "{0} Watching a Demo Race",
    emoji
)

rich_presence_display("Getting ready to play Thrash Rally/Rally Chase")