// Beetlejuice
// #ID = 3679
// Script by BoomEX
//
// USA hash = f6c1715b8b93356b8b8ad27f5574dc96

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

vSystemOverlay              = word(0xcac7) // System-Loaded Screen Overlay Panel (16-Bit)
overlay_boot                = 0x0000
overlay_nLogo               = 0x017b
overlay_tm                  = 0x01b9
overlay_titlescreen         = 0x01c2

lSystemOverlay = {
    overlay_boot:           "Beetlejuice!",
    overlay_nLogo:          "Beetlejuice, Beetlejuice!",
    overlay_tm:             "Beetlejuice, Beetlejuice, Beetlejuice!",
    overlay_titlescreen:    "Beetlejuice, Beetlejuice, Beetlejuice! 🪲👻"
}

vHP = byte(0xc90c) // System-Health (8-Bit)
lHP = {
    0: "-----",
    1: "•----",
    2: "••---",
    3: "•••--",
    4: "••••-",
    5: "•••••",
}

vArea = byte(0xcacd) // Game-Area ID (8-Bit)
area_house                      = 0x00
area_mg_house_laundry           = 0x02
area_mg_house_kitchen           = 0x04
area_mg_house_livingroom        = 0x06
area_mg_house_funnyface         = 0x08
area_mg_house_bathroom          = 0x0a
area_mg_house_boiler            = 0x0c
area_attic                      = 0x0e
area_mg_attic_spookbox          = 0x10
area_mg_attic_oddspook          = 0x12
area_graveyard_house            = 0x14
area_graveyard_street           = 0x16
area_graveyard_hills            = 0x18
area_mg_graveyard_pairs         = 0x1a
area_underground_cart1          = 0x1c
area_underground_platforming    = 0x1e
area_underground_cart2a         = 0x20
area_underground_cart2b         = 0x22
area_netherworld_1              = 0x28
area_netherworld_2              = 0x2a
area_final_boss                 = 0x2c
lAreaName = {
    area_house:                     "Exploring the House",
    area_attic:                     "Exploring Attic",
    area_graveyard_house:           "Outside the House",
    area_graveyard_street:          "Crossing the Street",
    area_graveyard_hills:           "Climbing the Hills",
    area_underground_cart1:         "Discovering the Minecart",
    area_underground_platforming:   "Platforming Underground",
    area_underground_cart2a:        "Heading Deeper Underground",
    area_underground_cart2b:        "Holding on Tight to the Minecart",
    area_netherworld_1:             "Snaking Through the Netherwold",
    area_netherworld_2:             "Pixel Perfect Platforming in the Netherworld",
    area_final_boss:                "Saving the World from a Big-Head Threat!",
    //
    area_mg_house_laundry:          "Minigame - Laundry Room",
    area_mg_house_kitchen:          "Minigame - Kitchen",
    area_mg_house_livingroom:       "Minigame - Living Room",
    area_mg_house_funnyface:        "Minigame - Funny Face Contest",
    area_mg_house_bathroom:         "Minigame - Bathroom",
    area_mg_house_boiler:           "Minigame - Boiler Room",
    area_mg_attic_spookbox:         "Minigame - Spook-In-The-Box",
    area_mg_attic_oddspook:         "Minigame - Odd-Spook-Out",
    area_mg_graveyard_pairs:        "Minigame - Pairs"
}

lAreaNumber = {
    area_house:                     "A1",
    area_attic:                     "A2",
    area_graveyard_house:           "A3",
    area_graveyard_street:          "A3",
    area_graveyard_hills:           "A3",
    area_underground_cart1:         "A4",
    area_underground_platforming:   "A4",
    area_underground_cart2a:        "A4",
    area_underground_cart2b:        "A4",
    area_netherworld_1:             "A5",
    area_netherworld_2:             "A5",
    area_final_boss:                "A6",
    //
    area_mg_house_laundry:          "A1",
    area_mg_house_kitchen:          "A1",
    area_mg_house_livingroom:       "A1",
    area_mg_house_funnyface:        "A1",
    area_mg_house_bathroom:         "A1",
    area_mg_house_boiler:           "A1",
    area_mg_attic_spookbox:         "A2",
    area_mg_attic_oddspook:         "A2",
    area_mg_graveyard_pairs:        "A3"
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

state_boot      = (vSystemOverlay == overlay_boot || vSystemOverlay == overlay_nLogo || vSystemOverlay == overlay_tm)
state_title     = (vSystemOverlay == overlay_titlescreen || (vPlayerX + vPlayerY) == 0)
state_ingame    = (vSystemOverlay != overlay_boot && vSystemOverlay != overlay_nLogo && vSystemOverlay != overlay_tm 
                    && vSystemOverlay != overlay_titlescreen && (vPlayerX + vPlayerY) > 0)

vLives = byte(0xcaf9) // Game-Lives (8-Bit)
vPlayerX = tbyte(0xc900)
vPlayerY = tbyte(0xc903)


// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rich_presence_conditional_display(state_ingame, "🪲{0} {1} | {2}: {3} ",
    rich_presence_macro("Number",vLives),
    rich_presence_lookup("lHP", vHP, lHP),
    rich_presence_lookup("lAreaNumber", vArea, lAreaNumber, fallback="S?"),
    rich_presence_lookup("lArea", vArea, lAreaName, fallback="Uknown!")
)

rich_presence_display("{0}",
    rich_presence_lookup("lSystemOverlay", vSystemOverlay, lSystemOverlay, fallback="Meeting Lydia")
)