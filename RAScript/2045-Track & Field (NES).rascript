// Track & Field
// #ID = 2045

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

state_id = byte(0x0000)
substate_id = byte(0x0001)

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Challenge Achievements
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Legacy Achievements
// ----------------------------------------------------------------------------

achievement(
    title = "World Champion High Jumper", points = 50,
    description = "Smash the world record in High Jump scoring 2.40 meters or higher",
    id = 24139, badge = "24603", published = "25/06/2015 02:27:55", modified = "17/06/2020 19:18:26",
    trigger = once(byte(0x000F8C) >= 0x40) && never(byte(0x000F8C) == 0x00) && never(byte(0x000F8C) == 0xFF)
)

achievement(
    title = "Top Speed", points = 4,
    description = "Reach speed of 1500",
    id = 24153, badge = "24633", published = "25/06/2015 02:28:46", modified = "17/06/2020 19:18:27",
    trigger = once(byte(0x0000A3) == 0x01) && never(byte(0x0000A3) < 0x01) && never(byte(0x0000A3) > 0x01) && 
              once(byte(0x0000A2) == 0x05) && never(byte(0x0000A2) < 0x05) && never(byte(0x0000A2) > 0x05)
)

achievement(
    title = "900 Mark ", points = 50,
    description = "Score 900k",
    id = 24151, badge = "24631", published = "25/06/2015 02:28:35", modified = "17/06/2020 19:18:29",
    trigger = once(byte(0x00174F) == 0x09) && never(byte(0x00174F) < 0x09)
)

achievement(
    title = "500 Mark", points = 25,
    description = "Score 500k",
    id = 24150, badge = "24630", published = "25/06/2015 02:28:31", modified = "17/06/2020 19:18:30",
    trigger = once(byte(0x00174F) == 0x05) && never(byte(0x00174F) < 0x05)
)

achievement(
    title = "200 Mark", points = 10,
    description = "Score 200k",
    id = 24149, badge = "24629", published = "25/06/2015 02:28:28", modified = "17/11/2021 00:31:16",
    trigger = byte(0x00074F) == 0x02 && prev(byte(0x00074F)) < 0x02
)

achievement(
    title = "High Score!", points = 5,
    description = "Beat the standard high score",
    id = 24148, badge = "24613", published = "25/06/2015 02:28:24", modified = "26/06/2015 05:45:11",
    trigger = once(byte(0x00174E) >= 0x05) && never(byte(0x00174E) < 0x05) && never(byte(0x00174E) == 0xFF)
)

achievement(
    title = "World Champion Darts *", points = 25,
    description = "Smash the world record in Darts score over 5000 points",
    id = 24146, badge = "24611", published = "25/06/2015 02:28:18", modified = "17/06/2020 19:18:34",
    trigger = once(byte(0x000F89) >= 0x50) && never(byte(0x000F89) == 0x00)
)

achievement(
    title = "World Champion Triple Jumper *", points = 5,
    description = "Smash the world record in Triple Jump  over 20 Meters",
    id = 24145, badge = "24610", published = "25/06/2015 02:28:15", modified = "17/06/2020 19:18:35",
    trigger = once(byte(0x000F85) >= 0x20) && never(byte(0x000F85) == 0x00) && never(byte(0x000F85) == 0xFF)
)

achievement(
    title = "World Champion Skeet *", points = 25,
    description = "Smash the world record in Skeet Shooting  over 10000 points",
    id = 24144, badge = "24609", published = "25/06/2015 02:28:11", modified = "17/06/2020 19:18:37",
    trigger = once(byte(0x000F82) >= 0x01) && never(byte(0x000F82) == 0x00)
)

achievement(
    title = "World Champion Javelin*", points = 5,
    description = "Smash the world record in Javelin throwing over 120 meters",
    id = 24143, badge = "24608", published = "25/06/2015 02:28:08", modified = "17/06/2020 19:18:38",
    trigger = once(byte(0x000713) >= 0x0C) && never(byte(0x000713) == 0x00)
)

achievement(
    title = "World Champion Long Jump *", points = 5,
    description = "Smash the world record in Long Jump 12m or more",
    id = 24141, badge = "24606", published = "25/06/2015 02:28:01", modified = "17/06/2020 19:18:41",
    trigger = once(byte(0x00070B) == 0x01) && never(byte(0x00070B) == 0x00) && once(byte(0x00070A) >= 0x02) && 
              never(byte(0x00070A) == 0x00) && never(byte(0x00070A) == 0x08)
)

achievement(
    title = "World Champion Runner *", points = 5,
    description = "Smash the world record in 100 Meter Sprint in under 8 seconds",
    id = 24140, badge = "24605", published = "25/06/2015 02:27:58", modified = "17/06/2020 19:18:42",
    trigger = once(byte(0x000706) <= 0x07) && never(byte(0x000706) == 0x00)
)

achievement(
    title = "First Timer", points = 3,
    description = "Beat the 100 Metre Sprint",
    id = 23498, badge = "24588", published = "07/06/2015 19:13:39", modified = "17/06/2020 19:18:43",
    trigger = once(byte(0x00005D) == 0x01) && never(byte(0x00005D) < 0x01) && never(byte(0x00005D) > 0x01) && 
              once(byte(0x00005E) == 0x01) && never(byte(0x00005E) < 0x01) && never(byte(0x00005E) > 0x01) && 
              once(byte(0x00005C) == 0x00) && never(byte(0x00005C) > 0x00)
)

achievement(
    title = "World Champion Darts", points = 10,
    description = "Smash the world record in Darts score over 3600 points",
    id = 24138, badge = "24604", published = "25/06/2015 02:27:51", modified = "25/06/2015 02:29:53",
    trigger = once(byte(0x000F89) >= 0x36) && never(byte(0x000F89) == 0x00)
)

achievement(
    title = "World Champion Triple Jumper", points = 5,
    description = "Smash the world record in Triple Jump  over 18 Meters",
    id = 24137, badge = "24601", published = "25/06/2015 02:27:48", modified = "17/06/2020 19:18:47",
    trigger = once(byte(0x000F85) >= 0x18) && never(byte(0x000F85) == 0x00) && never(byte(0x000F85) == 0xFF)
)

achievement(
    title = "World Champion Skeet", points = 10,
    description = "Smash the world record in Skeet Shooting over 5000 points",
    id = 24136, badge = "24600", published = "25/06/2015 02:27:45", modified = "19/11/2022 16:07:19",
    trigger = prev(word(0x000781)) <= 0x50 && word(0x000781) > 0x50 && byte(0x000034) == 0x2D && byte(0x00005C) == 0x43 && 
              byte(0x00005E) == 0x00 && prev(word(0x000781)) != 0x00
)

achievement(
    title = "World Champion Javelin", points = 5,
    description = "Smash the world record in Javelin throwing over 100 meters",
    id = 24135, badge = "24599", published = "25/06/2015 02:27:41", modified = "17/06/2020 19:18:49",
    trigger = once(byte(0x000713) >= 0x0A) && never(byte(0x000713) == 0x00)
)

achievement(
    title = "World Champion Hurdler", points = 5,
    description = "Smash the world record in 110 Metre Hurdles under 10 seconds",
    id = 24134, badge = "24598", published = "25/06/2015 02:27:38", modified = "17/06/2020 19:18:50",
    trigger = once(byte(0x00070F) == 0x00) && never(byte(0x00070F) > 0x00) && once(byte(0x00070E) <= 0x09) && 
              never(byte(0x00070E) == 0x00)
)

achievement(
    title = "World Champion Long Jump", points = 5,
    description = "Smash the world record in Long Jump 10m or more",
    id = 23508, badge = "24597", published = "07/06/2015 20:09:58", modified = "17/06/2020 19:18:53",
    trigger = byte(0x00070B) == 0x01 && never(byte(0x00070B) == 0x00)
)

achievement(
    title = "World Champion Runner", points = 5,
    description = "Smash the world record in 100 Meter Sprint in under 9 seconds",
    id = 23506, badge = "24596", published = "07/06/2015 19:36:47", modified = "17/06/2020 19:18:52",
    trigger = once(byte(0x000706) <= 0x08) && never(byte(0x000706) == 0x00) && never(byte(0x000706) == 0xFF)
)

achievement(
    title = "Higher ", points = 5,
    description = "Beat the High Jump Event",
    id = 23505, badge = "24595", published = "07/06/2015 19:14:02", modified = "22/09/2019 05:26:52",
    trigger = never(byte(0x000F9D) != 0x02) && byte(0x000F9C) >= 0x26 && never(byte(0x000F9C) < 0x26)
)

achievement(
    title = "Bullseye!", points = 4,
    description = "Beat the Darts Event",
    id = 23504, badge = "24594", published = "07/06/2015 19:13:59", modified = "17/06/2020 19:18:55",
    trigger = byte(0x000F9D) >= 0x25 && never(byte(0x000F9D) < 0x25) && never(byte(0x00005E) != 0x03)
)

achievement(
    title = "Jumpy x 3", points = 4,
    description = "Beat the Triple Jump Event",
    id = 23503, badge = "24593", published = "07/06/2015 19:13:56", modified = "19/11/2022 15:15:28",
    trigger = (prev(word(0x00005D)) == 0x100 || prev(word(0x00005D)) == 0x101) && (word(0x00005D) == 0x200 ||
               word(0x00005D) == 0x201) && byte(0x00005C) == 0x00 && byte(0x000060) == 0x03
)

achievement(
    title = "Holt!", points = 4,
    description = "Beat the Skeet Shooting Event",
    id = 23502, badge = "24592", published = "07/06/2015 19:13:53", modified = "17/06/2020 19:18:58",
    trigger = once(byte(0x00005D) == 0x01) && never(byte(0x00005D) < 0x01) && never(byte(0x00005D) > 0x01) && 
              once(byte(0x00005E) == 0x01) && never(byte(0x00005E) < 0x01) && never(byte(0x00005E) > 0x01) && 
              once(byte(0x00005C) == 0x81) && never(byte(0x00005C) > 0x81) && never(byte(0x00005C) < 0x81)
)

achievement(
    title = "Right Through the Chest...", points = 3,
    description = "Beat the Javelin Event",
    id = 23501, badge = "24591", published = "07/06/2015 19:13:49", modified = "17/06/2020 19:18:59",
    trigger = once(byte(0x00005D) == 0x01) && never(byte(0x00005D) < 0x01) && never(byte(0x00005D) > 0x01) && 
              once(byte(0x00005E) == 0x00) && never(byte(0x00005E) < 0x00) && never(byte(0x00005E) > 0x00) && 
              once(byte(0x00005C) == 0x81) && never(byte(0x00005C) > 0x81) && never(byte(0x00005C) < 0x81)
)

achievement(
    title = "Leaper", points = 3,
    description = "Beat the 110 Meter Hurdles",
    id = 23500, badge = "24590", published = "07/06/2015 19:13:46", modified = "17/06/2020 19:19:01",
    trigger = once(byte(0x00005D) == 0x01) && never(byte(0x00005D) < 0x01) && never(byte(0x00005D) > 0x01) && 
              once(byte(0x00005E) == 0x03) && never(byte(0x00005E) < 0x03) && never(byte(0x00005E) > 0x03) && 
              once(byte(0x00005C) == 0x00) && never(byte(0x00005C) > 0x00)
)

achievement(
    title = "Over 1000", points = 2,
    description = "Reach speed of 1000",
    id = 24152, badge = "24632", published = "25/06/2015 02:28:43", modified = "26/06/2015 05:47:22",
    trigger = once(byte(0x0000A3) == 0x01) && never(byte(0x0000A3) < 0x01) && never(byte(0x0000A3) > 0x01) && 
              never(byte(0x0000A3) == 0xFF)
)

achievement(
    title = "World Champion High Jumper *", points = 20,
    description = "Smash the world record in High Jump scoring 2.50 meters or higher",
    id = 24147, badge = "24612", published = "25/06/2015 02:28:21", modified = "26/06/2015 05:44:48",
    trigger = once(byte(0x000F8C) >= 0x50) && never(byte(0x000F8C) == 0x00) && never(byte(0x000F8C) == 0xFF)
)

achievement(
    title = "World Champion Hurdler *", points = 20,
    description = "Smash the world record in 110 Metre Hurdles under 9 seconds",
    id = 24142, badge = "24607", published = "25/06/2015 02:28:05", modified = "25/06/2015 02:30:25",
    trigger = once(byte(0x00070F) == 0x00) && never(byte(0x00070F) > 0x00) && once(byte(0x00070E) <= 0x08) && 
              never(byte(0x00070E) == 0x00)
)

achievement(
    title = "Jumpy", points = 5,
    description = "Beat the Long Jump",
    id = 23499, badge = "24589", published = "07/06/2015 19:13:42", modified = "26/06/2015 05:47:55",
    trigger = once(byte(0x00005D) == 0x01) && never(byte(0x00005D) < 0x01) && never(byte(0x00005D) > 0x01) && 
              once(byte(0x00005E) == 0x02) && never(byte(0x00005E) < 0x02) && never(byte(0x00005E) > 0x02) && 
              once(byte(0x00005C) == 0x00) && never(byte(0x00005C) > 0x00) && never(once(byte(0x00005C) == 0xFF))
)
